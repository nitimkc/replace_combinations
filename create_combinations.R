create_combinations <- function(n){
  
  if(n==1){
    result_state = matrix(c(0,1))
    return(result_state)
    
  } else {
    
    prev_state <- create_combinations(n-1)
    n_row <- 2*(nrow(prev_state))
    
    result_state <- matrix(nrow=n_row,ncol=n)
    for(i in 1:2){
      result_state[(i-1)*n_row/2+1:(n_row/2),] <- cbind(i-1,prev_state)
    }
    return(result_state)
  }
}

#create_combinations(2)

