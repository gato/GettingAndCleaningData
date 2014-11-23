# Coursera: Getting and Cleaning Data Course Project
# Nov 22 

# 0 Read data (asumming working directory has the Samsung Data )
X_train <- read.table("train/X_train.txt", header = FALSE)
X_test <- read.table("test/X_test.txt", header = FALSE)

subject_train <- read.table("train/subject_train.txt", header = FALSE)
subject_test <- read.table("test/subject_test.txt", header = FALSE)

y_train <- read.table("train/y_train.txt", header = FALSE)
y_test <- read.table("test/y_test.txt", header = FALSE)

features <- read.table("features.txt", header = FALSE)
activity_labels <- read.table("activity_labels.txt", header = FALSE)

# 1 Merges the training and the test sets to create one data set.
X <- rbind(X_train, X_test)
subject <- rbind(subject_train, subject_test)
y <- rbind(y_train, y_test)

# 1.1 this is the part of step 4 but i need to do for filtering standard deviation 
#     and mean columns 
colnames(X) <- features[,2]

# 2 Extracts only the measurements on the mean and standard deviation 
#   for each measurement. 
filtered_X <- X[grepl("^.+([m|M]ean|std).*", features$V2)]

# 3 Uses descriptive activity names to name the activities in the data set
descriptive_activities <- sapply(y[,1], function(x) {as.character(activity_labels[x,2])})
filtered_X["activity"] <- descriptive_activities

# 4 Appropriately labels the data set with descriptive variable names. 
# expand:
#   Acc -> Acceleration
#   Mag -> Magnitude
#   -std -> StdDev
#   Gyro -> AngularVelocity
#   -mean -> Mean
#   ^t (starts with t) -> Time
#   ^f -(starts with f) -> Frequency

cols <- colnames(filtered_X)

for (i in 1:length(cols)) 
{
  cols[i] = gsub("Acc","Acceleration",cols[i], ignore.case = TRUE)
  cols[i] = gsub("Mag","Magnitude",cols[i], ignore.case = TRUE)
  cols[i] = gsub("-std","StdDev",cols[i],ignore.case = TRUE)
  cols[i] = gsub("Gyro","AngularVelocity",cols[i], ignore.case = TRUE)
  cols[i] = gsub("-mean","Mean",cols[i],ignore.case = TRUE)
  cols[i] = gsub("^t","Time",cols[i],ignore.case = TRUE)
  cols[i] = gsub("angle.t","angle(Time",cols[i],ignore.case = TRUE)
  cols[i] = gsub("^f","Frequency",cols[i],ignore.case = TRUE)
};
colnames(filtered_X) <- cols

# 5 From the data set in step 4, creates a second, independent tidy data set 
#   with the average of each variable for each activity and each subject.

# 5.1 add subjects to dataframe
filtered_X["subject"] <- subject[,1]

# 5.2 agregate data by subject and activity
tidy_data <- aggregate(filtered_X[1:86], by=list(subject=filtered_X$subject,activity=filtered_X$activity), FUN = mean)

# Export the tidyData set 
write.table(tidy_data, './tidyData.txt',row.names = FALSE);
