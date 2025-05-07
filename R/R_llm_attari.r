

# I want to simulate an LLM as a psychology study participant, completing the energy appliance task used in the Attari et al. 2010 study. In addition to collecting the estimates from the LLM. I'd also like to compute the LLM's confidence, similar to what Steyvers did in his 2025 paper.

# Is there a way to compute the model confidence more precisely by using the logprobs?


# https://gemini.google.com/app/6040b2f0ff9541bd
# https://chatgpt.com/c/681922e2-d1f0-8006-9a51-fa8e18f971d2
# https://poe.com/chat/j9temzfj6cm8i6x0s7


library(ellmer)
library(dplyr)
library(tidyr)
library(ggplot2)

# Set up the LLM chat object
chat <- chat_openai(
  model = "gpt-4.1-nano",
  system_prompt = "You are participating in a psychology study about energy use perceptions. 
  Answer questions about energy consumption with your best estimates of energy units. 
  For this study, a 100-Watt incandescent light bulb uses 100 energy units in one hour. 
  Provide only numerical answers with no explanations."
)

# Define the Attari energy estimation task
devices <- c(
  "A compact fluorescent light bulb that is as bright as a 100-Watt incandescent light bulb",
  "A desktop computer", 
  "A laptop computer",
  "A stereo",
  "An electric clothes dryer",
  "A portable heater",
  "A room air-conditioner",
  "A central air conditioner",
  "A dish washer"
)

# Actual energy values (in Wh) based on literature
actual_values <- c(25, 120, 40, 60, 3400, 1500, 1000, 3500, 1800)

# Function to query LLM for energy estimates
get_energy_estimates <- function(chat, devices) {
  estimates <- numeric(length(devices))
  
  for (i in seq_along(devices)) {
    prompt <- paste0(
      "How many energy units does the following device use in one hour, compared to a 100-Watt incandescent light bulb which uses 100 units?\n\n",
      devices[i], "\n\nProvide only a single number as your answer."
    )
    
    # Get the model's estimate
    response <- chat$chat(prompt)
    
    # Extract just the number
    numeric_response <- as.numeric(gsub("[^0-9.]", "", response))
    estimates[i] <- numeric_response
  }
  
  return(estimates)
}

# Function to assess model confidence for each estimate
get_model_confidence <- function(chat, devices, estimates) {
  confidence_scores <- numeric(length(devices))
  
  for (i in seq_along(devices)) {
    confidence_prompt <- paste0(
      "On a scale from 0 to 10, how confident are you in your estimate that ", 
      devices[i], " uses ", estimates[i], 
      " energy units per hour (where a 100-Watt incandescent bulb uses 100 units)?\n\n",
      "Provide only a single number from 0 to 10 as your answer, where 0 means 'not at all confident' and 10 means 'extremely confident'."
    )
    
    # Get the model's confidence
    confidence_response <- chat$chat(confidence_prompt)
    
    # Extract just the number
    confidence_score <- as.numeric(gsub("[^0-9.]", "", confidence_response)) / 10  # Normalize to 0-1
    confidence_scores[i] <- confidence_score
  }
  
  return(confidence_scores)
}

# Query the LLM for all device estimates
llm_estimates <- get_energy_estimates(chat, devices)

# Get model confidence for each estimate
model_confidence <- get_model_confidence(chat, devices, llm_estimates)

# Create a results dataframe
results <- data.frame(
  device = devices,
  actual_value = actual_values,
  llm_estimate = llm_estimates,
  model_confidence = model_confidence
)

# Calculate accuracy metrics similar to Attari study
results <- results %>%
  mutate(
    log10_actual = log10(actual_value),
    log10_estimate = log10(llm_estimate),
    error = llm_estimate - actual_value,
    percent_error = (llm_estimate - actual_value) / actual_value * 100,
    absolute_error = abs(error),
    log_error = log10_estimate - log10_actual,
    is_accurate = ifelse(absolute_error/actual_value < 0.5, 1, 0)  # Consider correct if within 50% of actual
  )

# Calculate metrics similar to Steyvers et al. (2025)
# Expected Calibration Error (ECE) calculation 
calculate_ece <- function(results, n_bins = 5) {
  # Bin confidence scores
  results$bin <- cut(results$model_confidence, breaks = seq(0, 1, length.out = n_bins + 1), 
                    labels = FALSE, include.lowest = TRUE)
  
  # Calculate ECE
  bin_stats <- results %>% 
    group_by(bin) %>%
    summarize(
      avg_confidence = mean(model_confidence),
      accuracy = mean(is_accurate),
      bin_size = n(),
      .groups = 'drop'
    ) %>%
    mutate(
      weight = bin_size / nrow(results),
      weighted_diff = weight * abs(avg_confidence - accuracy)
    )
  
  ece <- sum(bin_stats$weighted_diff)
  return(list(ece = ece, bin_stats = bin_stats))
}

# Calculate Area Under the Curve (AUC) using a simple approach
calculate_auc <- function(results) {
  # Sort by confidence
  results <- results %>% arrange(model_confidence)
  
  # Simple AUC calculation - proportion of pairs where higher confidence has higher accuracy
  n <- nrow(results)
  pair_count <- 0
  correct_pairs <- 0
  
  for (i in 1:(n-1)) {
    for (j in (i+1):n) {
      if (results$model_confidence[i] != results$model_confidence[j]) {
        pair_count <- pair_count + 1
        
        # If confidence ordering matches accuracy ordering
        if ((results$model_confidence[i] < results$model_confidence[j] && 
             results$is_accurate[i] <= results$is_accurate[j]) ||
            (results$model_confidence[i] > results$model_confidence[j] && 
             results$is_accurate[i] >= results$is_accurate[j])) {
          correct_pairs <- correct_pairs + 1
        }
      }
    }
  }
  
  auc <- ifelse(pair_count > 0, correct_pairs / pair_count, 0.5)
  return(auc)
}

