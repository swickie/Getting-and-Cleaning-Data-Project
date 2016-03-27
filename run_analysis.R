#This script is designed to analyze the data downloaded from 
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
#This script will do the following: 
# 1. Merge the training and the test sets to create one data set. 
# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
# 3. Use descriptive activity names to name the activities in the data set. 
# 4. Approprivately label the data set with descriptive variable names. 
# 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject. 

##############################################################################

# 1. Merge the training and the test sets to create one data set.

# Read the data in main folder
activityLabels <- read.table("./activity_labels.txt", header = FALSE)
features <- read.table("./features.txt", header = FALSE)

# Read the data from training set
subjectTrain <- read.table("./train/subject_train.txt", header = FALSE)
xTrain <- read.table("./train/x_train.txt", header = FALSE)
yTrain <- read.table("./train/y_train.txt", header = FALSE)

# Read the data from the test set
subjectTest <- read.table("./test/subject_test.txt", header = FALSE)
xTest <- read.table("./test/x_test.txt", header = FALSE)
yTest <- read.table("./test/y_test.txt", header = FALSE)

# Merge Subject data
dataSubject <- rbind(subjectTrain, subjectTest)

# Merge Activity data
dataActivity <- rbind(yTrain, yTest)

# Merge Feature data
dataFeatures <- rbind(xTrain, xTest)

# Give variables column names
names(dataSubject) <- c("subject")
names(dataActivity) <- c("activity")
names(dataFeatures) <- features$V2

# Merge all data sets
dataMerged <- cbind(dataSubject, dataActivity)
dataComplete <- cbind(dataFeatures, dataMerged)

##############################################################################

# 2. Extract only the measurements on the mean and standard deviation for each measurement. 

# Create vector that pulls revelant columns
dataFeatures_subset <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]

# Extract only relevant columns
dataComplete_subset <- c(as.character(dataFeatures_subset), "subject", "activity")
dataComplete <- subset(dataComplete, select = dataComplete_subset)

##############################################################################

# 3. Use descriptive activity names to name the activities in the data set. 

# Merge activity labels
dataComplete$activity <- factor(dataComplete$activity)
dataComplete$activity <- factor(dataComplete$activity, labels = as.character(activityLabels$V2))

##############################################################################

# 4. Approprivately label the data set with descriptive variable names.

# Fix variable names
names(dataComplete) <- gsub("-mean", "Mean", names(dataComplete))
names(dataComplete) <- gsub("-std", "StdDev", names(dataComplete))
names(dataComplete) <- gsub("^t", "time", names(dataComplete))
names(dataComplete) <- gsub("^f", "frequency", names(dataComplete))
names(dataComplete) <- gsub("Acc", "Accelerometer", names(dataComplete))
names(dataComplete) <- gsub("Mag", "Magnitude", names(dataComplete))
names(dataComplete) <- gsub("BodyBody", "Body", names(dataComplete))

##############################################################################

# 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject. 

# load plyr library
library(plyr)

# Create table that only pulls relevant variables
dataTidy <- aggregate(. ~subject + activity, dataComplete, mean)
dataTidy <- dataTidy[order(dataTidy$subject, dataTidy$activity),]

# Export dataTidy 
write.table(dataTidy, file = "tidydata.txt", row.name = FALSE)

# End!