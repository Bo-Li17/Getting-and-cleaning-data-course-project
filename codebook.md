## Getting data
The dataset is downloaded from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Raw data description
The raw dataset includes the following files we concern:
* "features.txt": List of all features.  Normalized and bounded within [-1,1].
* "activity_labels.txt": Links the class labels with their activity name.
* "train/X_train.txt": Training set.
* "train/y_train.txt": Training labels correspond to activity_labels.
* "train/subject_train.txt": Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* "test/X_test.txt": Test set.
* "test/y_test.txt": Test labels.
* "test/subject_test.txt": Same as "train/subject_train.txt"

## Code process
* Read data files we need.
* Merge the training and testing data sets.
* Extract the subset we need.
* Rename each colunm by the features. Change the labels by the activities name.
* Split the data into groups by subject and activity, then apply the mean function on all groups the get the final data.

## Tidy data description
The tidy data contains 180 rows and 68 columns. Each row has averaged variables grouped by subject and activity. 

