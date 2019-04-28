#' @title binomial probability
#' @description to calculate probability of getting k successes in n trials
#' @param trials number of trials
#' @param success number of successes
#' @param prob probability
#' @return probability of getting k successes in n trials
#' @export
#' @examples
#' # probability of getting 2 successes in 5 trials
#' # (assuming prob of success = 0.5)
#' bin_probability(success = 2, trials = 5, prob = 0.5)
#' # probability of getting 2 or less successes in 5 trials
#' # (assuming prob of success = 0.5)
#' bin_probability(success = 0:2, trials = 5, prob = 0.5)
#' # 55 heads in 100 tosses of a loaded coin with 45% chance of heads
#' bin_probability(success = 55, trials = 100, prob = 0.45)
#'
bin_probability <- function(success, trials, prob) {
  check_trials(trials)
  check_prob(prob)
  check_success(success, trials)
  result <- (prob^success)*(1-prob)^(trials-success)*bin_choose(trials, success)
  return(result)
}