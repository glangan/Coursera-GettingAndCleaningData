run_analysis <- function(){
  #Read text files
  x_train <- read.table('./train/X_train.txt')
  y_train <- read.table('./train/y_train.txt')
  
  x_test <- read.table('./test/X_test.txt')
  y_test <- read.table('./test/y_test.txt')
  
  #Read feature names from text and add to data; combine train and test data
  features <- read.table('features.txt')
  feature_names <- features[,2]
  
  data <- rbind(x_train, x_test)
  names(data) <- feature_names
  
  #Extract only mean and Std columns
  matches <- grep('mean\\(\\)|std\\(\\)', names(data))
  data <- data[,matches]
  
  #change column names
  names(data) <- gsub("^t", "Time", names(data))
  names(data) <- gsub("^f", "Freq", names(data))
  names(data) <- gsub("mean\\(\\)", "Mean", names(data))
  names(data) <- gsub("std\\(\\)", "StDev", names(data))
  
  #add columns for subjects and activities
  y <- rbind(y_train, y_test)[,1]
  train_subjects <- read.table('./train/subject_train.txt')
  test_subjects <- read.table('./test/subject_test.txt')
  
  subjects <- rbind(train_subjects, test_subjects)[,1]
  
  data <- cbind("Subject" = subjects, "Activity" = y, data)
  
  library('dplyr')
  
  #Group data by Subject and Activity, calculate average of all variables
  meandata <- data %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
  
  #Write data to file
  write.table(meandata, "means_data.txt", row.names = FALSE)
  
  return(meandata)
}