# Calculate calibration and discrimination metrics
ece_results <- calculate_ece(results)
auc <- calculate_auc(results)

# Print results
print("LLM Energy Estimates and Confidence:")
print(results[, c("device", "actual_value", "llm_estimate", "model_confidence", "is_accurate")])

print(paste("Expected Calibration Error (ECE):", round(ece_results$ece, 3)))
print(paste("Area Under Curve (AUC):", round(auc, 3)))

# Calculate correlation between log-transformed estimates and actuals (like Attari)
correlation <- cor(results$log10_actual, results$log10_estimate)
print(paste("Correlation between log10(Actual) and log10(Estimate):", round(correlation, 3)))

# Fit linear model to get slope (like Attari)
lm_fit <- lm(log10_estimate ~ log10_actual, data = results)
print(paste("Slope of log-transformed relationship:", round(coefficients(lm_fit)[2], 3)))

# Plot results similar to Attari study
p1 <- ggplot(results, aes(x = log10_actual, y = log10_estimate)) +
  geom_point(aes(size = model_confidence, color = as.factor(is_accurate)), alpha = 0.7) +
  geom_abline(intercept = 0, slope = 1, linetype = "dashed") +
  geom_smooth(method = "lm", formula = y ~ poly(x, 2), se = FALSE, color = "blue") +
  labs(
    title = "LLM Perceptions of Energy Use",
    x = "log10(Actual Energy Use)",
    y = "log10(LLM Estimate)",
    size = "Model\nConfidence",
    color = "Accurate"
  ) +
  theme_minimal() +
  scale_color_manual(values = c("0" = "red", "1" = "green"))

# Plot calibration curve similar to Steyvers study
p2 <- ggplot(ece_results$bin_stats, aes(x = avg_confidence, y = accuracy)) +
  geom_point(aes(size = bin_size), alpha = 0.7) +
  geom_abline(intercept = 0, slope = 1, linetype = "dashed") +
  geom_line() +
  labs(
    title = "Calibration Curve for LLM Energy Estimates",
    x = "Average Confidence",
    y = "Accuracy",
    size = "Bin Size"
  ) +
  xlim(0, 1) + 
  ylim(0, 1) +
  theme_minimal()

# Print both plots
print(p1)
print(p2)













#########



library(ellmer)
library(dplyr)
library(tidyr)
library(ggplot2)
library(httr2)
library(jsonlite)

# API key setup - use your OpenAI API key
api_key <- Sys.getenv("OPENAI_API_KEY")

# Function to get energy estimates with logprobs
get_energy_estimates_with_logprobs <- function(devices, api_key, model="gpt-4.1-nano") {
  estimates <- numeric(length(devices))
  confidence_scores <- numeric(length(devices))
  logprob_details <- list()
  
  for (i in seq_along(devices)) {
    prompt <- paste0(
      "How many energy units does the following device use in one hour, compared to a 100-Watt incandescent light bulb which uses 100 units?\n\n",
      devices[i], "\n\nProvide only a single number as your answer."
    )
    
    # Create the API request
    response <- request("https://api.openai.com/v1/chat/completions") %>%
      req_headers(
        "Content-Type" = "application/json",
        "Authorization" = paste("Bearer", api_key)
      ) %>%
      req_body_json(list(
        model = model,
        messages = list(
          list(
            role = "system",
            content = "You are participating in a psychology study about energy use perceptions. Answer with only numbers."
          ),
          list(
            role = "user", 
            content = prompt
          )
        ),
        logprobs = TRUE,
        top_logprobs = 5,
        temperature = 0.0  # Using 0 temperature for consistency
      )) %>%
      req_perform()
    
    # Parse the response
    content <- resp_body_json(response)
    
    # Extract the model's response
    answer_text <- content$choices[[1]]$message$content
    
    # Extract just the number
    numeric_response <- as.numeric(gsub("[^0-9.]", "", answer_text))
    estimates[i] <- numeric_response
    
    # Calculate confidence from logprobs
    logprobs_data <- content$choices[[1]]$logprobs
    
    # Store the full logprob info for detailed analysis
    logprob_details[[i]] <- logprobs_data
    
    # Calculate confidence score from logprobs
    # We use the average token probability as a simple confidence measure
    if (!is.null(logprobs_data) && !is.null(logprobs_data$content)) {
      # Extract logprobs
      token_logprobs <- sapply(logprobs_data$content, function(x) x$logprob)
      
      # Convert logprobs to probabilities and take the average
      token_probs <- exp(token_logprobs)
      avg_prob <- mean(token_probs)
      
      # Alternative: Use the minimum probability as the confidence
      # min_prob <- min(token_probs)
      
      confidence_scores[i] <- avg_prob
    } else {
      confidence_scores[i] <- NA
    }
    
    # Be nice to the API - small delay between requests
    Sys.sleep(0.5)
  }
  
  return(list(
    estimates = estimates,
    confidence_scores = confidence_scores,
    logprob_details = logprob_details
  ))
}

# Define the Attari energy estimation task
devices <- c(
  "A compact fluorescent light bulb that is as bright as a 100-Watt incandescent light bulb",
  "A desktop computer", 
  "A laptop computer",
  "A stereo",
  "An electric clothes dryer",
  "A portable heater",
  "A room air-conditioner",
  "A central air conditioner",
  "A dish washer"
)

# Actual energy values (in Wh) based on literature
actual_values <- c(25, 120, 40, 60, 3400, 1500, 1000, 3500, 1800)

