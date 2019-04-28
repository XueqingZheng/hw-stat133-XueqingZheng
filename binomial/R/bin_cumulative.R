#' @title binomial cumulative
#' @description to calculate binomial cumulative distribution
#' @param trials number of trials
#' @param prob probability
#' @return binomial cumulative distribution
#' @export
#' @examples
#' dis2 <- bin_cumulative(trials = 5, prob = 0.5)
#' plot(dis2)
#'
bin_cumulative <- function(trials, prob) {
  result <- bin_distribution(trials, prob)
  class(result) <- c("bincum", "data.frame")
  cumulative <- c()
  temp = 0
  for (i in 1:(trials + 1)) {
    temp = temp + result$probability[i]
    cumulative[i] = temp
  }
  result$cumulative <- cumulative
  return(result)
}

#' @export
plot.bincum <- function(df) {
  plot(df$success, 
       df$cumulative, 
       type = "p",
       xlab = "successes", 
       ylab = "probability",
       yaxt = "n")
  lines(df$success, df$cumulative)
  axis(side = 2, las = 1)
}