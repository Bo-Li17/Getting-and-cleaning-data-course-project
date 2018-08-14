## Getting data
The dataset is downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Variable description
* X_train: Training set data, each colunm is a numeric vector, the values are normalized and bounded within [-1,1]
* Y_train: Training labels correspond to activity_labels, values are intger between 1 and 6.
* subject_train: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* X_test: Test set data, each colunm is a numeric vector, the values are normalized and bounded within [-1,1]
* Y_test: Test labels correspond to activity_labels, values are intger between 1 and 6.
* subject_test: Similar to subject_train.
* features:  A 561-row data frame. The first colunm are the indexes(integer) and the second are the feature names(character).
* activity_labels: A (6,2) data fram. The second colunm contains the activity names(character) and the first colunm is their correspond number(integer).
* X: The merged data of X_train and X_test.
* Y: The merged data of Y_train and Y_test.
* subject: The merged data of subject_train and subject_test.
* tidydata: The final data we need.

## Code process
* Read data files we need.
* Merge the training and testing data sets.
* Extract the subset we need.
* Rename each colunm by the features. Change the labels by the activities name.
* Split the data into groups by subject and activity, then apply the mean function on all groups the get the final data.

## Tidy data description
The tidy data contains 180 rows and 68 columns. Each row has averaged variables grouped by subject and activity. 

