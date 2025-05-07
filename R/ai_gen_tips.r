library(httr2)
library(jsonlite)
library(dplyr)
library(tidyr)
library(ggplot2) 
library(ggrepel) 

# --- Configuration ---
openai_endpoint <- "https://api.openai.com/v1/chat/completions"
api_key         <- Sys.getenv("OPENAI_API_KEY")

# LLM Parameters for Estimate Generation
llm_model_estimate       <- "gpt-4.1-nano" # or "gpt-4.1-mini", "gpt-4-turbo", etc.
llm_temperature_estimate <- 0.0   # Use 0 for deterministic results, higher for variability
llm_top_n_logprobs       <- 5     # For confidence calculation, hardcoded in function below
llm_max_tokens_estimate  <- 15    # For numeric estimate response

# LLM Parameters for Explanation Generation
llm_model_explanation       <- "gpt-4.1-nano" # Can be same or different from estimate model
llm_temperature_explanation <- 0.5   # Allow some creativity in explanations
llm_max_tokens_explanation  <- 70    # For 1-2 sentence explanations

# Dataset Information
dataset_name_desc <- "LLM Energy Consumption & Saving Estimates"
dataset_version <- "1.0" # Increment if prompts, logic, or models change significantly
dataset_notes <- paste0(
    "LLM estimations for energy usage and savings, based on a 100W bulb reference. ",
    "Confidence score is the average token probability for the numeric estimate. ",
    "Explanations generated based on confidence level."
)


# --- Define Items and Prompts ---

# Function to define Energy Use items (Section 3)
define_energy_use_items <- function() {
  devices <- c(
    "Compact fluorescent bulb", "Desktop computer", "Laptop computer", "Stereo",
    "Electric clothes dryer", "Portable heater", "Room air-conditioner",
    "Central air conditioner", "Dish washer"
  )
  actual_values <- c(27, 140, 48, 128, 3400, 925, 1000, 3500, 1800)
  key_map <- c(
    "Compact fluorescent bulb" = "est_cfl", "Desktop computer" = "est_desktop",
    "Laptop computer" = "est_laptop", "Stereo" = "est_stereo",
    "Electric clothes dryer" = "est_electric_clothes_dryer",
    "Portable heater" = "est_portable_heater",
    "Room air-conditioner" = "est_room_air_conditioner",
    "Central air conditioner" = "est_central_air_conditioner",
    "Dish washer" = "est_dish_washer"
  )
  prompts <- sapply(devices, function(device_name) {
    full_device_name <- switch(device_name,
      "Compact fluorescent bulb" = "A compact fluorescent light bulb that is as bright as a 100-Watt incandescent light bulb",
      device_name
    )
    paste0(
      "A 100-Watt incandescent light bulb uses 100 units of energy in one hour.\n\n",
      "How many units of energy do you think the following device typically uses in one hour?\n\n",
      full_device_name, "\n\nProvide only a single number as your answer."
    )
  })
  data.frame(
    item_name = devices, item_label = devices, prompt = prompts,
    actual_value = actual_values, type = "Energy Used",
    estimation_task_key = key_map[devices], stringsAsFactors = FALSE
  )
}

