# private to calculate
calculate_choose <- function(n, k){
  if(any(k > n)){
    stop("k cannot be greater than n")
  }
  x <- factorial(n)/(factorial(k)*factorial(n - k))
  return(x)
}

#' @title binomial choose
#' @description to calculate the number of combinations in which k successes can occur in n trials
#' @param n number of trials
#' @param k number of successes
#' @return the number of combinations in which k successes can occur in n trials
#' @export
#' @examples
#' bin_choose(n = 5, k = 2)
#' bin_choose(5, 0)
#' bin_choose(5, 1:3)
#'
bin_choose <- function(n, k) {
  result <- as.vector(sapply(n, calculate_choose, k))
  return(result)
}