Codebook for Getting and Cleaning Data Week 4 Course Project
----------

Relevant data frames in the run_analysis.R:

x_merged - contains the merged tables of x_train andd x_test files
y_merged - contains the merged tables of y_train andd y_test files
subj_merged - contains the merged tables of subject_train andd subject_test files

> rbind was used to merge the text files indicated above.

feature - was used to store and eventually apply the matching feature description to the variables in x_merged.
activity - was used to store and eventually apply the matching activity description to the observations in y_merged.

> The feature names for the columns in the x_merged data set are from the original project file feature.txt.
> The activity names applied to the y_merged data set are from the original project file activity_label.txt.
> Both are transformed to lower case and any hyphen and underscore from the original names were replaced by a space for readability.

final_merge - contains the tidy data set from all three data frames discussed above
> cbind was used to combine all the transformed data frames discussed above

final_merge_ave - contains the tidy data set containing the average of all variables by activity and subject
> aggregate was used to compute for the mean of the different variables by activity and subject