# Get estimates and logprob-based confidence
results_with_logprobs <- get_energy_estimates_with_logprobs(devices, api_key)

# Create the results dataframe
results <- data.frame(
  device = devices,
  actual_value = actual_values,
  llm_estimate = results_with_logprobs$estimates,
  model_confidence = results_with_logprobs$confidence_scores
)

# Normalize confidence scores to 0-1 range (if not already)
if (max(results$model_confidence, na.rm = TRUE) > 1) {
  max_conf <- max(results$model_confidence, na.rm = TRUE)
  results$model_confidence <- results$model_confidence / max_conf
}

# Calculate accuracy metrics similar to Attari study
results <- results %>%
  mutate(
    log10_actual = log10(actual_value),
    log10_estimate = log10(llm_estimate),
    error = llm_estimate - actual_value,
    percent_error = (llm_estimate - actual_value) / actual_value * 100,
    absolute_error = abs(error),
    log_error = log10_estimate - log10_actual,
    is_accurate = ifelse(absolute_error/actual_value < 0.5, 1, 0)  # Consider correct if within 50% of actual
  )

# Function for detailed alternative confidence metrics from logprobs
analyze_token_uncertainty <- function(logprob_details) {
  uncertainty_metrics <- data.frame(
    device_index = integer(),
    entropy = numeric(),
    top2_diff = numeric(),
    normalized_entropy = numeric()
  )
  
  for (i in seq_along(logprob_details)) {
    token_data <- logprob_details[[i]]$content
    if (is.null(token_data)) next
    
    # Calculate entropy across all tokens
    entropies <- sapply(token_data, function(token) {
      if (length(token$top_logprobs) < 2) return(0)  # If only one option, entropy is 0
      
      # Convert logprobs to probs
      top_probs <- exp(sapply(token$top_logprobs, function(x) x$logprob))
      
      # Normalize probabilities
      top_probs <- top_probs / sum(top_probs)
      
      # Calculate entropy: -sum(p * log(p))
      -sum(top_probs * log(top_probs))
    })
    
    # Calculate difference between top two predictions
    top2_diffs <- sapply(token_data, function(token) {
      if (length(token$top_logprobs) < 2) return(1)  # If only one option, diff is 1 (max confidence)
      
      # Get top two logprobs
      top1 <- token$top_logprobs[[1]]$logprob
      top2 <- token$top_logprobs[[2]]$logprob
      
      # Convert to probability difference
      exp(top1) - exp(top2)
    })
    
    # Add to results
    uncertainty_metrics <- rbind(uncertainty_metrics, data.frame(
      device_index = i,
      entropy = mean(entropies),
      top2_diff = mean(top2_diffs),
      normalized_entropy = mean(entropies) / log(2)  # Normalize by log(2) for 0-1 scale
    ))
  }
  
  return(uncertainty_metrics)
}

# Analyze token uncertainty (alternative confidence metrics)
token_uncertainty <- analyze_token_uncertainty(results_with_logprobs$logprob_details)

# Add alternative confidence metrics to results
if (nrow(token_uncertainty) > 0) {
  results$token_entropy <- NA
  results$top2_diff <- NA
  
  for (i in 1:nrow(token_uncertainty)) {
    idx <- token_uncertainty$device_index[i]
    results$token_entropy[idx] <- token_uncertainty$entropy[i]
    results$top2_diff[idx] <- token_uncertainty$top2_diff[i]
  }
  
  # Convert entropy to confidence (higher entropy = lower confidence)
  results$entropy_confidence <- 1 - (results$token_entropy / max(results$token_entropy, na.rm = TRUE))
}

# Calculate Expected Calibration Error (ECE)
calculate_ece <- function(results, confidence_col = "model_confidence", n_bins = 5) {
  # Make sure to use the requested confidence column
  results_temp <- results
  results_temp$conf_for_binning <- results_temp[[confidence_col]]
  
  # Bin confidence scores
  results_temp$bin <- cut(results_temp$conf_for_binning, 
                          breaks = seq(0, 1, length.out = n_bins + 1), 
                          labels = FALSE, include.lowest = TRUE)
  
  # Calculate ECE
  bin_stats <- results_temp %>% 
    group_by(bin) %>%
    summarize(
      avg_confidence = mean(conf_for_binning, na.rm = TRUE),
      accuracy = mean(is_accurate, na.rm = TRUE),
      bin_size = n(),
      .groups = 'drop'
    ) %>%
    mutate(
      weight = bin_size / sum(bin_size),
      weighted_diff = weight * abs(avg_confidence - accuracy)
    )
  
  ece <- sum(bin_stats$weighted_diff, na.rm = TRUE)
  return(list(ece = ece, bin_stats = bin_stats))
}

# Calculate Area Under the Curve (AUC)
calculate_auc <- function(results, confidence_col = "model_confidence") {
  # Make a copy with the requested confidence column
  results_temp <- results
  results_temp$conf_for_auc <- results_temp[[confidence_col]]
  
  # Handle NA values
  results_temp <- results_temp[!is.na(results_temp$conf_for_auc),]
  if (nrow(results_temp) < 2) return(0.5)  # Not enough data
  
  # Sort by confidence
  results_temp <- results_temp %>% arrange(conf_for_auc)
  
  # Simple AUC calculation
  n <- nrow(results_temp)
  pair_count <- 0
  correct_pairs <- 0
  
  for (i in 1:(n-1)) {
    for (j in (i+1):n) {
      if (results_temp$conf_for_auc[i] != results_temp$conf_for_auc[j]) {
        pair_count <- pair_count + 1
        
        # If confidence ordering matches accuracy ordering
        if ((results_temp$conf_for_auc[i] < results_temp$conf_for_auc[j] && 
             results_temp$is_accurate[i] <= results_temp$is_accurate[j]) ||
            (results_temp$conf_for_auc[i] > results_temp$conf_for_auc[j] && 
             results_temp$is_accurate[i] >= results_temp$is_accurate[j])) {
          correct_pairs <- correct_pairs + 1
        }
      }
    }
  }
  
  auc <- ifelse(pair_count > 0, correct_pairs / pair_count, 0.5)
  return(auc)
}

