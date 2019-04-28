#' @title binomial distribution
#' @description to calculate binomial probability distribution
#' @param trials number of trials
#' @param prob probability
#' @return binomial probability distribution
#' @export
#' @examples
#' dis1 <- bin_distribution(trials = 5, prob = 0.5)
#' plot(dis1)
#'
bin_distribution <- function(trials, prob) {
  success <- 0 : trials
  probability <- bin_probability(success, trials, prob)
  result <- data.frame(success, probability)
  class(result) <- c("bindis", "data.frame")
  return(result)
}

#' @export
plot.bindis <- function(df) {
  barplot(
    df$probability,
    xlab = "successes", 
    ylab = "probability",
    border = NA)
}
