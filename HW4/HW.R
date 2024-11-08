# Prepare the training and test data
train_data <- Weekly1990_2008
test_data <- Weekly2009_2010

# Separate predictors and response for training
train_x <- as.matrix(train_data[, c("Lag1", "Lag2", "Lag3")])  # Include Lag1, Lag2, and Lag3
train_y <- train_data$Direction

# Separate predictors for testing
test_x <- as.matrix(test_data[, c("Lag1", "Lag2", "Lag3")])  # Include Lag1, Lag2, and Lag3

# Perform k-NN with k = 27
predicted_direction_KNN <- knn(train = train_x, test = test_x, cl = train_y, k = 31)

# Create the confusion matrix
confusion_matrix_KNN <- table(Actual = test_data$Direction, Predicted = predicted_direction_KNN)

# Print the confusion matrix
print(confusion_matrix_KNN)