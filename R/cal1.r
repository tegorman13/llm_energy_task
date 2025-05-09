# --- Load Libraries ---
# Ensure these packages are installed: install.packages(c("httr2", "jsonlite", "dplyr", "tidyr", "ggplot2", "ggrepel", "stringr", "pROC", "scales"))
library(httr2)
library(jsonlite)
library(dplyr)
library(tidyr)
library(ggplot2)
library(ggrepel) # For non-overlapping labels in plots, if needed
library(stringr) # For string manipulation
library(pROC)    # For AUC calculation
library(scales)  # For plot scales (e.g., percent_format)

# --- Configuration (from user, with slight modifications) ---
openai_endpoint <- "https://api.openai.com/v1/chat/completions"
api_key         <- Sys.getenv("OPENAI_API_KEY") # Ensure your API key is set as an environment variable

llm_model_estimate       <- "gpt-4.1" #
llm_temperature_estimate <- 0.0
llm_top_n_logprobs       <- 5 # This will be used with the `top_logprobs` parameter if the model/API supports it for chat completions
llm_max_tokens_estimate  <- 15

# --- Appliance Data ---
# Data based on typical wattage, scaled to 100W bulb = 100 units in 1 hour (1 unit = 1 Wh)
# Name: Common name of the appliance
# Actual_Energy_Units: Energy consumed in 1 hour of typical operation
appliance_data <- tibble::tribble(
  ~Appliance,                 ~Actual_Energy_Units,
  "LED bulb (10W equivalent)",    10,
  "CFL bulb (25W equivalent)",    25,
  "Laptop computer (average use)",50,
  "Incandescent bulb (60W)",      60,
  "Ceiling Fan",                  75,
  "LCD Television (42 inch)",    110,
  "Desktop computer (average use)",150,
  "Refrigerator (average hourly)",150, # Average, as it cycles
  "Plasma Television (42 inch)", 250,
  "Room Air Conditioner (small window unit)", 750,
  "Microwave Oven (while cooking)", 1200,
  "Space Heater (electric)",      1500,
  "Dishwasher (per hour of run time)", 1300,
  "Clothes Dryer (electric, per hour)", 3000,
  "Central Air Conditioner (per hour)", 3500
)