# Function to define Energy Saving items (Section 4)
define_energy_saving_items <- function() {
  activities <- c(
    "Replace incandescent with CFL", "Lower wattage bulb", "Line-dry clothes",
    "Summer thermostat", "Winter thermostat", "Washer setting"
  )
  actual_values <- c(73, 25, 3400, 115, 546, 4000)
  key_map <- c(
    "Replace incandescent with CFL" = "est_replace_incandescent_with_cfl",
    "Lower wattage bulb" = "est_lower_wattage_bulb",
    "Line-dry clothes" = "est_line_dry_clothes",
    "Summer thermostat" = "est_summer_thermostat",
    "Winter thermostat" = "est_winter_thermostat",
    "Washer setting" = "est_washer_setting"
  )
  prompts <- c(
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nReplacing one 100-watt incandescent bulb with equally bright compact fluorescent bulb that is used for one hour would reduce energy use by how many units?\n\nProvide only a single number as your answer.",
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nReplacing one 100-watt kitchen bulb with a 75-watt bulb that is used for one hour would reduce energy use by how many units?\n\nProvide only a single number as your answer.",
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nDrying clothes on a clothes line (not using the dryer) for one load of laundry would reduce energy use by how many units?\n\nProvide only a single number as your answer.",
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nIn the summer: turning up the thermostat on your air conditioner (making your home warmer) by 5° F for one hour would reduce energy use by how many units?\n\nProvide only a single number as your answer.",
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nIn the winter: turning down the thermostat on your heater (making your home cooler) by 5° F for one hour would reduce energy use by how many units?\n\nProvide only a single number as your answer.",
    "Turning off a 100-Watt incandescent light bulb for one hour SAVES 100 units of energy.\n\nChanging washer temperature settings from “hot wash, warm rinse” to “warm wash, cold rinse” for one load of laundry would reduce energy use by how many units?\n\nProvide only a single number as your answer."
  )
  data.frame(
    item_name = activities, item_label = activities, prompt = prompts,
    actual_value = actual_values, type = "Energy Saved",
    estimation_task_key = key_map[activities], stringsAsFactors = FALSE
  )
}

# --- LLM Query Function (Modified for Confidence Calculation) ---
get_llm_estimates_and_confidence <- function(items_df, api_key, model, temperature, max_tokens_val, top_n_logprobs_val) {
    estimates <- numeric(nrow(items_df))
    confidence_scores <- numeric(nrow(items_df))
    logprob_details_list <- list()

    system_prompt_content <- "You are participating in a psychology study. Answer questions with only a single number, representing your best estimate. Do not include units, explanations, or any other text."

    for (i in 1:nrow(items_df)) {
        user_prompt <- items_df$prompt[i]
        item_name <- items_df$item_name[i]
        message(paste("Stage 1: Getting estimate & confidence for:", item_name))

        req_body <- list(
            model = model,
            messages = list(
                list(role = "system", content = system_prompt_content),
                list(role = "user", content = user_prompt)
            ),
            temperature = temperature,
            n = 1,
            max_tokens = max_tokens_val,
            logprobs = TRUE,
            top_logprobs = top_n_logprobs_val
        )

        current_estimate <- NA
        current_confidence <- NA
        current_logprobs <- NULL

        tryCatch({
            response <- request(openai_endpoint) %>%
                req_headers("Content-Type" = "application/json", "Authorization" = paste("Bearer", api_key)) %>%
                req_body_json(req_body) %>%
                req_perform() %>%
                resp_body_json()

            answer_text <- response$choices[[1]]$message$content
            numeric_match <- regmatches(answer_text, regexpr("[+-]?([0-9]*[.])?[0-9]+", answer_text))

            if (length(numeric_match) > 0) {
                current_estimate <- as.numeric(numeric_match)
            } else {
                warning(paste("Could not extract numeric estimate for item:", item_name, "- Response:", answer_text))
            }

            logprobs_data <- response$choices[[1]]$logprobs
            current_logprobs <- logprobs_data

            if (!is.null(logprobs_data) && !is.null(logprobs_data$content) && length(logprobs_data$content) > 0) {
                token_logprobs <- sapply(logprobs_data$content, function(x) x$logprob)
                token_probs <- exp(token_logprobs)
                avg_prob <- mean(token_probs, na.rm = TRUE)
                current_confidence <- avg_prob
            } else {
                warning(paste("Logprobs data missing or empty for item:", item_name))
                current_confidence <- NA
            }
        }, error = function(e) {
            warning(paste("API Error (Stage 1) for item:", item_name, "-", e$message))
            current_estimate <- NA; current_confidence <- NA
            current_logprobs <- list(error = e$message)
        })

        estimates[i] <- current_estimate
        confidence_scores[i] <- current_confidence
        logprob_details_list[[i]] <- current_logprobs
        Sys.sleep(0.6)
    }
    items_df$llm_estimate <- estimates
    items_df$llm_confidence_score <- confidence_scores
    return(list(results_df = items_df, logprobs = logprob_details_list))
}

