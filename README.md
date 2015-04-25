#Getting and Cleaning Data

This is a repository of all data and code written for the Getting and Cleaning Data topic from Coursera course (Johns Hopkins University).

##Course Project

How to:

1. Find all project-related materials in the UCI HAR Dataset directory

2. Unzip the source (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) into a folder on your local drive, mine is E:\r-workspace\

3. Copy run_analysis.R into E:\r-workspace\UCI HAR Dataset\

4. In RStudio, type: 

```
setwd("E:\\r-workspace\\UCI HAR Dataset\\")
source("run_analysis.R")
```

5. To read the data, type: 

```
data <- read.table("final_data_set_with_averages.txt") 
```

6. Data dimension: 180x69 

Subject: 30
Activities: 6

30x6 = 180 (rows)

First 3 columns contains these information:
1. Subject (numeric)
2. Activity Id (numeric)
3. Activity (character)

Row 4-69 (66 columns) contains the mean of the mean and standard deviation of these measured variables:

1. tBodyAcc-XYZ
2. tGravityAcc-XYZ
3. tBodyAccJerk-XYZ
4. tBodyGyro-XYZ
5. tBodyGyroJerk-XYZ
6. tBodyAccMag
7. tGravityAccMag
8. tBodyAccJerkMag
9. tBodyGyroMag
10.tBodyGyroJerkMag
11.fBodyAcc-XYZ
12.fBodyAccJerk-XYZ
13.fBodyGyro-XYZ
14.fBodyAccMag
15.fBodyAccJerkMag
16.fBodyGyroMag
17.fBodyGyroJerkMag

All in numeric fraction ranged [-1 to +1]

The repository contains the following files:

- 'README.txt'

- 'README.md'

- 'final_data_set_with_averages.txt' : Data set files that contains average of each measured variables for each Subject and Activity

- 'run_analysis.R' : The R script file to process the data

# The Algorithm 

These are the algorithm that applied in run_analysis.R script.

#### 1. Merges the training and the test sets to create one data set.
##### Load the experiment data
##### Load the subject data
##### Load the activity

#### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
##### Load the features
##### Extract variables that related to mean and std
##### Remove the ()

#### 3. Uses descriptive activity names to name the activities in the data set.
##### Load activities
##### Remove the _ character
##### Bind the column of activity names but keep the activity id 

#### 4. Appropriately labels the data set with descriptive activity names.
##### Combine the tables and save to final_data_set.txt file

#### 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.
##### Setup the necessary parameters to run the process
##### Start from the first row
###### Add subject at the 1st column
###### Add activity id at the 2nd column
###### Add activity name at the 3rd column
###### Find the average of each column for each s and a
###### Add the average result row from column 4 to the last column
##### Until the last row reached

##### Write the result to final_data_set_with_averages.txt file
