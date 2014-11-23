# Getting and Cleaning Data Project

## Study design

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
    calculates the average of each variable by using aggregate function an agregating by subject and activity
	saves data as tidyData.txt using write.table



## CodeBook
### subject
    Id of the volunter (values range from 1 to 30)
### activity
    performed activity when measure was taken (possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
### TimeBodyAccelerationMean()-X
    mean value of tBodyAcc-mean()-X grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationMean()-Y
    mean value of tBodyAcc-mean()-Y grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationMean()-Z
    mean value of tBodyAcc-mean()-Z grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationStdDev()-X
    mean value of tBodyAcc-std()-X grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationStdDev()-Y
    mean value of tBodyAcc-std()-Y grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationStdDev()-Z
    mean value of tBodyAcc-std()-Z grouped by subject and activity description of original value in the original document
### TimeGravityAccelerationMean()-X
    mean value of tGravityAcc-mean()-X grouped by subject and activity description of original value in the original document
### TimeGravityAccelerationMean()-Y
    mean value of tGravityAcc-mean()-Y grouped by subject and activity description of original value in the original document
### TimeGravityAccelerationMean()-Z
    mean value of tGravityAcc-mean()-Z grouped by subject and activity description of original value in the original document
### TimeGravityAccelerationStdDev()-X
    mean value of tGravityAcc-std()-X grouped by subject and activity description of original value in the original document
### TimeGravityAccelerationStdDev()-Y
    mean value of tGravityAcc-std()-Y grouped by subject and activity description of original value in the original document
### TimeGravityAccelerationStdDev()-Z
    mean value of tGravityAcc-std()-Z grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationJerkMean()-X
    mean value of tBodyAccJerk-mean()-X grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationJerkMean()-Y
    mean value of tBodyAccJerk-mean()-Y grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationJerkMean()-Z
    mean value of tBodyAccJerk-mean()-Z grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationJerkStdDev()-X
    mean value of tBodyAccJerk-std()-X grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationJerkStdDev()-Y
    mean value of tBodyAccJerk-std()-Y grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationJerkStdDev()-Z
    mean value of tBodyAccJerk-std()-Z grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityMean()-X
    mean value of tBodyGyro-mean()-X grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityMean()-Y
    mean value of tBodyGyro-mean()-Y grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityMean()-Z
    mean value of tBodyGyro-mean()-Z grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityStdDev()-X
    mean value of tBodyGyro-std()-X grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityStdDev()-Y
    mean value of tBodyGyro-std()-Y grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityStdDev()-Z
    mean value of tBodyGyro-std()-Z grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityJerkMean()-X
    mean value of tBodyGyroJerk-mean()-X grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityJerkMean()-Y
    mean value of tBodyGyroJerk-mean()-Y grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityJerkMean()-Z
    mean value of tBodyGyroJerk-mean()-Z grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityJerkStdDev()-X
    mean value of tBodyGyroJerk-std()-X grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityJerkStdDev()-Y
    mean value of tBodyGyroJerk-std()-Y grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityJerkStdDev()-Z
    mean value of tBodyGyroJerk-std()-Z grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationMagnitudeMean()
    mean value of tBodyAccMag-mean() grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationMagnitudeStdDev()
    mean value of tBodyAccMag-std() grouped by subject and activity description of original value in the original document
### TimeGravityAccelerationMagnitudeMean()
    mean value of tGravityAccMag-mean() grouped by subject and activity description of original value in the original document
### TimeGravityAccelerationMagnitudeStdDev()
    mean value of tGravityAccMag-std() grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationJerkMagnitudeMean()
    mean value of tBodyAccJerkMag-mean() grouped by subject and activity description of original value in the original document
### TimeBodyAccelerationJerkMagnitudeStdDev()
    mean value of tBodyAccJerkMag-std() grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityMagnitudeMean()
    mean value of tBodyGyroMag-mean() grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityMagnitudeStdDev()
    mean value of tBodyGyroMag-std() grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityJerkMagnitudeMean()
    mean value of tBodyGyroJerkMag-mean() grouped by subject and activity description of original value in the original document
### TimeBodyAngularVelocityJerkMagnitudeStdDev()
    mean value of tBodyGyroJerkMag-std() grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationMean()-X
    mean value of fBodyAcc-mean()-X grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationMean()-Y
    mean value of fBodyAcc-mean()-Y grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationMean()-Z
    mean value of fBodyAcc-mean()-Z grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationStdDev()-X
    mean value of fBodyAcc-std()-X grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationStdDev()-Y
    mean value of fBodyAcc-std()-Y grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationStdDev()-Z
    mean value of fBodyAcc-std()-Z grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationMeanFreq()-X
    mean value of fBodyAcc-meanFreq()-X grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationMeanFreq()-Y
    mean value of fBodyAcc-meanFreq()-Y grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationMeanFreq()-Z
    mean value of fBodyAcc-meanFreq()-Z grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationJerkMean()-X
    mean value of fBodyAccJerk-mean()-X grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationJerkMean()-Y
    mean value of fBodyAccJerk-mean()-Y grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationJerkMean()-Z
    mean value of fBodyAccJerk-mean()-Z grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationJerkStdDev()-X
    mean value of fBodyAccJerk-std()-X grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationJerkStdDev()-Y
    mean value of fBodyAccJerk-std()-y grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationJerkStdDev()-Z
    mean value of fBodyAccJerk-std()-Z grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationJerkMeanFreq()-X
    mean value of fBodyAccJerk-meanFreq()-X grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationJerkMeanFreq-Y
    mean value of fBodyAccJerk-meanFreq()-Y grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationJerkMeanFreq()-Z
    mean value of fBodyAccJerk-meanFreq()-Z grouped by subject and activity description of original value in the original document
### FrequencyBodyAngularVelocityMean()-X
    mean value of fBodyGyro-mean()-X grouped by subject and activity description of original value in the original document
### FrequencyBodyAngularVelocityMean()-Y
    mean value of fBodyGyro-mean()-Y grouped by subject and activity description of original value in the original document
### FrequencyBodyAngularVelocityMean()-Z
    mean value of fBodyGyro-mean()-Z grouped by subject and activity description of original value in the original document
### FrequencyBodyAngularVelocityStdDev()-X
    mean value of fBodyGyro-std()-X grouped by subject and activity description of original value in the original document
### FrequencyBodyAngularVelocityStdDev()-Y
    mean value of fBodyGyro-std()-Y grouped by subject and activity description of original value in the original document
### FrequencyBodyAngularVelocityStdDev()-Z
    mean value of fBodyGyro-std()-Z grouped by subject and activity description of original value in the original document
### FrequencyBodyAngularVelocityMeanFreq()-X
    mean value of fBodyGyro-meanFreq()-X grouped by subject and activity description of original value in the original document
### FrequencyBodyAngularVelocityMeanFreq()-Y
    mean value of fBodyGyro-meanFreq()-Y grouped by subject and activity description of original value in the original document
### FrequencyBodyAngularVelocityMeanFreq()-Z
    mean value of fBodyGyro-meanFreq()-Z grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationMagnitudeMean()
    mean value of fBodyAccMag-mean() grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationMagnitudeStdDev()
    mean value of fBodyAccMag-std() grouped by subject and activity description of original value in the original document
### FrequencyBodyAccelerationMagnitudeMeanFreq()
    mean value of fBodyAccMag-meanFreq() grouped by subject and activity description of original value in the original document
### FrequencyBodyBodyAccelerationJerkMagnitudeMean()
    mean value of fBodyBodyAccJerkMag-mean() grouped by subject and activity description of original value in the original document
### FrequencyBodyBodyAccelerationJerkMagnitudeStdDev()
    mean value of fBodyBodyAccJerkMag-std() grouped by subject and activity description of original value in the original document
### FrequencyBodyBodyAccelerationJerkMagnitudeMeanFreq()
    mean value of fBodyBodyAccJerkMag-meanFreq() grouped by subject and activity description of original value in the original document
### FrequencyBodyBodyAngularVelocityMagnitudeMean()
    mean value of fBodyBodyGyroMag-mean() grouped by subject and activity description of original value in the original document
### FrequencyBodyBodyAngularVelocityMagnitudeStdDev()
    mean value of fBodyBodyGyroMag-std() grouped by subject and activity description of original value in the original document
### FrequencyBodyBodyAngularVelocityMagnitudeMeanFreq()
    mean value of fBodyBodyGyroMag-meanFreq() grouped by subject and activity description of original value in the original document
### FrequencyBodyBodyAngularVelocityJerkMagnitudeMean()
    mean value of fBodyBodyGyroJerkMag-mean() grouped by subject and activity description of original value in the original document
### FrequencyBodyBodyAngularVelocityJerkMagnitudeStdDev()
    mean value of fBodyBodyGyroJerkMag-std() grouped by subject and activity description of original value in the original document
### FrequencyBodyBodyAngularVelocityJerkMagnitudeMeanFreq()
    mean value of fBodyBodyGyroJerkMag-meanFreq() grouped by subject and activity description of original value in the original document

## 	for knowing what original value is please refer to features_info.txt 
### Only mean and std columns where selected for original data and subject and activity where added 
    All types and meaning of the valus can be check in features_info
	