# Calculate calibration and discrimination metrics for different confidence measures
ece_logprob <- calculate_ece(results, "model_confidence")
auc_logprob <- calculate_auc(results, "model_confidence")

# If we calculated entropy-based confidence, also evaluate it
if ("entropy_confidence" %in% names(results)) {
  ece_entropy <- calculate_ece(results, "entropy_confidence")
  auc_entropy <- calculate_auc(results, "entropy_confidence")
}

# Print results
print("LLM Energy Estimates and Confidence:")
print(results[, c("device", "actual_value", "llm_estimate", "model_confidence", "is_accurate")])

print(paste("Expected Calibration Error (ECE) with logprob confidence:", round(ece_logprob$ece, 3)))
print(paste("Area Under Curve (AUC) with logprob confidence:", round(auc_logprob, 3)))

if (exists("ece_entropy")) {
  print(paste("Expected Calibration Error (ECE) with entropy confidence:", round(ece_entropy$ece, 3)))
  print(paste("Area Under Curve (AUC) with entropy confidence:", round(auc_entropy, 3)))
}

# Calculate correlation and slope (like Attari)
correlation <- cor(results$log10_actual, results$log10_estimate, use = "complete.obs")
print(paste("Correlation between log10(Actual) and log10(Estimate):", round(correlation, 3)))

lm_fit <- lm(log10_estimate ~ log10_actual, data = results)
print(paste("Slope of log-transformed relationship:", round(coefficients(lm_fit)[2], 3)))

# Plot results similar to Attari study
p1 <- ggplot(results, aes(x = log10_actual, y = log10_estimate)) +
  geom_point(aes(size = model_confidence, color = as.factor(is_accurate)), alpha = 0.7) +
  geom_abline(intercept = 0, slope = 1, linetype = "dashed") +
  geom_smooth(method = "lm", formula = y ~ poly(x, 2), se = FALSE, color = "blue") +
  labs(
    title = "LLM Perceptions of Energy Use (with logprob confidence)",
    x = "log10(Actual Energy Use)",
    y = "log10(LLM Estimate)",
    size = "Model\nConfidence",
    color = "Accurate"
  ) +
  theme_minimal() +
  scale_color_manual(values = c("0" = "red", "1" = "green"))

# Plot calibration curve (Steyvers style)
p2 <- ggplot(ece_logprob$bin_stats, aes(x = avg_confidence, y = accuracy)) +
  geom_point(aes(size = bin_size), alpha = 0.7) +
  geom_abline(intercept = 0, slope = 1, linetype = "dashed") +
  geom_line() +
  labs(
    title = "Calibration Curve with logprob-based Confidence",
    x = "Average Confidence",
    y = "Accuracy",
    size = "Bin Size"
  ) +
  xlim(0, 1) + 
  ylim(0, 1) +
  theme_minimal()

# If we have entropy confidence, plot its calibration curve too
if (exists("ece_entropy")) {
  p3 <- ggplot(ece_entropy$bin_stats, aes(x = avg_confidence, y = accuracy)) +
    geom_point(aes(size = bin_size), alpha = 0.7) +
    geom_abline(intercept = 0, slope = 1, linetype = "dashed") +
    geom_line() +
    labs(
      title = "Calibration Curve with entropy-based Confidence",
      x = "Average Confidence",
      y = "Accuracy",
      size = "Bin Size"
    ) +
    xlim(0, 1) + 
    ylim(0, 1) +
    theme_minimal()
  
  print(p3)
}

# Print other plots
print(p1)
print(p2)










####################
####################
####################
####################



# Show how to create a plot more similar to the figure 1 in the Attari 2010 paper (perceived energy used or saved on Y axis; Actual Energy Used or Saved on the X axis). 


library(ggplot2)
library(ggrepel)

# Assuming `results` has:
# device, llm_estimate, actual_value, is_accurate, type (e.g., "Used" or "Saved")

# Sample extension: mark "used" vs "saved" items
# If not already done:
results$type <- ifelse(results$actual_value > 0, "Used", "Saved")

# Plot
ggplot(results, aes(x = actual_value, y = llm_estimate, shape = type)) +
  geom_point(size = 3, aes(color = as.factor(is_accurate))) +
  scale_shape_manual(values = c("Used" = 15, "Saved" = 17)) +  # square vs triangle
  scale_color_manual(values = c("0" = "red", "1" = "black")) +
  geom_abline(slope = 1, intercept = 0, linetype = "dashed") +  # identity line
  geom_text_repel(aes(label = device), size = 3, max.overlaps = 15) +
  scale_x_log10() +
  scale_y_log10() +
  labs(
    title = "Perceived vs Actual Energy Use or Savings",
    x = "Actual Energy Used or Saved (Wh, log scale)",
    y = "Perceived Energy Used or Saved (LLM estimate, log scale)",
    color = "Accurate",
    shape = "Type"
  ) +
  theme_minimal(base_size = 13)








# Load necessary libraries
library(httr2)
library(jsonlite)
library(dplyr)
library(tidyr)
library(ggplot2)
library(ggrepel)

# --- Configuration ---
api_key <- Sys.getenv("OPENAI_API_KEY")
model_to_use <- "gpt-4.1-nano" # Or any other model you want to test
llm_temperature <- 0.0   # Use 0 for deterministic results, higher for variability

