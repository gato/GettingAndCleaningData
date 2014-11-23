# Read me for run_analysis.R

This script generates tidy data based on data collected from the accelerometers 
from the Samsung Galaxy S smartphone the original data can be found in: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
description for the original data can be found in:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

For Run_analysis script to work the UCI zip file must be expanded and the R script must be 
placed where the data is (inside "UCI HAR Dataset" directory)

After that for running the script in R or RStudio set the working directory where The R file is
and just source it: 
	source("run_analysis.R")

This will run the script and generate a file tidyData.txt as result. (this process can take some time as original data files are big)

The script has been documented and do the 5 steps required in the asignment 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

the script does not require any external libraries

check the CodeBook.md for information about data and transformations
