# 1. Merges the training and the test sets to create one data set.

# Load the experiment data
X <- rbind(read.table("train/X_train.txt"), read.table("test/X_test.txt"))
# Load the subject data
S <- rbind(read.table("train/subject_train.txt"), read.table("test/subject_test.txt"))
# Load the activity
Y <- rbind(read.table("train/y_train.txt"), read.table("test/y_test.txt"))

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

# Load the features
features <- read.table("features.txt")
# Extract variables that related to mean and stdev (those with -mean() and -std())
varsIndex <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, varsIndex]
names(X) <- features[varsIndex, 2]
# Remove the ()
names(X) <- gsub("\\(|\\)", "", names(X))

# 3. Uses descriptive activity names to name the activities in the data set.

# Load activities
activityLabels <- read.table("activity_labels.txt")
# Remove the _ character
activityLabels[, 2] = gsub("_", " ", activityLabels[, 2])
# Bind the column of activity names but keep the activity id 
Y <- cbind(Y, Y[,1])
Y[,2] = activityLabels[Y[,1], 2]
names(Y) <- c("ActivityId", "Activity")

# 4. Appropriately labels the data set with descriptive activity names.

# Combine the tables and save to final_data_set.txt file
names(S) <- "Subject"
dataSet <- cbind(S, Y, X)

# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.

# Setup the necessary parameters to run the process
# Find all subjects, remove the duplication
allSubjects = unique(S)[,1]
# Get the total amount of subjects
numSubjects = length(allSubjects)
# Get the total amount of activities
numActivities = length(activityLabels[,1])
# Set the total number of columns, make it the same with dataSet total columns
numCols = dim(dataSet)[2]
# Prepare the rows
result = dataSet[1:(numSubjects*numActivities), ]

# Start from the first row
row = 1
for (s in 1:numSubjects) {
  for (a in 1:numActivities) {
    # Add subject at the 1st column
    result[row, 1] = uniqueSubjects[s]
    # Add activity id at the 2nd column
    result[row, 2] = a
    # Add activity name at the 3rd column
    result[row, 3] = activityLabels[a, 2]
    # Find the average of each column for each s and a
    tmp <- sapply(dataSet[(dataSet$Subject==s & dataSet$ActivityId==a),4:ncol(dataSet)], mean)
    # Add the average result row from column 4 to the last column
    result[row, 4:numCols] <- tmp[1:length(tmp)]
    row = row+1
  }
}

# Write the result to final_data_set_with_averages.txt file
write.table(result, "final_data_set_with_averages.txt", row.name=FALSE)