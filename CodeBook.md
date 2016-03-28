# Code Book for Tidy Data Set
## Project Description
This project was assigned as a course project for the Getting and Cleaning Coursera Course. The purpose of this project was to demonstrate my ability to collect, work with, and clean a data set. The ultimate goal was to prepare tidy data that can be used for later analysis.  

## Study Design and data processing 
### Raw Data Source 
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

### Raw Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Creating the tidy datafile
1) The data was downloaded from here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2) The individual training and test data sets were merged into one data set. 
3) The mean and standard deviation data sets were extracted from the merged data set for each measurement. 
4) The data was relabeled with more descriptive variable names
5) The new tidy datafile was created. 

## Description of the variables in the tidy datafile 
- "subject" is the number id of a particular volunteer studied
- "activity" describes the activity that volunteer was performing 
- "timeBodyAccelerometerMean()-X", "timeBodyAccelerometerMean()-Y" & "timeBodyAccelerometerMean()-Z" describes the mean of the three-dimensional time body domain Accelerometer signals 
- "timeBodyAccelerometerStdDev()-X", "timeBodyAccelerometerStdDev()-Y" & "timeBodyAccelerometerStdDev()-Z" describes the standard deviation of the three-dimensional time body domain Accelerometer signals 
- "timeGravityAccelerometerMean()-X", "timeGravityAccelerometerMean()-Y" & "timeGravityAccelerometerMean()-Z" describes the mean of the three-dimensional time gravity domain Accelerometer signals
- "timeGravityAccelerometerStdDev()-X", "timeGravityAccelerometerStdDev()-Y" & "timeGravityAccelerometerStdDev()-Z" describes the standard deviation of the three-dimensional time gravity domain Accelerometer signals
- "timeBodyAccelerometerJerkMean()-X", "timeBodyAccelerometerJerkMean()-Y" & "timeBodyAccelerometerJerkMean()-Z" describes the mean of the three-dimensional time body domain Accelerometer Jerk signals
- "timeBodyAccelerometerJerkStdDev()-X", "timeBodyAccelerometerJerkStdDev()-Y" & "timeBodyAccelerometerJerkStdDev()-Z" describes the standard deviation of the three-dimensional time body domain Accelerometer Jerk signals
- "timeBodyGyroMean()-X", "timeBodyGyroMean()-Y" & "timeBodyGyroMean()-Z" describes the mean of the three-dimensional time body domain Gyroscope signals 
- "timeBodyGyroStdDev()-X", "timeBodyGyroStdDev()-Y" & "timeBodyGyroStdDev()-Z" describes the standard deviation of the three-dimensional time body domain Gyroscope signals 
- "timeBodyGyroJerkMean()-X", "timeBodyGyroJerkMean()-Y" & "timeBodyGyroJerkMean()-Z" describes the mean of the three-dimensional time body domain Gyroscope jerk signals
- "timeBodyGyroJerkStdDev()-X", "timeBodyGyroJerkStdDev()-Y" & "timeBodyGyroJerkStdDev()-Z" describes the standard deviation of the three-dimensional time body domain Gyroscope jerk signals
- "timeBodyAccelerometerMagnitudeMean()" & "timeBodyAccelerometerMagnitudeStdDev()" describes the mean and standard deviation of the time body domain Accelerometer Magnitude signals 
- "timeGravityAccelerometerMagnitudeMean()" & "timeGravityAccelerometerMagnitudeStdDev()" describes the mean and standard deviation of the time gravity domain Accelerometer Magnitude signals 
- "timeBodyAccelerometerJerkMagnitudeMean()" & "timeBodyAccelerometerJerkMagnitudeStdDev()" describes the mean and standard deviation of the time body domain Accelerometer jerk Magnitude signals 
- "timeBodyGyroMagnitudeMean()" & "timeBodyGyroMagnitudeStdDev()" describes the mean and standard deviation of the time body domain Gyroscope Magnitude signals
- "timeBodyGyroJerkMagnitudeMean()" & "timeBodyGyroJerkMagnitudeStdDev()" describes the mean and standard deviation of the time body domain Gyroscope Magnitude jerk signals
- "frequencyBodyAccelerometerMean()-X", "frequencyBodyAccelerometerMean()-Y" & "frequencyBodyAccelerometerMean()-Z" describes the mean of the three-dimensional frequency body domain Accelerometer signals
- "frequencyBodyAccelerometerStdDev()-X", "frequencyBodyAccelerometerStdDev()-Y" & "frequencyBodyAccelerometerStdDev()-Z" describes the standard deviation of the three-dimensional frequency body domain Accelerometer signals
- "frequencyBodyAccelerometerJerkMean()-X", "frequencyBodyAccelerometerJerkMean()-Y" & "frequencyBodyAccelerometerJerkMean()-Z" describes the mean of the three-dimensional frequency body domain Accelerometer jerk signals
- "frequencyBodyAccelerometerJerkStdDev()-X", "frequencyBodyAccelerometerJerkStdDev()-Y" & "frequencyBodyAccelerometerJerkStdDev()-Z" describes the standard deviation of the three-dimensional frequency body domain Accelerometer jerk signals 
- "frequencyBodyGyroMean()-X", "frequencyBodyGyroMean()-Y" & "frequencyBodyGyroMean()-Z" describes the mean of the three-dimensional frequency body domain Gyroscope signals
- "frequencyBodyGyroStdDev()-X", "frequencyBodyGyroStdDev()-Y" & "frequencyBodyGyroStdDev()-Z" describes the standard deviation of the three-dimensional frequency body domain Gyroscope signals 
- "frequencyBodyAccelerometerMagnitudeMean()" & "frequencyBodyAccelerometerMagnitudeStdDev()" describes the mean and standard deviation of the frequency body domain Accelerometer Magnitude signals
- "frequencyBodyAccelerometerJerkMagnitudeMean()" & "frequencyBodyAccelerometerJerkMagnitudeStdDev()" describes the mean and standard deviation of the frequency body domain Accelerometer Magnitude jerk signals
- "frequencyBodyGyroMagnitudeMean()" & "frequencyBodyGyroMagnitudeStdDev()" describes the mean and standard deviation of the frequency body domain Gyroscope Magnitude signals
- "frequencyBodyGyroJerkMagnitudeMean()" & "frequencyBodyGyroJerkMagnitudeStdDev()" describes the mean and standard deviation of the frequency body domain Gyroscope Magnitude jerk signals

## Description of the variables in run_analysis script
