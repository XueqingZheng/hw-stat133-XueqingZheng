# private to check if an input prob is a valid probability value
check_prob <- function(prob){
  if(prob <= 1 & prob >=0){
    return(TRUE)
  }
  else{
    stop("p has to be a number betwen 0 and 1")
  }
}

# private to check if an input trials is a valid value for number of trials
check_trials <- function(trials){
  if(trials >= 0 & trials == round(trials)){
    return(TRUE)
  }
  else{
    stop("invalid trials value")
  }
}

# private to check if an input success is a valid value for number of successes
check_success <- function(success, trials){
  for(s in success){
    if(s != round(s) | s < 0){
      stop("invalid success value")
    }
    if(s > trials){
      stop("success cannot be greater than trials")
    }
  }
  return(TRUE)
}

