#######################################
#Getting and Clean Data
# Author Martin Martinez

#This R Script contains the resolution for the getting and cleaning data.class
#This script is broken into smallersection (Each section is described below prefaced by Section)

#######################################
#Section A. load Library
library(data.table)
library(dplyr)

#######################################
#Section B. getting the raw data.zip

#set the working dir.  
myWorkingDir <- "/home/mmartine/Documents/Education/Coursera/Getting-and-Cleaning-Data/CourseProject"
setwd(myWorkingDir)

#create a Data directory if needed
if(!file.exists("./data")){
    dir.create("./data")
}

#get the Data set
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

#now that we have the file we need to unzip it 
#since the raw data is a zip file we'll unzip the data into the data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

#######################################
#Section C. Step 1 Merge the training and tests into one data set

#######################################
# we need to get the files first

#let us read the Features file
features<- tbl_df(read.table("./data/UCI HAR Dataset/features.txt"))
setnames(features, names(features), c("FeatureId", "FeatureName"))

#let us read the Activity file
activities<- tbl_df(read.table("./data/UCI HAR Dataset/activity_labels.txt"))
setnames(activities, names(activities), c("ActivityId","ActivityName"))

#next lets read the Subject file
trainingSubject <- tbl_df(read.table("./data/UCI HAR Dataset/train/subject_train.txt"))
testingSubject  <- tbl_df(read.table("./data/UCI HAR Dataset/test/subject_test.txt" ))

#next lets read the Activities files
trainingActivity <- tbl_df(read.table("./data/UCI HAR Dataset/train/y_train.txt"))
testingActivity  <- tbl_df(read.table("./data/UCI HAR Dataset/test/y_test.txt"))

#next lets read the data files
trainingData <- tbl_df(read.table("./data/UCI HAR Dataset/train/X_train.txt"))
testingData  <- tbl_df(read.table("./data/UCI HAR Dataset/test/X_test.txt"))

#next let us merge the content tables for each table,and rename the columns
subjectMerge <- rbind(trainingSubject, testingSubject)
# rename the col
setnames(subjectMerge, "V1", "Subject")
activityMerge <- rbind(trainingActivity, testingActivity)
# rename the col
setnames(activityMerge, "V1", "ActivityId")

#combine the data for training and testing
mergeData <- rbind(trainingData, testingData)
# rename the col 
colnames(mergeData) <-features$FeatureName

# Merge remaining columns
mergeSubjectActivity<- cbind( subjectMerge, activityMerge)
mergeData <- cbind(mergeSubjectActivity, mergeData)

#######################################
#Section D. Step 2 get only meaningful data.

#grep the feature for only mean() or std()
desiredFeatures <- grep("mean\\(\\)|std\\(\\)",features$FeatureName,value=TRUE)

desiredFeatures <- union(c("Subject","ActivityId"), desiredFeatures)
mergeData<- subset(mergeData,select=desiredFeatures) 

#######################################
#Section E. Step 3 use descriptive activity name to name the activities in the data

mergeData <- merge(activities, mergeData , by="ActivityId", all.x=TRUE)
mergeData$ActivityName <- as.character(mergeData$ActivityName)

mergeData <- arrange(mergeData,Subject,ActivityName)


#######################################
#Section E. Step 3 use rename colname and clean up data to be easier to read 
#Remove all  ()
names(mergeData) <- gsub('\\(|\\)',"",names(mergeData))

#apply sup
names(mergeData)<-gsub("std", "StandardDeviation", names(mergeData))
names(mergeData)<-gsub("mean", "Mean", names(mergeData))
names(mergeData)<-gsub("^t", "Time", names(mergeData))
names(mergeData)<-gsub("^f", "Frequency", names(mergeData))

names(mergeData)<-gsub("Acc", "Accelerometer", names(mergeData))
names(mergeData)<-gsub("BodyBody", "Body", names(mergeData))
names(mergeData)<-gsub("Gyro", "Gyroscope", names(mergeData))
names(mergeData)<-gsub("Mag", "Magnitude", names(mergeData))

#######################################
#Section F. Step 5 write to file tidy.txt

newTidyData<- mergeData
newTidyData<-  newTidyData %>% 
               group_by(Subject,ActivityName) %>%
               summarise_each(funs(mean)) 
write.table(newTidyData, "./data/tidy-data.txt", row.names = FALSE)