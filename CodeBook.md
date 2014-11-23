# Getting and Cleaning Data Project

## From the original data source 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For detailed information about original features check features.txt and features_info.txt from input data

### Step 0: readed all files into R dataframes:
   
    Used read.table and named variables using the readed filename


### Step 1. Merge the training and the test sets to create one data set.

	Used rbind to concat test and training data together (for x, y and subject files)
    Added features as column names in dataframe X to be able to filter columns by name

### Step 2. Extract only the measurements on the mean and standard deviation for each measurement. 
    Used a regular expression to test column names and select only "mean" and "std" columns


### Step 3. Use descriptive activity names to name the activities in the data set
    Used sapply to replace numeric activity found in "y" file with the string value of it (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)


### Step 4. Appropriately label the data set with descriptive activity names.
	Use gsub function for remplacing part of columns name: 
	 changes:
	   	Acc -> Acceleration
   		Mag -> Magnitude
   		-std -> StdDev
   		Gyro -> AngularVelocity
   		-mean -> Mean
   		^t (starts with t) -> Time
   		^f -(starts with f) -> Frequency

### Step 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. 
    calculates the average of each variable by using aggregate function an agregating by subject y activity
	saves data as tidyData.txt using write.table


## 	for knowing what a value is please refer to features_info.txt 
### Only mean and std columns where selected for original data and subject and activity where added 
    All types and meaning of the valus can be check in features_info
	