# --- Step 2: Define Confidence Bins and Explanation Logic ---
get_confidence_level <- function(score) {
  if (is.na(score)) return("Unknown")
  else if (score >= 0.85) return("High")
  else if (score >= 0.50) return("Medium")
  else return("Low")
}

# --- Step 3: Function to Generate Explanations ---
generate_explanation <- function(item_name, item_type, llm_estimate, confidence_level, api_key, model, temperature, max_tokens_val) {
    if (is.na(llm_estimate) || confidence_level == "Unknown") {
        return("Could not generate an explanation due to missing estimate or confidence.")
    }
    action_verb <- ifelse(item_type == "Energy Used", "uses", "saves")
    estimate_str <- format(round(llm_estimate), big.mark = ",")
    base_prompt <- paste0(
        "Regarding the item '", item_name,
        "', the estimated energy it ", action_verb, " is approximately ", estimate_str, " units per hour (where a 100W bulb uses 100 units). ",
        "Provide a brief, helpful explanation or context (1-2 sentences) related to this estimate."
    )
    style_instruction <- switch(confidence_level,
        "High"   = " Frame your explanation confidently.",
        "Medium" = " Frame your explanation with some hedging or mention of typicality (e.g., 'often', 'around', 'typically').",
        "Low"    = " Frame your explanation expressing uncertainty (e.g., 'It's hard to be precise, but...', 'Estimates can vary...', 'I'm not very sure, but...').",
        "Unknown" = ""
    )
    full_prompt <- paste0(base_prompt, style_instruction)
    message(paste("  Stage 2: Generating", confidence_level, "explanation for:", item_name))

    explanation <- "Error generating explanation."
    tryCatch({
        response <- request(openai_endpoint) %>%
            req_headers("Content-Type" = "application/json", "Authorization" = paste("Bearer", api_key)) %>%
            req_body_json(list(
                model = model,
                messages = list(
                    list(role = "system", content = "You are an AI assistant providing helpful, concise context about energy estimates. Respond in 1-2 sentences."),
                    list(role = "user", content = full_prompt)
                ),
                temperature = temperature,
                n = 1,
                max_tokens = max_tokens_val
            )) %>%
            req_perform() %>%
            resp_body_json()
        if (!is.null(response$choices) && length(response$choices) > 0) {
            explanation <- response$choices[[1]]$message$content
        } else {
            warning(paste("Empty response when generating explanation for:", item_name))
            explanation <- "Received empty response from LLM for explanation."
        }
    }, error = function(e) {
        warning(paste("API Error (Stage 2) for item:", item_name, "-", e$message))
        explanation <- paste("API error during explanation generation:", e$message)
    })
    Sys.sleep(0.6)
    return(trimws(explanation))
}

# --- Main Execution ---
# 1. Define items
use_items <- define_energy_use_items()
saving_items <- define_energy_saving_items()

# 2. Get Estimates & Confidence Scores (Stage 1)
use_results_data <- get_llm_estimates_and_confidence(
    use_items, api_key, llm_model_estimate, llm_temperature_estimate,
    llm_max_tokens_estimate, llm_top_n_logprobs
)
saving_results_data <- get_llm_estimates_and_confidence(
    saving_items, api_key, llm_model_estimate, llm_temperature_estimate,
    llm_max_tokens_estimate, llm_top_n_logprobs
)
results_with_confidence <- bind_rows(use_results_data$results_df, saving_results_data$results_df)