# --- Function to Get LLM Estimate and Confidence ---
get_llm_energy_estimate <- function(appliance_name, model, temperature, max_tokens, top_n) {
  if (api_key == "") {
    stop("OPENAI_API_KEY environment variable is not set.")
  }

  prompt <- paste0(
    "Consider a standard 100-watt incandescent lightbulb. If this lightbulb uses 100 units of energy in one hour, ",
    "estimate how many units of energy the following appliance uses in one hour of typical operation: ",
    appliance_name,
    ". Provide only a single numerical value as your answer. Do not include any other text or units."
  )

  body_params <- list(
    model = model,
    messages = list(list(role = "user", content = prompt)),
    temperature = temperature,
    max_tokens = max_tokens,
    logprobs = TRUE, # Request log probabilities
    top_logprobs = top_n # Request top N log probabilities
  )

  # Make the request
  # Use a tryCatch for robustness
  response <- tryCatch({
    request(openai_endpoint) %>%
      req_auth_bearer_token(api_key) %>%
      req_headers("Content-Type" = "application/json") %>%
      req_body_json(body_params) %>%
      req_perform()
  }, error = function(e) {
    message("API request failed for appliance: ", appliance_name)
    message("Error: ", e$message)
    return(NULL)
  })

  if (is.null(response) || resp_status(response) != 200) {
    message("Failed to get a valid response from API for: ", appliance_name)
    if (!is.null(response)) message("Status: ", resp_status(response), " - ", resp_body_string(response))
    return(list(estimate = NA_real_, confidence = NA_real_, raw_response = ifelse(is.null(response), NA, resp_body_string(response))))
  }

  # Parse the response
  parsed_response <- resp_body_json(response)
  llm_text_output <- parsed_response$choices[[1]]$message$content

  # Extract numerical estimate (robustly)
  # This regex tries to find the first number, possibly with decimals
  estimate_match <- str_extract(llm_text_output, "[0-9]+(?:\\.[0-9]+)?")
  llm_estimate <- if (!is.na(estimate_match)) as.numeric(estimate_match) else NA_real_

  # Extract confidence from the first token of the numerical estimate
  # This is a simplification. Confidence here is P(first_token_of_numerical_answer | prompt)
  llm_confidence <- NA_real_
  if (!is.na(llm_estimate) && !is.null(parsed_response$choices[[1]]$logprobs) &&
      !is.null(parsed_response$choices[[1]]$logprobs$content) &&
      length(parsed_response$choices[[1]]$logprobs$content) > 0) {

    logprobs_content <- parsed_response$choices[[1]]$logprobs$content
    
    # Reconstruct the part of the response that has logprobs to find the estimate's tokens
    # The actual tokens might be preceded by spaces or other formatting tokens.
    # We need to find the token that STARTS our extracted numerical estimate.
    
    # A simple approach: find the first token that is part of the number.
    # The prompt asks for "only a single numerical value". If the model behaves, the first token(s) should be the number.
    # We will iterate through the tokens and see which one starts our `estimate_match`.
    
    full_token_sequence <- paste0(sapply(logprobs_content, function(x) x$token), collapse="")
    
    # Find the first token whose string representation is the beginning of our estimate_match
    # This is tricky because tokenization can be complex (e.g. "1500" could be "15", "00" or "1", "500" or "1500")
    # We'll take the logprob of the first token in the sequence if the model output *starts* with a number.
    # If the model output is just the number (as requested), the first token is what we want.
    
    first_content_token_str <- logprobs_content[[1]]$token
    # Check if the raw output starts with the extracted number (ignoring potential leading spaces in tokens)
    if (str_starts(str_trim(llm_text_output), estimate_match)) {
        # If the model's response (after trimming) starts with the number we extracted,
        # we assume the first token in logprobs_content corresponds to the start of this number.
        # This is an approximation. A more robust method would map characters in estimate_match
        # to specific tokens in logprobs_content.
        first_token_logprob <- logprobs_content[[1]]$logprob
        if (!is.null(first_token_logprob)) {
          llm_confidence <- exp(first_token_logprob)
        }
    } else {
        # If the number is embedded, this simple approach might be less accurate.
        # For now, we'll still try to use the first token's probability if a number was extracted,
        # acknowledging this limitation.
        # A more sophisticated approach would be to find the exact token(s) forming `estimate_match`.
        # This often requires careful handling of how the API returns token info relative to the content string.
        # Given the prompt, we hope `llm_text_output` is just the number.
        if (length(logprobs_content) > 0 && !is.null(logprobs_content[[1]]$logprob)) {
             # Fallback: if a number was extracted but not at the very start of the raw output,
             # we might still be interested in the first token's prob as a general confidence measure,
             # but this is less ideal.
             # This part needs careful thought depending on typical model responses.
             # For now, if the number is extracted, we take the first token's probability.
             first_token_logprob <- logprobs_content[[1]]$logprob
             if (!is.null(first_token_logprob)) {
                llm_confidence <- exp(first_token_logprob)
             }
        }
        message(paste0("Note: For '", appliance_name, "', the extracted number '", estimate_match, 
                       "' was not at the beginning of the LLM's raw output '", llm_text_output, 
                       "'. Confidence is based on the first token of the response, which might not be the number's start."))
    }
  }
  
  if (is.na(llm_estimate)) {
    message(paste0("Could not extract a numerical estimate for '", appliance_name, "' from response: '", llm_text_output, "'"))
  }
  if (is.na(llm_confidence) && !is.na(llm_estimate)) {
    message(paste0("Could not extract confidence for '", appliance_name, "'. Logprobs might be missing or structured differently."))
     message("Logprobs content: ", toJSON(parsed_response$choices[[1]]$logprobs, auto_unbox = TRUE))
  }


  return(list(estimate = llm_estimate, confidence = llm_confidence, raw_response = llm_text_output))
}

# --- Main Loop: Get LLM Estimates for All Appliances ---
# Using a loop for clarity; purrr::map could also be used.
# Adding a delay to be kind to the API, though with 15 items it might not be strictly necessary.
# Sys.sleep(1) # Optional: add a small delay between API calls

llm_results <- appliance_data %>%
  mutate(
    llm_output = purrr::map(Appliance, function(app_name) {
      message("Querying LLM for: ", app_name)
      # Add a small delay to avoid hitting rate limits if making many requests
      # Sys.sleep(1) # Adjust delay as needed, or remove if not necessary for few items
      get_llm_energy_estimate(
        app_name,
        llm_model_estimate,
        llm_temperature_estimate,
        llm_max_tokens_estimate,
        llm_top_n_logprobs
      )
    })
  ) %>%
  unnest_wider(llm_output) %>%
  filter(!is.na(estimate) & !is.na(confidence)) # Keep only valid results

