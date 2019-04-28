#' @title binomial mean
#' @description to calculates the mean of a binomial variable
#' @param trials number of trials
#' @param prob probability of success
#' @return the mean of a binomial variable
#' @export
#' @examples
#' bin_mean(trials = 10, prob = 0.3)
#'
bin_mean <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_mean(trials, prob))
}

#' @title binomial variance
#' @description to calculates the variance of a binomial variable
#' @param trials number of trials
#' @param prob probability of success
#' @return the variance of a binomial variable
#' @export
#' @examples
#' bin_variance(trials = 10, prob = 0.3)
#'
bin_variance <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_variance(trials, prob))
}

#' @title binomial mode
#' @description to calculates the mode of a binomial variable
#' @param trials number of trials
#' @param prob probability of success
#' @return the mode of a binomial variable
#' @export
#' @examples
#' bin_mode(trials = 10, prob = 0.3)
#'
bin_mode <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_mode(trials, prob))
}

#' @title binomial skewness
#' @description to calculates the skewness of a binomial variable
#' @param trials number of trials
#' @param prob probability of success
#' @return the skewness of a binomial variable
#' @export
#' @examples
#' bin_skewness(trials = 10, prob = 0.3)
#'
bin_skewness <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_skewness(trials, prob))
}

#' @title binomial kurtosis
#' @description to calculates the kurtosis of a binomial variable
#' @param trials number of trials
#' @param prob probability of success
#' @return the kurtosis of a binomial variable
#' @export
#' @examples
#' bin_kurtosis(trials = 10, prob = 0.3)
#'
bin_kurtosis <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_kurtosis(trials, prob))
}