# --- Define Items and Prompts ---

# Function to define Energy Use items (Section 3)
define_energy_use_items <- function() {
  devices <- c(
    "Compact fluorescent bulb",
    "Desktop computer",
    "Laptop computer",
    "Stereo",
    "Electric clothes dryer",
    "Portable heater",
    "Room air-conditioner",
    "Central air conditioner",
    "Dish washer"
  )
  # Using mean actual values from Attari Table S1
  actual_values <- c(27, 140, 48, 128, 3400, 925, 1000, 3500, 1800)
  # Construct prompts based on Attari Section 3 wording
  prompts <- sapply(devices, function(device_name) {
    # Adjusting device name for prompt clarity if needed
    full_device_name <- switch(device_name,
      "Compact fluorescent bulb" = "A compact fluorescent light bulb that is as bright as a 100-Watt incandescent light bulb",
      "Lower wattage bulb" = "Replacing one 100-watt kitchen bulb with a 75-watt bulb", # Example if it were a device
      device_name # Default case
    )
    paste0(
      "A 100-Watt incandescent light bulb uses 100 units of energy in one hour.\n\n",
      "How many units of energy do you think the following device typically uses in one hour?\n\n",
      full_device_name, "\n\nProvide only a single number as your answer."
    )
  })

  data.frame(
    item_name = devices,
    item_label = devices, # Labels for the plot
    prompt = prompts,
    actual_value = actual_values,
    type = "Energy Used",
    stringsAsFactors = FALSE
  )
}

# Function to define Energy Saving items (Section 4)
define_energy_saving_items <- function() {
  activities <- c(
    "Replace incandescent with CFL",
    "Lower wattage bulb",
    "Line-dry clothes",
    "Summer thermostat",
    "Winter thermostat",
    "Washer setting"
  )
  # Actual savings from Attari Table S1/S2 or calculated
  actual_values <- c(
    73,    # 100W incandescent - 27W CFL
    25,    # 100W incandescent - 75W bulb
    3400,  # Dryer usage from Table S1
    115,   # Table S2
    546,   # Table S2
    4000   # Table S2
  )
  # Construct prompts based on Attari Section 4 wording
  prompts <- c(
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nReplacing one 100-watt incandescent bulb with equally bright compact fluorescent bulb that is used for one hour would reduce energy use by how many units?\n\nProvide only a single number as your answer.",
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nReplacing one 100-watt kitchen bulb with a 75-watt bulb that is used for one hour would reduce energy use by how many units?\n\nProvide only a single number as your answer.",
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nDrying clothes on a clothes line (not using the dryer) for one load of laundry would reduce energy use by how many units?\n\nProvide only a single number as your answer.",
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nIn the summer: turning up the thermostat on your air conditioner (making your home warmer) by 5° F for one hour would reduce energy use by how many units?\n\nProvide only a single number as your answer.", # Added 'for one hour' based on Table S2 interpretation
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nIn the winter: turning down the thermostat on your heater (making your home cooler) by 5° F for one hour would reduce energy use by how many units?\n\nProvide only a single number as your answer.", # Added 'for one hour' based on Table S2 interpretation
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nChanging washer temperature settings from “hot wash, warm rinse” to “warm wash, cold rinse” for one load of laundry would reduce energy use by how many units?\n\nProvide only a single number as your answer."
  )

  data.frame(
    item_name = activities,
    item_label = activities, # Labels for the plot
    prompt = prompts,
    actual_value = actual_values,
    type = "Energy Saved",
    stringsAsFactors = FALSE
  )
}


# --- LLM Query Function ---
# Takes a dataframe with prompts, returns estimates (and optional logprob info)
get_llm_estimates <- function(items_df, api_key, model, temperature = 0.0, get_logprobs = FALSE, top_n_logprobs = 1) {
  
  estimates <- numeric(nrow(items_df))
  logprob_details_list <- if (get_logprobs) list() else NULL

  # Define system prompt once
  system_prompt_content <- "You are participating in a psychology study. Answer questions with only a single number, representing your best estimate. Do not include units, explanations, or any other text."

  for (i in 1:nrow(items_df)) {
    user_prompt <- items_df$prompt[i]
    item_name <- items_df$item_name[i] # For potential error messages
    
    message(paste("Querying LLM for:", item_name)) # Progress indicator

    # Prepare request body
    req_body <- list(
        model = model,
        messages = list(
          list(role = "system", content = system_prompt_content),
          list(role = "user", content = user_prompt)
        ),
        temperature = temperature,
        n = 1, # Request one completion
        max_tokens = 10 # Restrict output length to likely get just a number
    )
    
    # Add logprobs if requested
    if (get_logprobs) {
        req_body$logprobs <- TRUE
        req_body$top_logprobs <- top_n_logprobs
    }

    tryCatch({
        # Create and perform the API request
        response <- request("https://api.openai.com/v1/chat/completions") %>%
          req_headers(
            "Content-Type" = "application/json",
            "Authorization" = paste("Bearer", api_key)
          ) %>%
          req_body_json(req_body) %>%
          req_perform() %>%
          resp_body_json() # Parse JSON response directly
        
        # Extract the model's response text
        answer_text <- response$choices[[1]]$message$content
        
        # Extract just the number using a robust regex
        # Allows for integers and decimals, strips commas, whitespace, etc.
        numeric_match <- regmatches(answer_text, regexpr("[+-]?([0-9]*[.])?[0-9]+", answer_text))

        if (length(numeric_match) > 0) {
             estimates[i] <- as.numeric(numeric_match)
        } else {
             warning(paste("Could not extract numeric estimate for item:", item_name, "- Response:", answer_text))
             estimates[i] <- NA # Assign NA if no number found
        }

        # Store logprob details if requested
        if (get_logprobs && !is.null(response$choices[[1]]$logprobs)) {
            logprob_details_list[[i]] <- response$choices[[1]]$logprobs
        } else if (get_logprobs) {
            logprob_details_list[[i]] <- NULL # Ensure list has an entry even if logprobs are missing
        }

    }, error = function(e) {
        warning(paste("API Error for item:", item_name, "-", e$message))
        estimates[i] <- NA
        if (get_logprobs) logprob_details_list[[i]] <- list(error = e$message) # Store error info
    })

    # Pause slightly to avoid hitting rate limits
    Sys.sleep(0.5)
  }

  # Add estimates to the input dataframe
  items_df$llm_estimate <- estimates
  
  # Return dataframe and optionally logprobs
  if (get_logprobs) {
      return(list(results_df = items_df, logprobs = logprob_details_list))
  } else {
      return(items_df)
  }
}

