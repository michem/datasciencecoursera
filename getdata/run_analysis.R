
library(dplyr)
setwd('C:/Users/tmichem/Documents/R/coursera/UCI HAR Dataset')

# Merges the training and the test sets to create one data set.
x_test <- read.table('test/X_test.txt')
x_train <- read.table('train/X_train.txt')

y_test <- read.table('test/y_test.txt')
y_train <- read.table('train/y_train.txt')

subject_test <- read.table('test/subject_test.txt')
subject_train <- read.table('train/subject_train.txt')

x <- rbind(x_test, x_train)
y <- rbind(y_test, y_train)
subject <- rbind(subject_test, subject_train)


# Appropriately labels the data set with descriptive variable names.
features <- read.table('features.txt', col.names = c('id', 'description'))
## This is done in step 4 in the assignment but it simplifies the solution to name first
names(x) <- features$description

# Extracts only the measurements on the mean and standard deviation for each measurement.

mean.std.column.ids <- features$id[grepl('mean\\(\\)', features$description) | grepl('std\\(\\)', features$description) ]

x <- select(x, mean.std.column.ids)

# Uses descriptive activity names to name the activities in the data set
activity.labels <- read.table('activity_labels.txt', col.names = c('id', 'description'))

y <- select(merge(y,activity.labels,by=1 ,all = TRUE), 2)


UCI.HAR <- cbind(subject, y, x)
View(UCI.HAR)


# Create an independent tidy data set
# with the average of each variable for each activity and each subject.