# private to compute mean of a binomial distribution
aux_mean <- function(trials, prob){
  return(trials * prob)
}

# private to compute variance of a binomial distribution
aux_variance <- function(trials, prob){
  return(trials * prob * (1 - prob))
}

# private to compute mode of a binomial distribution
aux_mode <- function(trials, prob){
  m <- trials * prob + prob
  if (m == floor(m)) {
    return(c(m, m - 1))
  }
  return(floor(m))
}

# private to compute skewness of a binomial distribution
aux_skewness <- function(trials, prob){
  return((1 - 2 * prob) / sqrt(trials * prob * (1 - prob)))
}

# private to compute kurtosis of a binomial distribution
aux_kurtosis <- function(trials, prob){
  return((1 - 6 * prob * (1 - prob)) / (trials * prob * (1 - prob)))
}

