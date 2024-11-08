index = sample(1:10, 10)


# Function gets train and test data index's
getTrainTestIndex <- function(amount) {
  total_numbers <- amount / 2

  half <- amount/2
  
  all_indices <- sample(1:amount, size = amount, replace = FALSE)
  
  train_index <- all_indices[1:half]
  test_index <- all_indices[half:amount]
  
  return(list(train_index = train_index, test_index = test_index))
}


getTrainTestIndex(99)
