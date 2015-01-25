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

The variable names in the tidy data set are:
 [1] "tBodyAcc.mean...X"               "tBodyAcc.mean...Y"               "tBodyAcc.mean...Z"              
 [4] "tBodyAcc.std...X"                "tBodyAcc.std...Y"                "tBodyAcc.std...Z"               
 [7] "tGravityAcc.mean...X"            "tGravityAcc.mean...Y"            "tGravityAcc.mean...Z"           
[10] "tGravityAcc.std...X"             "tGravityAcc.std...Y"             "tGravityAcc.std...Z"            
[13] "tBodyAccJerk.mean...X"           "tBodyAccJerk.mean...Y"           "tBodyAccJerk.mean...Z"          
[16] "tBodyAccJerk.std...X"            "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"           
[19] "tBodyGyro.mean...X"              "tBodyGyro.mean...Y"              "tBodyGyro.mean...Z"             
[22] "tBodyGyro.std...X"               "tBodyGyro.std...Y"               "tBodyGyro.std...Z"              
[25] "tBodyGyroJerk.mean...X"          "tBodyGyroJerk.mean...Y"          "tBodyGyroJerk.mean...Z"         
[28] "tBodyGyroJerk.std...X"           "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"          
[31] "tBodyAccMag.mean.."              "tBodyAccMag.std.."               "tGravityAccMag.mean.."          
[34] "tGravityAccMag.std.."            "tBodyAccJerkMag.mean.."          "tBodyAccJerkMag.std.."          
[37] "tBodyGyroMag.mean.."             "tBodyGyroMag.std.."              "tBodyGyroJerkMag.mean.."        
[40] "tBodyGyroJerkMag.std.."          "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"              
[43] "fBodyAcc.mean...Z"               "fBodyAcc.std...X"                "fBodyAcc.std...Y"               
[46] "fBodyAcc.std...Z"                "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"          
[49] "fBodyAcc.meanFreq...Z"           "fBodyAccJerk.mean...X"           "fBodyAccJerk.mean...Y"          
[52] "fBodyAccJerk.mean...Z"           "fBodyAccJerk.std...X"            "fBodyAccJerk.std...Y"           
[55] "fBodyAccJerk.std...Z"            "fBodyAccJerk.meanFreq...X"       "fBodyAccJerk.meanFreq...Y"      
[58] "fBodyAccJerk.meanFreq...Z"       "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"             
[61] "fBodyGyro.mean...Z"              "fBodyGyro.std...X"               "fBodyGyro.std...Y"              
[64] "fBodyGyro.std...Z"               "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"         
[67] "fBodyGyro.meanFreq...Z"          "fBodyAccMag.mean.."              "fBodyAccMag.std.."              
[70] "fBodyAccMag.meanFreq.."          "fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.std.."      
[73] "fBodyBodyAccJerkMag.meanFreq.."  "fBodyBodyGyroMag.mean.."         "fBodyBodyGyroMag.std.."         
[76] "fBodyBodyGyroMag.meanFreq.."     "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.std.."     
[79] "fBodyBodyGyroJerkMag.meanFreq.."

You can find a description of these variables in the original data descriptions.
**Important:** Some characters have been replaced with respect to the orginal data set to ensure uniqueness. Dots in the above names can be other punctuation marks in the orinal data set.

**Units:** The variables starting with t are in the time domain (seconds). The variables starting with f are in the frequency domain (Hz) since a fouries transform has been applied to the signals.
