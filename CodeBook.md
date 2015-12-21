#Code Book

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.


Information about the original dataset:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data was obtained from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



###Steps taken to clean and transform the data:
- Read data from train and test folder and combine their X (Variables) and Y (Labels) as columns of the dataset
- Combine the variables from train and text as rows of the dataset
- Read feature names from 'features.txt' and add to the dataset
- Subset the data so that it contains the variables (columns) of only the mean and standard deviation of observation
- Clean the column names: add 'Time' and 'Freq' in front of the corresponding variables, remove '()' from variables
- Add columns and column names for Activity and Subjects
- Group data by Subject and Activity, calculate average for all variables. This forms the final dataset
- Output the data in a text file.


###Variables
- Subject - Integer ID for each subject
- Activity - Integer identifier for each activity
  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING

Each variable accounts for the average for each pair of Subject and Activity.
- Mean of Time body acceleration along X, Y and Z axes
  - TimeBodyAcc-Mean-X
  - TimeBodyAcc-Mean-Y
  - TimeBodyAcc-Mean-Z

- Standard deviation of Time body acceleration along X, Y and Z axes
  - TimeBodyAcc-Mean-X
  - TimeBodyAcc-Mean-Y
  - TimeBodyAcc-Mean-Z

- Mean of Time gravity acceleration along X, Y and Z axes
  - TimeGravityAcc-Mean-X
  - TimeGravityAcc-Mean-Y
  - TimeGravityAcc-Mean-Z

- Standard deviation of Time gravity acceleration along X, Y and Z axes
  - TimeGravityAcc-StDev-X
  - TimeGravityAcc-StDev-Y
  - TimeGravityAcc-StDev-Z

- Mean of time body acceleration jerk along X, Y and Z axes
  - TimeBodyAccJerk-Mean-X
  - TimeBodyAccJerk-Mean-Y
  - TimeBodyAccJerk-Mean-Z

- Standard deviation of Time gravity acceleration jerk along X, Y and Z axes
  - TimeBodyAccJerk-StDev-X
  - TimeBodyAccJerk-StDev-Y
  - TimeBodyAccJerk-StDev-Z

- Mean of time body gyroscope along X, Y and Z axes
  - TimeBodyGyro-Mean-X
  - TimeBodyGyro-Mean-Y
  - TimeBodyGyro-Mean-Z

- Standard deviation of Time body gyroscope along X, Y and Z axes
  - TimeBodyGyro-StDev-X
  - TimeBodyGyro-StDev-Y
  - TimeBodyGyro-StDev-Z

- Mean of time body gyroscope jerk along X, Y and Z axes
  - TimeBodyGyroJerk-Mean-X
  - TimeBodyGyroJerk-Mean-Y
  - TimeBodyGyroJerk-Mean-Z

- Standard deviation of Time body gyroscope jerk along X, Y and Z axes
  - TimeBodyGyroJerk-StDev-X
  - TimeBodyGyroJerk-StDev-Y
  - TimeBodyGyroJerk-StDev-Z

- Mean of time body acceleration magnitude
  - TimeBodyAccMag-Mean

- Standard deviation of time body acceleration magnitude
  - TimeBodyAccMag-StDev

- Mean of time gravity acceleration magnitude
  - TimeGravityAccMag-Mean

- Standard deviation of time gravity acceleration magnitude
  - TimeGravityAccMag-StDev

- Mean of time body acceleration jerk magnitude
  - TimeBodyAccJerkMag-Mean

- Standard deviation of time body acceleration jerk magnitude
  - TimeBodyAccJerkMag-StDev

- Mean of time body gyroscope magnitude
  - TimeBodyGyroMag-Mean

- Standard deviation of time body gyroscope magnitude
  - TimeBodyGyroMag-StDev

- Mean of time body gyroscope jerk magnitude
  - TimeBodyGyroJerkMag-Mean

- Standard deviation of time body gyroscope jerk magnitude
  - TimeBodyGyroJerkMag-StDev

- Mean of frequency body acceleration along X, Y and Z axes
  - FreqBodyAcc-Mean-X
  - FreqBodyAcc-Mean-Y
  - FreqBodyAcc-Mean-Z

- Standard deviation of frequency body acceleration along X, Y and Z axes
  - FreqBodyAcc-StDev-X
  - FreqBodyAcc-StDev-Y
  - FreqBodyAcc-StDev-Z

- Mean of frequency body acceleration jerk along X, Y and Z axes
  - FreqBodyAccJerk-Mean-X
  - FreqBodyAccJerk-Mean-Y
  - FreqBodyAccJerk-Mean-Z

- Standard deviation of frequency body acceleration jerk along X, Y and Z axes
  - FreqBodyAccJerk-StDev-X
  - FreqBodyAccJerk-StDev-Y
  - FreqBodyAccJerk-StDev-Z

- Mean of frequency body gyroscope along X, Y and Z axes
  - FreqBodyGyro-Mean-X
  - FreqBodyGyro-Mean-Y
  - FreqBodyGyro-Mean-Z

- Standard deviation of frequency body gyroscope along X, Y and Z axes
  - FreqBodyGyro-StDev-X
  - FreqBodyGyro-StDev-Y
  - FreqBodyGyro-StDev-Z

- Mean of frequency body acceleration magnitude
  - FreqBodyAccMag-Mean

- Standard deviation of frequency body acceleration magnitude
  - FreqBodyAccMag-StDev

- Mean of frequency body acceleration jerk magnitude
  - FreqBodyBodyAccJerkMag-Mean

- Standard deviation of frequency body acceleration jerk magnitude
  - FreqBodyBodyAccJerkMag-StDev

- Mean of frequency body gyroscope magnitude
  - FreqBodyBodyGyroMag-Mean

- Standard deviation of frequency body gyroscope magnitude
  - FreqBodyBodyGyroMag-StDev

- Mean of frequency body gyroscope jerk magnitude
  - FreqBodyBodyGyroJerkMag-Mean

- Standard deviation of frequency body gyroscope jerk magnitude
  - FreqBodyBodyGyroJerkMag-StDev
