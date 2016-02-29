---
title: "CodeBook"
output: html_document
---

Identifiers

subject - Subject Identifier
activity - Activity performed when the corresponding measurements were taken
Measurements

                                             
"TimeBodyAccelerometer-Mean-X"                             
 [5] "TimeBodyAccelerometer-Mean-Y"                              "TimeBodyAccelerometer-Mean-Z"                             
 [7] "TimeBodyAccelerometer-StandardDeviation-X"                 "TimeBodyAccelerometer-StandardDeviation-Y"                
 [9] "TimeBodyAccelerometer-StandardDeviation-Z"                 "TimeGravityAccelerometer-Mean-X"                          
[11] "TimeGravityAccelerometer-Mean-Y"                           "TimeGravityAccelerometer-Mean-Z"                          
[13] "TimeGravityAccelerometer-StandardDeviation-X"              "TimeGravityAccelerometer-StandardDeviation-Y"             
[15] "TimeGravityAccelerometer-StandardDeviation-Z"              "TimeBodyAccelerometerJerk-Mean-X"                         
[17] "TimeBodyAccelerometerJerk-Mean-Y"                          "TimeBodyAccelerometerJerk-Mean-Z"                         
[19] "TimeBodyAccelerometerJerk-StandardDeviation-X"             "TimeBodyAccelerometerJerk-StandardDeviation-Y"            
[21] "TimeBodyAccelerometerJerk-StandardDeviation-Z"             "TimeBodyGyroscope-Mean-X"                                 
[23] "TimeBodyGyroscope-Mean-Y"                                  "TimeBodyGyroscope-Mean-Z"                                 
[25] "TimeBodyGyroscope-StandardDeviation-X"                     "TimeBodyGyroscope-StandardDeviation-Y"                    
[27] "TimeBodyGyroscope-StandardDeviation-Z"                     "TimeBodyGyroscopeJerk-Mean-X"                             
[29] "TimeBodyGyroscopeJerk-Mean-Y"                              "TimeBodyGyroscopeJerk-Mean-Z"                             
[31] "TimeBodyGyroscopeJerk-StandardDeviation-X"                 "TimeBodyGyroscopeJerk-StandardDeviation-Y"                
[33] "TimeBodyGyroscopeJerk-StandardDeviation-Z"                 "TimeBodyAccelerometerMagnitude-Mean"                      
[35] "TimeBodyAccelerometerMagnitude-StandardDeviation"          "TimeGravityAccelerometerMagnitude-Mean"                   
[37] "TimeGravityAccelerometerMagnitude-StandardDeviation"       "TimeBodyAccelerometerJerkMagnitude-Mean"                  
[39] "TimeBodyAccelerometerJerkMagnitude-StandardDeviation"      "TimeBodyGyroscopeMagnitude-Mean"                          
[41] "TimeBodyGyroscopeMagnitude-StandardDeviation"              "TimeBodyGyroscopeJerkMagnitude-Mean"                      
[43] "TimeBodyGyroscopeJerkMagnitude-StandardDeviation"          "FrequencyBodyAccelerometer-Mean-X"                        
[45] "FrequencyBodyAccelerometer-Mean-Y"                         "FrequencyBodyAccelerometer-Mean-Z"                        
[47] "FrequencyBodyAccelerometer-StandardDeviation-X"            "FrequencyBodyAccelerometer-StandardDeviation-Y"           
[49] "FrequencyBodyAccelerometer-StandardDeviation-Z"            "FrequencyBodyAccelerometerJerk-Mean-X"                    
[51] "FrequencyBodyAccelerometerJerk-Mean-Y"                     "FrequencyBodyAccelerometerJerk-Mean-Z"                    
[53] "FrequencyBodyAccelerometerJerk-StandardDeviation-X"        "FrequencyBodyAccelerometerJerk-StandardDeviation-Y"       
[55] "FrequencyBodyAccelerometerJerk-StandardDeviation-Z"        "FrequencyBodyGyroscope-Mean-X"                            
[57] "FrequencyBodyGyroscope-Mean-Y"                             "FrequencyBodyGyroscope-Mean-Z"                            
[59] "FrequencyBodyGyroscope-StandardDeviation-X"                "FrequencyBodyGyroscope-StandardDeviation-Y"               
[61] "FrequencyBodyGyroscope-StandardDeviation-Z"                "FrequencyBodyAccelerometerMagnitude-Mean"                 
[63] "FrequencyBodyAccelerometerMagnitude-StandardDeviation"     "FrequencyBodyAccelerometerJerkMagnitude-Mean"             
[65] "FrequencyBodyAccelerometerJerkMagnitude-StandardDeviation" "FrequencyBodyGyroscopeMagnitude-Mean"                     
[67] "FrequencyBodyGyroscopeMagnitude-StandardDeviation"         "FrequencyBodyGyroscopeJerkMagnitude-Mean"                 
[69] "FrequencyBodyGyroscopeJerkMagnitude-StandardDeviation"    


tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccMeanFreqX
fBodyAccMeanFreqY
fBodyAccMeanFreqZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX
fBodyAccJerkMeanFreqY
fBodyAccJerkMeanFreqZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyGyroMeanFreqX
fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ
fBodyAccMagMean
fBodyAccMagStd
fBodyAccMagMeanFreq
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd
fBodyBodyAccJerkMagMeanFreq
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq
Activity Labels


WALKING (value 1): subject was walking during the test
WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
SITTING (value 4): subject was sitting during the test
STANDING (value 5): subject was standing during the test
LAYING (value 6): subject was laying down during the test