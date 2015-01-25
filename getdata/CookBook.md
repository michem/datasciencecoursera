# CodeBook.md
 
## Intro
  
This programming assignment used the data collected from the accelerometers from a smartphone.

The datasets can be obtained through the following link: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The dataset contains data for 30 different subjects, participating in 6 activities:

* Laying
* Sitting
* Standing
* Walking
* Walking downstairs
* Walking upstairs

## Data used

The following text files from this dataset were used when created the final tidied dataset:

* `subject_train.txt` and `subject_test.txt`: TIDs of the subject
* `y_train.txt` and `y_test.txt`:IDs of the activity
* `X_train.txt` and `X_test.txt`: 562 features measured for the activities
* `features.txt`: This text file contains a description of each of the 562 features
* `activity_labels.txt`: This text file contains a legend of activities

## Variables included with tidied dataset

Of all the measurements, only the mean and standard deviations were selected. For each subject and activity, the mean of all measurements was calculated.

