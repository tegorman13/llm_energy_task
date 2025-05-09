# necessary R libraries.
library(httr2)
library(jsonlite)

# Set your API key (replace with your actual key or environment variable)
api_key <- Sys.getenv("OPENAI_API_KEY")
# Function to call the API and retrieve logprobs with error handling
get_completion_with_logprobs <- function(prompt_text, model_name = "gpt-4o-mini", max_tokens = 50, return_logprobs = TRUE, top_n_logprobs = 0) {

  # Construct the API request body
  request_body <- list(
    model = model_name,
    messages = list(list(role = "user", content = prompt_text)),
    max_tokens = max_tokens,
    logprobs = return_logprobs,
    top_logprobs = top_n_logprobs # Specify the number of top logprobs to return per token (0 to 5)
  )

  # Make the API request
  # Use tryCatch to handle potential errors during the request
  response <- tryCatch({
    request("https://api.openai.com/v1/chat/completions") |>
      req_headers(Authorization = paste("Bearer", api_key)) |>
      req_body_json(request_body) |>
      req_perform()
  }, error = function(e) {
    # Catch and return the error
    return(e)
  })

  # Check if the response is an error object
  if (inherits(response, "error")) {
    warning("API request failed: ", response$message)
    return(NULL) # Return NULL or handle the error as appropriate
  }

  # Check if the HTTP status code indicates an error
  if (resp_is_error(response)) {
    error_body <- tryCatch(
      resp_body_string(response),
      error = function(e) "Could not read error response body."
    )
    warning("API request failed with status ", resp_status(response), ": ", error_body)
    return(NULL) # Return NULL or handle the error as appropriate
  }

  # Parse the JSON response
  # Use resp_body_raw() for robustness before rawToChar
  response_json <- fromJSON(rawToChar(resp_body_raw(response)), simplifyVector = FALSE)

  return(response_json)
}

prompt <- "The average energy consumption of a refrigerator is"
response_with_logprobs <- get_completion_with_logprobs(prompt, top_n_logprobs = 5)



# Example of calculating average logprob
if (!is.null(response_with_logprobs$choices) && length(response_with_logprobs$choices) > 0 &&
    !is.null(response_with_logprobs$choices[[1]]$logprobs) && !is.null(response_with_logprobs$choices[[1]]$logprobs$content)) {

  logprobs_list <- lapply(response_with_logprobs$choices[[1]]$logprobs$content, function(x) x$logprob)
  average_logprob <- mean(unlist(logprobs_list))
  cat("\nAverage Logprob:", average_logprob, "\n")

  # Perplexity calculation (exponentiate negative average logprob)
  perplexity <- exp(-average_logprob)
   cat("Perplexity:", perplexity, "\n")

}




