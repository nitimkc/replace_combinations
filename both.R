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

replace_question_mark <- function(str) {
  
  n_ques <- sapply((gregexpr("?", str, fixed=TRUE)), function(i) sum(i > 0))
  result_combinations <- create_combinations(n_ques)
  
  str_vec <- unlist(strsplit(str, ""))
  match_obj <- gregexpr("?", str, fixed=TRUE)
  match_idx <- unlist(match_obj)
  
  final_result <- t(replicate(nrow(result_combinations), str_vec))
  final_result[,match_idx] <- result_combinations
  
  return(final_result)
}

#replace_question_mark("11?0?")