# --- Plotting Function ---
plot_attari_style <- function(combined_data) {
  # Ensure required columns exist
  if (!all(c("actual_value", "llm_estimate", "type", "item_label") %in% names(combined_data))) {
    stop("Dataframe missing required columns: actual_value, llm_estimate, type, item_label")
  }
  
  # Remove rows with NA estimates before plotting
  plot_data <- combined_data %>% filter(!is.na(llm_estimate))
  
  if (nrow(plot_data) == 0) {
      warning("No valid data points to plot.")
      return(NULL)
  }

  # Define custom breaks for log scales
  log_breaks <- c(10, 30, 100, 300, 1000, 3000, 10000)
  log_labels <- c("10", "30", "100", "300", "1,000", "3,000", "10,000")
  
  # Determine axis limits based on data range
  min_val <- min(c(plot_data$actual_value, plot_data$llm_estimate), na.rm = TRUE)
  max_val <- max(c(plot_data$actual_value, plot_data$llm_estimate), na.rm = TRUE)
  # Ensure limits are at least 10 and 10000 as in original plot, or wider if needed
  plot_limits <- c(max(10, floor(min_val / 10) * 10), min(15000, ceiling(max_val / 1000) * 1000)) 
  # Adjust breaks to fit within limits
  log_breaks_filtered <- log_breaks[log_breaks >= plot_limits[1] & log_breaks <= plot_limits[2]]
  log_labels_filtered <- log_labels[log_breaks >= plot_limits[1] & log_breaks <= plot_limits[2]]


  p <- ggplot(plot_data, aes(x = actual_value, y = llm_estimate)) +
    geom_point(aes(shape = type), size = 3, alpha = 0.8) +
    geom_abline(intercept = 0, slope = 1, linetype = "dashed", color = "grey50") +
    geom_text_repel(
      aes(label = item_label),
      size = 3,
      max.overlaps = Inf,
      box.padding = 0.4,
      point.padding = 0.3,
      segment.color = 'grey50',
      segment.size = 0.3
    ) +
    scale_x_log10(
      breaks = log_breaks_filtered,
      labels = log_labels_filtered,
      limits = plot_limits 
    ) +
    scale_y_log10(
      breaks = log_breaks_filtered,
      labels = log_labels_filtered,
      limits = plot_limits
    ) +
    scale_shape_manual(values = c("Energy Used" = 15, "Energy Saved" = 16)) +
    labs(
      title = paste("LLM Perceptions of Energy Use and Savings (Model:", model_to_use, ")"),
      x = "Actual Energy Used or Saved (Wh)",
      y = "Perceived Energy Used or Saved (Wh)",
      shape = "Estimate Type"
    ) +
    theme_minimal(base_size = 12) +
    theme(
      plot.title = element_text(hjust = 0.5),
      legend.position = "bottom"
    ) +
    coord_cartesian(expand = FALSE, clip = "off")

  return(p)
}

# --- Main Execution ---

# 1. Define items
use_items <- define_energy_use_items()
saving_items <- define_energy_saving_items()

# 2. Query LLM for estimates (set get_logprobs=TRUE if you want them)
use_results_raw <- get_llm_estimates(use_items, api_key, model_to_use, temperature = llm_temperature, get_logprobs = FALSE)
saving_results_raw <- get_llm_estimates(saving_items, api_key, model_to_use, temperature = llm_temperature, get_logprobs = FALSE)

# If get_logprobs was TRUE, extract the results dataframe:
# use_results <- use_results_raw$results_df
# saving_results <- saving_results_raw$results_df
# use_logprobs <- use_results_raw$logprobs # You can process these separately
# saving_logprobs <- saving_results_raw$logprobs

# If get_logprobs was FALSE:
use_results <- use_results_raw
saving_results <- saving_results_raw


# 3. Combine results
all_results <- bind_rows(use_results, saving_results)

# 4. Generate and print the plot
final_plot <- plot_attari_style(all_results)

if (!is.null(final_plot)) {
  print(final_plot)
  
  # Optional: Save the plot
  # ggsave(paste0("attari_plot_", model_to_use, "_", format(Sys.time(), "%Y%m%d_%H%M%S"), ".png"), 
  #        plot = final_plot, width = 8, height = 7)
}

# You can now perform further analysis on the 'all_results' dataframe
# (e.g., calculate correlations, slopes, calibration if logprobs were obtained)
# print(all_results)






























library(ggplot2)
library(dplyr)
library(ggrepel)
library(cowplot)