if(nrow(llm_results) == 0) {
  stop("No valid results obtained from the LLM. Check API key, model name, and network. Or, parsing of estimates/confidence failed for all items.")
}
if(nrow(llm_results) < nrow(appliance_data)){
  warning(paste("Only obtained", nrow(llm_results), "valid LLM responses out of", nrow(appliance_data), "appliances. Some calculations might be based on partial data."))
}

print("LLM Results:")
print(llm_results)

# --- Process Results: Define Correctness ---
# Correctness based on log-fold error, similar to perception studies.
# "Correct" if |log10(Predicted) - log10(Actual)| < log10(FOLD_THRESHOLD)
# e.g., FOLD_THRESHOLD = 2 means predicted is within [Actual/2, Actual*2]
FOLD_THRESHOLD <- 2.0 

# Ensure Actual_Energy_Units and estimate are positive for log
llm_results <- llm_results %>%
  filter(Actual_Energy_Units > 0, estimate > 0) %>% 
  mutate(
    log10_actual = log10(Actual_Energy_Units),
    log10_estimate = log10(estimate),
    log_fold_error = abs(log10_estimate - log10_actual),
    is_correct = log_fold_error < log10(FOLD_THRESHOLD)
  )

if(nrow(llm_results) == 0) {
  stop("No valid results after filtering for positive estimates/actuals or after calculating correctness. Check LLM outputs.")
}

print("Processed LLM Results with Correctness:")
print(llm_results)

# --- Calculate Calibration: Expected Calibration Error (ECE) ---
# Bin confidence scores. Using 10 bins for 0-1 range.
# Ensure confidence is within [0,1]. Probabilities from exp(logprob) should be.
llm_results <- llm_results %>%
  mutate(confidence_bin = cut(confidence, breaks = seq(0, 1, by = 0.1), include.lowest = TRUE, right = FALSE))

# Handle cases where some bins might be empty or all confidences are very low/high
if (all(is.na(llm_results$confidence_bin))) {
    stop("Could not bin confidence scores. All confidence values might be NA or outside expected range.")
}

calibration_data <- llm_results %>%
  filter(!is.na(confidence_bin)) %>% # Ensure no NA bins
  group_by(confidence_bin) %>%
  summarise(
    n_items = n(),
    mean_confidence = mean(confidence, na.rm = TRUE),
    accuracy = mean(is_correct, na.rm = TRUE) # Proportion correct
  ) %>%
  ungroup() %>%
  filter(n_items > 0) # Remove bins that were empty

if (nrow(calibration_data) > 0) {
  calibration_data <- calibration_data %>%
    mutate(
      abs_diff_cal = abs(accuracy - mean_confidence),
      weighted_abs_diff = (n_items / sum(calibration_data$n_items)) * abs_diff_cal
    )
  ece <- sum(calibration_data$weighted_abs_diff, na.rm = TRUE)
  print(paste("Expected Calibration Error (ECE):", round(ece, 4)))
} else {
  ece <- NA
  warning("ECE could not be calculated, no data in calibration bins.")
}


# --- Calculate Discrimination: Area Under ROC Curve (AUC) ---
# Requires binary correctness and continuous confidence scores.
if (length(unique(llm_results$is_correct)) > 1 && nrow(llm_results) > 1) {
  roc_obj <- roc(llm_results$is_correct, llm_results$confidence, quiet = TRUE)
  auc_value <- auc(roc_obj)
  print(paste("Discrimination AUC:", round(auc_value, 4)))
} else {
  auc_value <- NA
  warning("AUC could not be calculated. Need at least two classes for 'is_correct' and more than one observation.")
}

# --- Generate Plots ---

