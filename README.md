#Getting and Cleaning Data

This is a repository of all data and code written for the Getting and Cleaning Data topic from Coursera course (Johns Hopkins University).

##Course Project

Find all project-related materials in the UCI HAR Dataset directory

Unzip the source (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) into a folder on your local drive, mine is E:\r-workspace\

Put run_analysis.R into E:\r-workspace\UCI HAR Dataset\

In RStudio, type: 

```
setwd("E:\\r-workspace\\UCI HAR Dataset\\")
source("run_analysis.R")
```

To read the data, type: 

```
data <- read.table("final_data_set_with_averages.txt") 
```

Data dimension: 180x69 

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