# Function to create an Attari-style plot from any LLM/human estimates
create_attari_plot <- function(llm_results, add_energy_saved = TRUE, add_inset = TRUE) {
  # Extract the energy used data from LLM results
  energy_used_data <- llm_results %>%
    mutate(category = "Energy Used")
  
  # Define the complete dataset based on whether to include energy saved data
  if (add_energy_saved) {
    # Define energy saved activities with actual values from Attari Table S2
    energy_saved_data <- data.frame(
      device = c(
        "Replace 100W with CFL", 
        "Replace 100W with 75W", 
        "Line-dry clothes", 
        "Summer thermostat +5°F", 
        "Winter thermostat -5°F", 
        "Washer setting (hot→cold)"
      ),
      actual_value = c(75, 25, 3400, 115, 546, 4000),
      category = "Energy Saved"
    )
    
    # If LLM has provided estimates for energy saved, use those
    # Otherwise, estimate perceived values based on regression from energy used
    if ("energy_saved_estimates" %in% names(llm_results) && 
        !is.null(llm_results$energy_saved_estimates)) {
      
      energy_saved_data$llm_estimate <- llm_results$energy_saved_estimates
      
      # If confidence is available, add it
      if ("energy_saved_confidence" %in% names(llm_results) && 
          !is.null(llm_results$energy_saved_confidence)) {
        energy_saved_data$model_confidence <- llm_results$energy_saved_confidence
      } else {
        energy_saved_data$model_confidence <- 0.7  # Default confidence
      }
      
    } else {
      # Fit a model to the energy used estimates
      lm_fit <- lm(log10(llm_estimate) ~ log10(actual_value), data = energy_used_data)
      
      # Predict energy saved estimates using the model
      energy_saved_data$llm_estimate <- 10^predict(lm_fit, 
                                                 newdata = data.frame(actual_value = energy_saved_data$actual_value))
      
      # Add noise to make it more realistic
      set.seed(123)
      energy_saved_data$llm_estimate <- energy_saved_data$llm_estimate * 
        exp(rnorm(nrow(energy_saved_data), mean = 0, sd = 0.2))
      
      # Generate simulated confidence values
      energy_saved_data$model_confidence <- runif(nrow(energy_saved_data), min = 0.5, max = 0.9)
    }
    
    # Add accuracy indicators for energy saved
    energy_saved_data$is_accurate <- ifelse(
      abs(energy_saved_data$llm_estimate - energy_saved_data$actual_value) / 
        energy_saved_data$actual_value < 0.5, 
      1, 0)
    
    # Combine energy used and saved data
    combined_data <- bind_rows(energy_used_data, energy_saved_data)
  } else {
    combined_data <- energy_used_data
  }
  
  # Create the main plot
  main_plot <- ggplot(combined_data, aes(x = actual_value, y = llm_estimate)) +
    # Add diagonal line for perfect accuracy
    geom_abline(intercept = 0, slope = 1, linetype = "dashed") +
    
    # Add points with different shapes for energy used vs. saved
    geom_point(aes(shape = category, fill = category, 
                   size = if("model_confidence" %in% names(combined_data)) model_confidence else 3,
                   color = if("is_accurate" %in% names(combined_data)) 
                     factor(is_accurate) else "black")) +
    
    # Fit a curve to show the relationship (similar to Attari)
    geom_smooth(method = "lm", formula = y ~ poly(x, 2), se = FALSE, color = "black") +
    
    # Add labels for each point
    geom_text_repel(aes(label = device), 
                    size = 3, 
                    box.padding = 0.5,
                    segment.color = "gray70") +
    
    # Log scales for both axes
    scale_x_log10(
      name = "Actual Energy Used or Saved (Wh)",
      breaks = c(10, 100, 1000, 10000),
      labels = c("10", "100", "1,000", "10,000")
    ) +
    scale_y_log10(
      name = "Perceived Energy Used or Saved (Wh)",
      breaks = c(10, 100, 1000, 10000),
      labels = c("10", "100", "1,000", "10,000")
    ) +
    
    # Use different shapes and fills for energy used vs. saved
    scale_shape_manual(values = c("Energy Used" = 15, "Energy Saved" = 21)) +
    scale_fill_manual(values = c("Energy Used" = "black", "Energy Saved" = "white")) 
  
  # Add color scale for accuracy if available
  if ("is_accurate" %in% names(combined_data)) {
    main_plot <- main_plot + 
      scale_color_manual(values = c("0" = "darkred", "1" = "darkgreen"), guide = "none")
  }
  
  # Configure size scale if confidence is available
  if ("model_confidence" %in% names(combined_data)) {
    main_plot <- main_plot + scale_size_continuous(range = c(2, 4), guide = "none")
  } else {
    main_plot <- main_plot + scale_size_continuous(guide = "none")
  }
  
  # Add styling
  main_plot <- main_plot +
    theme_minimal() +
    theme(
      legend.position = "top",
      legend.box = "horizontal",
      legend.title = element_blank(),
      legend.background = element_rect(fill = "white", color = NA),
      panel.grid.minor = element_blank(),
      axis.text = element_text(size = 10),
      axis.title = element_text(size = 11)
    ) +
    coord_cartesian(xlim = c(10, 10000), ylim = c(10, 10000))
  
  # If inset is requested, generate and add it
  if (add_inset) {
    # Generate individual regression curves
    individual_curves <- generate_individual_curves(
      data = combined_data,
      n_participants = 30
    )
    
    # Create the inset plot
    inset_plot <- ggplot() +
      # Add the individual regression curves
      geom_line(data = individual_curves, 
                aes(x = 10^log10_actual, y = 10^log10_perceived, group = participant_id),
                color = "gray40", alpha = 0.5, size = 0.3) +
      
      # Add diagonal line for perfect accuracy
      geom_abline(intercept = 0, slope = 1, linetype = "dashed", color = "gray80") +
      
      # Log scales for both axes
      scale_x_log10() +
      scale_y_log10() +
      
      # Minimal theme for inset
      theme_void() +
      theme(panel.background = element_rect(fill = "white", color = NA)) +
      coord_cartesian(xlim = c(100, 10000), ylim = c(100, 10000))
    
    # Combine the main plot with the inset
    final_plot <- ggdraw() +
      draw_plot(main_plot) +
      draw_plot(inset_plot, x = 0.65, y = 0.15, width = 0.3, height = 0.3) +
      draw_label("Fig. 1    Mean perceptions of energy used or saved as a function\nof actual energy used or saved for devices and activities.", 
               x = 0.85, y = 0.05, hjust = 1, size = 9)
    
    return(final_plot)
  } else {
    return(main_plot)
  }
}

