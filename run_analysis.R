
#download project files and extracts it to a folder - Project UCI HAR
projectFile <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
dir.create('Project UCI HAR')
download.file(dataFile, 'UCI-HAR-dataset.zip', method='curl')
unzip('./UCI-HAR-dataset.zip')

#Merge the training and test sets into one data set
x_train <- read.table('./Project UCI HAR/train/X_train.txt')
x_test <- read.table('./Project UCI HAR/test/X_test.txt')
x_merged <- rbind(x_train, x_test)

y_train <- read.table('./Project UCI HAR/train/y_train.txt')
y_test <- read.table('./Project UCI HAR/test/y_test.txt')
y_merged <- rbind(y_train, y_test)

subj_train <- read.table('./Project UCI HAR/train/subject_train.txt')
subj_test <- read.table('./Project UCI HAR/test/subject_test.txt')
subj_merged <- rbind(subj_train, subj_test)

#Clear train and test objects
rm(x_train, x_test, y_train, y_test, subj_train, subj_test)

#Obtain the mean and std measurements from the features.txt and filter x_merged with it
feature <- read.table('./Project UCI HAR/features.txt')
mean_std <- grep("-mean\\(\\)|-std\\(\\)", feature[, 2])
mean_std_x <- x_merged[, mean_std]

#Apply clean feature names (case lowered and hyphen removed) to mean_std_x
names(mean_std_x) <- tolower(features[mean_std, 2])
names(mean_std_x) <- gsub("-", " ", names(mean_std_x))

#Apply clean activity names (case lowered and underscore removed) to y_merged
activity <- read.table('./Project UCI HAR/activity_labels.txt')
activity[, 2] <- tolower(as.character(activity[, 2]))
activity[, 2] <- gsub("_", " ", activity[, 2])