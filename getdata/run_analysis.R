# Script to aggregate and clean the data:

setwd("/Users/michem/Documents/Scripts/R/getdata/")

library(dplyr)

# Merge the training and the test sets to create one data set.
# For this we need the test and train data sets for the variables, activities and subjects
x_test <- read.table('test/X_test.txt')
x_train <- read.table('train/X_train.txt')

y_test <- read.table('test/y_test.txt', col.names = c('activity.id'))
y_train <- read.table('train/y_train.txt', col.names = c('activity.id'))

subject_test <- read.table('test/subject_test.txt', col.names = c('subject'))
subject_train <- read.table('train/subject_train.txt', col.names = c('subject'))

# Combine the rows of the testing and training data sets
x <- rbind(x_test, x_train)
y <- rbind(y_test, y_train)
subject <- rbind(subject_test, subject_train)


# Extracts only the measurements on the mean and standard deviation for each measurement.

# variable names are available in the features file 
features <- read.table('features.txt', col.names = c('id', 'description'))
features$description <- make.names(features$description, unique=TRUE)

# We do this by looking for the column ideas of the features that have 'mean' or 'std' in the name
mean.std.column.ids <- features$id[grepl('mean', features$description) | grepl('std', features$description) ]
x <- select(x, mean.std.column.ids)

# Appropriately labels the data set with descriptive variable names.
names(x) <- features$description[mean.std.column.ids]

# Uses descriptive activity names to name the activities in the data set
activity.labels <- read.table('activity_labels.txt', col.names = c('activity.id', 'activity.description'))

# When merging tables, the ordering is lost, so introducing a temp variable to rearrange afterwards
y$tempId <- 1:nrow(y)
y <- select(arrange(merge(y, activity.labels, by="activity.id"), tempId), 3)

# x data set with subject id and activity description
UCI.HAR <- cbind(subject, y, x)

# Create an independent tidy data set
# with the average of each variable for each activity and each subject.
tidy_set <- group_by(UCI.HAR, subject, activity.description) %>% summarise_each(funs(mean)) 
write.table(tidy_set, file = 'UCI_HAR_tidy_summary.txt', row.names = FALSE)
