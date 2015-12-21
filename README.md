#Getting and Cleaning Data: Course Project
##Human Activity Recognition Using Smartphones Dataset

The initial data set was transformed to obtain a tidy dataset. The train and test data sets have been merged to form a new dataset on which the tidy dataset is based. Only the variables containing means and standard deviation are kept. The variables are then grouped by each activity and subject. The average for each pair is given in means_data.txt.

If the initial dataset is placed in the same directory as the script 'run_analysis.R', it can be run to obtain the tidy dataset. The resulting dataset is given in 'means_data.txt'. The details of all the variables and the transformations are given in Code Book.
