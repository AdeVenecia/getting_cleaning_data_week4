##Getting and Cleaning Data Week 4 Project

###The repository contains the following files:

1. run_analysis.R that does the following
	1. Downloads and extracts the datazip file.
	2. Merges the training, test and subject sets to create one data for set each of the categories.
	3. Extracts only the measurements on the mean and standard deviation for each measurement from one of the data sets created in step 3 (x_merged). 
	4. Labels the data set with descriptive variable names extracted from the features.txt. 	
	5. Applies the descriptive activity names to the corresponding activity number in the data set y_merged.
	6. Create a data set with the tidy data created from steps 1 to 4.
	7. From the data set in step 5, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	>Comments for each section of the run_analysis.R are given 

2. Two tidy data files, namely:
	1.final_merge.txt which contains the entire tidy data set from the merged done by  run_analysis.R  
	2.final_merge_ave.txt which contains the average of each variable for each activity and each subject in the final_merge data set.

3. A Codebook.md that contains the relevant varaibles and used functions for the run_analysis.R.