# 1. Calibration Plot (Accuracy vs. Confidence)
# Similar to Steyvers et al. (2025), Figure 1 (bottom row)
if (nrow(calibration_data) > 0 && !is.na(ece)) {
  # Get bin midpoints for plotting
  calibration_data_plot <- calibration_data %>%
    mutate(bin_midpoint = (as.numeric(sub("\\(|\\[(.*),.*", "\\1", confidence_bin)) +
                           as.numeric(sub("[^,]*,([^]]*)\\]", "\\1", confidence_bin))) / 2)

  plot_calibration <- ggplot(calibration_data_plot, aes(x = bin_midpoint, y = accuracy)) +
    geom_line(aes(color = "Model Calibration"), linewidth = 1) +
    geom_point(aes(color = "Model Calibration", size = n_items), shape = 16) +
    geom_abline(slope = 1, intercept = 0, linetype = "dashed", color = "gray50") +
    scale_x_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.2), name = "Mean LLM Confidence in Bin") +
    scale_y_continuous(limits = c(0, 1), breaks = seq(0, 1, by = 0.2), name = "Proportion Correct (Accuracy)", labels = scales::percent_format()) +
    labs(
      title = "LLM Calibration: Energy Consumption Estimates",
      subtitle = paste("ECE =", round(ece, 3)),
      caption = paste0("Appliance estimates (N=", sum(calibration_data$n_items) ,") relative to 100W bulb. Correct if |log10(Pred)-log10(Actual)| < log10(", FOLD_THRESHOLD, ").")
    ) +
    scale_size_continuous(name = "N Items in Bin", range = c(2,8)) +
    scale_color_manual(values = c("Model Calibration" = "royalblue")) +
    theme_minimal(base_size = 14) +
    theme(legend.position = "bottom", plot.title = element_text(hjust = 0.5), plot.subtitle = element_text(hjust = 0.5))

  print(plot_calibration)
} else {
  print("Calibration plot cannot be generated due to missing calibration data or ECE.")
}


# 2. Discrimination Plot (Confidence Distributions)
# Similar to Steyvers et al. (2025), Figure 1 (top row)
if (nrow(llm_results) > 0 && !is.na(auc_value)) {
  plot_discrimination <- ggplot(llm_results, aes(x = confidence, fill = factor(is_correct))) +
    geom_histogram(aes(y = ..density..), alpha = 0.6, position = "identity", bins = 20) +
    geom_density(alpha = 0.4, aes(y = ..density..)) + # Overlay density
    scale_fill_manual(
        name = "Estimate Correctness", 
        values = c("TRUE" = "forestgreen", "FALSE" = "firebrick"),
        labels = c("TRUE" = paste0("Correct (within ", FOLD_THRESHOLD, "x fold)"), "FALSE" = "Incorrect")
    ) +
    scale_x_continuous(limits = c(0,1), name = "LLM Confidence") +
    scale_y_continuous(name = "Density") +
    labs(
      title = "LLM Discrimination: Confidence in Energy Estimates",
      subtitle = paste("AUC =", round(auc_value, 3)),
      caption = paste0("Confidence = P(first token of numerical estimate). N=", nrow(llm_results) ,".")
    ) +
    theme_minimal(base_size = 14) +
    theme(legend.position = "bottom", plot.title = element_text(hjust = 0.5), plot.subtitle = element_text(hjust = 0.5))

  print(plot_discrimination)
} else {
  print("Discrimination plot cannot be generated due to missing results or AUC.")
}

# --- Sanity Check: Plot LLM estimates vs Actual ---
if (nrow(llm_results) > 0) {
    plot_estimates_vs_actual <- ggplot(llm_results, aes(x = Actual_Energy_Units, y = estimate)) +
        geom_point(aes(color = factor(is_correct), size = confidence), alpha = 0.7) +
        geom_abline(slope = 1, intercept = 0, linetype = "dashed", color = "gray50") +
        geom_text_repel(aes(label = Appliance), size = 3, max.overlaps = Inf) + 
        scale_x_log10(name = "Actual Energy Units (log scale)", labels = scales::comma) +
        scale_y_log10(name = "LLM Estimated Energy Units (log scale)", labels = scales::comma) +
        scale_color_manual(
            name = "Estimate Correctness", 
            values = c("TRUE" = "forestgreen", "FALSE" = "firebrick"),
            labels = c("TRUE" = "Correct", "FALSE" = "Incorrect")
        ) +
        scale_size_continuous(name = "LLM Confidence", range = c(1, 6)) +
        labs(title = "LLM Energy Estimates vs. Actual Values",
             caption = "Size of point indicates LLM confidence.") +
        theme_minimal(base_size = 14) +
        theme(legend.position = "bottom", plot.title = element_text(hjust = 0.5))
    
    print(plot_estimates_vs_actual)
}

# --- End of Script ---