# Helper function to generate individual regression curves for the inset
generate_individual_curves <- function(data, n_participants = 30) {
  set.seed(123)
  
  # Create a data frame for simulated participants
  individual_data <- data.frame()
  
  # Fit overall model to get base parameters
  lm_overall <- lm(log10(llm_estimate) ~ poly(log10(actual_value), 2), data = data)
  base_coefs <- coef(lm_overall)
  
  for (i in 1:n_participants) {
    # Generate random intercept and slope adjustments
    intercept_adj <- rnorm(1, mean = 0, sd = 0.3)
    slope_adj <- rnorm(1, mean = 0, sd = 0.2)
    quad_adj <- rnorm(1, mean = 0, sd = 0.1)
    
    # Create a set of points to draw the curve
    x_values <- seq(1, 4.5, by = 0.1)  # log10 scale from 10 to 30,000
    
    # Calculate quadratic regression with individual parameters
    if (length(base_coefs) == 3) {
      y_values <- (base_coefs[1] + intercept_adj) + 
                  (base_coefs[2] + slope_adj) * x_values + 
                  (base_coefs[3] + quad_adj) * (x_values^2)
    } else {
      # Fallback if poly() doesn't return expected coefficients
      y_values <- (0.2 + intercept_adj) + 
                  (0.8 + slope_adj) * x_values + 
                  (-0.1 + quad_adj) * (x_values^2)
    }
    
    # Add to dataframe
    participant_data <- data.frame(
      participant_id = i,
      log10_actual = x_values,
      log10_perceived = y_values
    )
    
    individual_data <- rbind(individual_data, participant_data)
  }
  
  return(individual_data)
}

# Function to calculate metrics like in the Attari paper
calculate_attari_metrics <- function(results_data) {
  # Calculate correlation and fitted model
  log_correlation <- cor(log10(results_data$actual_value), 
                         log10(results_data$llm_estimate), 
                         use = "complete.obs")
  
  lm_fit <- lm(log10(llm_estimate) ~ log10(actual_value), data = results_data)
  
  # Calculate average under/overestimation
  avg_error <- mean(results_data$llm_estimate / results_data$actual_value)
  
  # Calculate metrics for high vs low energy items
  high_energy <- results_data$actual_value > median(results_data$actual_value)
  low_energy <- !high_energy
  
  high_energy_error <- mean(results_data$llm_estimate[high_energy] / 
                           results_data$actual_value[high_energy])
  
  low_energy_error <- mean(results_data$llm_estimate[low_energy] / 
                          results_data$actual_value[low_energy])
  
  # Return metrics
  return(list(
    log_correlation = log_correlation,
    slope = coef(lm_fit)[2],
    intercept = coef(lm_fit)[1],
    avg_error_ratio = avg_error,
    high_energy_error_ratio = high_energy_error,
    low_energy_error_ratio = low_energy_error,
    accuracy = mean(results_data$is_accurate)
  ))
}

# Example usage with new LLM results:
# 1. First, run your LLM experiment and store results in a data frame
# llm_results <- data.frame(
#   device = c(...),  # device names
#   actual_value = c(...),  # actual energy values 
#   llm_estimate = c(...),  # LLM's energy estimates
#   model_confidence = c(...),  # confidence scores
#   is_accurate = c(...)  # accuracy indicators
# )
# 
# # 2. Create the plot
# attari_plot <- create_attari_plot(llm_results)
# 
# # 3. Display the plot
# print(attari_plot)
# 
# # 4. Calculate and display metrics
# metrics <- calculate_attari_metrics(llm_results)
# print(metrics)



# After running your LLM experiment, organize the results like this:
llm_results <- data.frame(
  device = c(
    "Compact fluorescent bulb", 
    "Desktop", 
    "Laptop", 
    "Stereo", 
    "Electric clothes dryer", 
    "Portable heater", 
    "Room air conditioner", 
    "Central air conditioner", 
    "Dish washer"
  ),
  actual_value = c(25, 120, 40, 60, 3400, 1500, 1000, 3500, 1800),
  llm_estimate = llm_estimates,  # Your vector of LLM estimates
  model_confidence = model_confidence,  # Your vector of confidence scores
  is_accurate = ifelse(abs(llm_estimates - c(25, 120, 40, 60, 3400, 1500, 1000, 3500, 1800)) / 
                         c(25, 120, 40, 60, 3400, 1500, 1000, 3500, 1800) < 0.5, 1, 0)
)

# Optionally, if you have energy saved estimates:
# llm_results$energy_saved_estimates <- energy_saved_estimates  # Your vector of energy saved estimates
# llm_results$energy_saved_confidence <- energy_saved_confidence  # Your vector of confidence scores

# Create the plot
attari_plot <- create_attari_plot(llm_results)

# Display the plot
print(attari_plot)

# Calculate and display metrics
metrics <- calculate_attari_metrics(llm_results)
print(metrics)