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