# 3. Determine Confidence Levels & Generate Explanations (Stage 2)
results_with_confidence <- results_with_confidence %>%
  mutate(confidence_level = sapply(llm_confidence_score, get_confidence_level))

explanations <- character(nrow(results_with_confidence))
for (i in 1:nrow(results_with_confidence)) {
  explanations[i] <- generate_explanation(
    item_name = results_with_confidence$item_name[i],
    item_type = results_with_confidence$type[i],
    llm_estimate = results_with_confidence$llm_estimate[i],
    confidence_level = results_with_confidence$confidence_level[i],
    api_key = api_key,
    model = llm_model_explanation,
    temperature = llm_temperature_explanation,
    max_tokens_val = llm_max_tokens_explanation
  )
}
results_final <- results_with_confidence %>% mutate(llm_explanation = explanations)

# 4. Display Partial Results (for console check)
print(head(results_final[, c("item_name","estimation_task_key", "type", "actual_value", "llm_estimate", "llm_confidence_score", "confidence_level", "llm_explanation")]))

# --- Metadata Collection and JSON Output ---
generation_timestamp_utc <- format(Sys.time(), "%Y-%m-%dT%H:%M:%SZ", tz = "UTC")

metadata_object <- list(
  generation_info = list(
    script_name = "generate_llm_energy_data.R", # Update if you use a different R script name
    r_version = R.version.string,
    package_versions = list(
      httr2 = as.character(packageVersion("httr2")),
      jsonlite = as.character(packageVersion("jsonlite")),
      dplyr = as.character(packageVersion("dplyr")),
      tidyr = as.character(packageVersion("tidyr"))
      # Add ggplot2 & ggrepel if their versions are critical for data interpretation/reproducibility
      # ggplot2 = as.character(packageVersion("ggplot2")),
      # ggrepel = as.character(packageVersion("ggrepel"))
    ),
    timestamp_utc = generation_timestamp_utc
  ),
  llm_parameters = list(
    estimation_stage = list(
      model = llm_model_estimate,
      temperature = llm_temperature_estimate,
      max_tokens = llm_max_tokens_estimate,
      top_n_logprobs = llm_top_n_logprobs # From global config
    ),
    explanation_stage = list(
      model = llm_model_explanation,
      temperature = llm_temperature_explanation,
      max_tokens = llm_max_tokens_explanation
    )
  ),
  dataset_info = list(
      name = dataset_name_desc,
      version = dataset_version,
      description = dataset_notes # Using the globally defined notes
  )
)

# Combine Metadata and Data
output_for_json <- list(
  metadata = metadata_object,
  data = results_final
)

# Define output filename (includes model, version, and timestamp for uniqueness)
sanitized_model_name <- gsub("[^a-zA-Z0-9_.-]", "_", llm_model_estimate) # Sanitize model name for filename
json_output_filename <- paste0(
    "llm_energy_estimates_",
    sanitized_model_name, "_v",
    gsub("\\.", "_", dataset_version), "_",
    gsub(":", "-", gsub("T", "_", generation_timestamp_utc)), ".json"
)
json_output_filename <- gsub("Z$", "", json_output_filename) # Remove trailing Z if present

# Write to JSON
json_export <- toJSON(output_for_json, pretty = TRUE, auto_unbox = TRUE, dataframe = "rows")
write(json_export, file = json_output_filename)

message(paste("Output with metadata saved to:", json_output_filename))


# --- Optional: Proceed with Attari Plot ---
# Ensure plot_attari_style function is defined or sourced elsewhere
# Example: source("plotting_functions.R")
# if (exists("plot_attari_style")) {
#   final_plot <- plot_attari_style(results_final)
#   if (!is.null(final_plot)) {
#     print(final_plot)
#     # ggsave(paste0("plot_", tools::file_path_sans_ext(json_output_filename), ".png"), final_plot, width=10, height=8)
#   }
# } else {
#   message("plot_attari_style function not found. Skipping plot generation.")
# }