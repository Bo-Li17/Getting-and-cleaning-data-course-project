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


## Tidy data description
The tidy data contains 180 rows and 68 columns. Each row has averaged variables grouped by subject and activity.

