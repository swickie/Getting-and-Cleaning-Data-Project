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
### Subject
