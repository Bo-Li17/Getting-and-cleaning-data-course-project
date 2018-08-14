# Before running this code, set the working directory to where 
# the data file "UCI HAR Dataset" locates.

# We are using the dplyr package.
library(dplyr)

########## read data #####################
#read training set
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#read test set
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#read features
features <- read.table("./UCI HAR Dataset/features.txt")

#read activity_labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")


##### 1.Merges the training and the test sets to create one data set.
X <- rbind(X_train , X_test)
Y <- rbind(Y_train , Y_test)
subject <- rbind(subject_train, subject_test)

##### 2.Extracts only the measurements on the mean and standard deviation for each measurement.
extracted_vector <- grep("mean\\(\\)|std\\(\\)", features$V2) 
X <- select(X, extracted_vector)

##### 3.Uses descriptive activity names to name the activities in the data set. 
activity <- factor(Y$V1, labels = activity_labels$V2)
Y$V1 <- activity
colnames(Y) <- "activity"

##### 4.Appropriately labels the data set with descriptive variable names.
colnames(X) <- filter(features,grepl("mean\\(\\)|std\\(\\)", features$V2)  )$V2
colnames(subject) <- "subject"

##### 5.Creates a tidy data set with the average of each variable for each activity and each subject.
tidydata <- cbind(Y, subject, X) %>% 
       group_by(activity, subject) %>% 
       summarise_all(funs(mean))

##### Export tidy data ##########################
write.table(tidydata, "./UCI HAR Dataset/tidydata.txt", row.names = FALSE)

