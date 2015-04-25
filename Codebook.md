#Coursera "Getting and Cleaning The Data" Project Code Book

Source of the original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Subject:

There are 30 subjects involved on this experiment

###Activities:

Each subject are tested with these 6 activities applied.

ID DESCRIPTION
 1 WALKING
 2 WALKING UPSTAIRS
 3 WALKING DOWNSTAIRS
 4 SITTING
 5 STANDING
 6 LAYING

###Variables that have mean and standard deviation measured:

tBodyAcc-X
tBodyAcc-Y
tBodyAcc-Z
tGravityAcc-X
tGravityAcc-Y
tGravityAcc-Z
tBodyAccJerk-X
tBodyAccJerk-Y
tBodyAccJerk-Z
tBodyGyro-X
tBodyGyro-Y
tBodyGyro-Z
tBodyGyroJerk-X
tBodyGyroJerk-Y
tBodyGyroJerk-Z
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-X
fBodyAcc-Y
fBodyAcc-Z
fBodyAccJerk-X
fBodyAccJerk-Y
fBodyAccJerk-Z
fBodyGyro-X
fBodyGyro-Y
fBodyGyro-Z
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

All in numeric fraction, value ranged [-1 to +1]

###Data dimension: 180x69 

Subject: 30
Activities: 6

30x6 = 180 (rows)

There are total 69 columns.

First 3 columns contains these information:
1. Subject (numeric)
2. Activity Id (numeric)
3. Activity (character)

Row 4-69 (66 columns) contains the mean of the mean and standard deviation of the measured variables.
