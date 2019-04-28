#' @title binomial variable
#' @description to create a binomial random variable object
#' @param trials number of trials
#' @param prob probability
#' @return binomial random variable object
#' @export
#' @examples
#' bin1 <- bin_variable(trials = 10, p = 0.3)
#' bin1
#' binsum1 <- summary(bin1)
#' binsum1
#'
bin_variable <- function(trials, prob) {
  check_prob(prob)
  check_trials(trials)
  result <- list(
    trials = trials,
    prob = prob)
  class(result) <- "binvar"
  return(result)
}

#' @export
print.binvar <- function(result){
  cat('"Binomial variable"\n\n')
  cat('Paramaters\n')
  cat("- number of trials: ", result$trials,"\n")
  cat("- prob of success: ", result$prob, "\n")
}

#' @export
summary.binvar <- function(binvar){
  result <- list(
    trials = binvar$trials,
    prob = binvar$prob,
    mean = aux_mean(binvar$trials, binvar$prob),
    variance = aux_variance(binvar$trials, binvar$prob),
    mode = aux_mode(binvar$trials, binvar$prob),
    skewness = aux_skewness(binvar$trials, binvar$prob),
    kurtosis = aux_kurtosis(binvar$trials, binvar$prob)
  )
  class(result) = "summary.binvar"
  return(result)
}

#' @export
print.summary.binvar <- function(result){
  cat('"Summary Binomial"\n\n')
  cat('Paramaters\n')
  cat("- number of trials: ", result$trials,"\n")
  cat("- prob of success: ", result$prob, "\n\n")
  cat('Measures\n')
  cat("- mean    : ", result$mean, "\n")
  cat("- variance: ", result$variance, "\n")
  cat("- mode    : ", result$skewness, "\n")
  cat("- kurtosis: ", result$kurtosis, "\n")
}
