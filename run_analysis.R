library(dplyr)
##      features contains the 561 variables
##      of the experiment "Human Activity Recognition Using
##      Smartphones Dataset". 
##      class           : data.frame
##      dimension       : 561 x 2
##              col1    : integer values from 1:561
##              col2    : 561 different variable names
features <- read.table("features.txt")

##      activityLabel contains the 6 activities
##      being measured by the experiment
##      class           : data.frame
##      dimension       : 6 x 2
##              col1    : integer values from 1:6
##              col2    : 6 different activity labels
activityLabel <- read.table("activity_labels.txt")

##      xTest contains numeric values between -1 and 1
##      which are measurements of the 561 different variables.
##      It has 2947 observations of the 9 subjects
##      who are in the Test group.
##      The codes of the 9 subjects are: 
##      2,4,9,10,12,13,18,20,24
##      class           : data.frame
##      dimension       : 2947 x 561      
xTest <- read.table("X_test.txt")

##      yTest contains the activity code numbered 1:6
##      of the 6 activities of the 9 subjects who are
##      in the Test group.
##      class           : data.frame
##      dimension       : 2947 x 1
yTest <- read.table("y_test.txt")

##      activityTest contains the 6 labels 
##      of the 6 activities of the 9 subjects who are 
##      in the Test group.
##      class           : factor
##      length          : 2947
activityTest <- activityLabel[yTest[, 1], 2]

##      subjectTest contains the subject codes 
##      of the 9 subjects who are in the
##      Test group.
##      class           : data.frame
##      dimension       : 2947 x 1
subjectTest <- read.table("subject_test.txt")

##      codeTest contains column 1 of the
##      subjectTest variable. Its entries
##      are the subject codes of the 9
##      subjects in the Test group.
##      class           : integer
##      length          : 2947
codeTest <- subjectTest[,1]

##      xTrain contains numeric values between -1 and 1
##      which are measurements of the 561 different variables.
##      It has 7352 observations of the 21 subjects
##      who are in the Train group.
##      The codes of the of the 21 subjects are:
##      1,3,5,6,7,8,11,14,15,16,17,19,21,22,23,25,26,27,28,29,30  
##      class           : data.frame
##      dimension       : 7352 x 561
xTrain <- read.table("X_train.txt")

##      yTrain contains the activity code numbered 1:6
##      of the 6 activities of the 21 subjects who are 
##      in the Train group.
##      class           : data.frame
##      dimension       : 7352 x 1
yTrain <- read.table("y_train.txt")

##      activityTrain contains the 6 labels 
##      of the 6 activities of the 21 subjects
##      who are in the Train group.
##      class           : factor
##      length          : 7352
activityTrain <- activityLabel[yTrain[, 1], 2]

##      subjectTrain contains the subject codes 
##      of the 21 subjects who are in the
##      Test group.
##      class           : data.frame
##      dimension       : 7352 x 1
subjectTrain <- read.table("subject_train.txt")

##      codeTrain contains column 1 of the
##      subjectTrain variable. Its entries
##      are the subject codes of the 21 
##      subjects in the Train group.
##      class           : integer
##      length          : 7352
codeTrain <- subjectTrain[,1]

##      meanColnames contains the column variables
##      that are measurements of the mean.
##      class           : data.frame
##      dimension       : 33 x 2
meanColnames <- features[grepl("mean()", features[, 2], fixed = TRUE), ]

##      stdColnames contains the column variables
##      that are measurements of the standard deviation.
##      class           : data.frame
##      dimension       : 33 x 2
stdColnames <- features[grepl("std()", features[, 2], fixed = TRUE), ]

##      meanTest contains the 33 out of the 561 measurements
##      that measure the mean of the Test group.
##      Its column names are properly indicated with the function
##      colnames() using the Col2 of meanColnames
##      class           : data.frame
##      dimension       : 2947 x 33
meanTest <- select(xTest, meanColnames[, 1])
colnames(meanTest) <- meanColnames[,2]

##      stdTest contains the 33 out of the 561 measurements
##      that measure the standard deviation of the Test group.
##      Its column names are properly indicated with the function
##      colnames() using the Col2 of meanColnames
##      class           : data.frame
##      dimension       : 2947 x 33
##      class           : data.frame
##      dimension       : 2947 x 33
stdTest <- select(xTest, stdColnames[, 1])
colnames(stdTest) <- stdColnames[,2]

##      meanTrain contains the 33 out of the 561 measurements
##      that measure the mean of the Train group.
##      Its column names are properly indicated with the function
##      colnames() using the Col2 of meanColnames
##      class           : data.frame
##      dimension       : 7352 x 33
meanTrain <- select(xTrain, meanColnames[, 1])
colnames(meanTrain) <- meanColnames[,2]

##      stdTrain contains the 33 out of the 561 measurements
##      that measure the standard deviation of the Train group.
##      Its column names are properly indicated with the function
##      colnames() using the Col2 of meanColnames
##      class           : data.frame
##      dimension       : 2947 x 33
##      class           : data.frame
##      dimension       : 2947 x 33
stdTrain <- select(xTrain, stdColnames[, 1])
colnames(stdTrain) <- stdColnames[,2]

##      testData contains 68 columns which is the result
##      of cbinding the codeTest, activityTest, meanTest, and stdTest
##      of the Test group
##      variables
##      class           : data.frame
##      dimension       : 2947 x 68

testData <- cbind(subjectCode = codeTest, activityLabel = activityTest, meanTest, stdTest)

##      trainData contains 68 columns which is the result
##      of cbinding the codeTrain, activityTrain, meanTrain, and stdTrain
##      of the Train group
##      variables
##      class           : data.frame
##      dimension       : 7352 x 68
trainData <- cbind(subjectCode = codeTrain, activityLabel = activityTrain, meanTrain, stdTrain)

##      desiredData contains the data as a result of rbinding the 
##      testData and trainData
##      class           : data.frame
##      dimension       : 10299 x 68
desiredData <- rbind.data.frame(testData, trainData, rownames = NULL) 

##      data1 contains the same values of the desiredData
##      except for the column names for Col01 up to Col68
##      where "tBodyAcc.mean...X" : "fBodyBodyGyroJerkMag-std()"
##      in desiredData are converted to 
##      "tBodyAcc.mean...X" : "fBodyBodyGyroJerkMag.std.."
##      in data1 where each of "-", "(", and ")" 
##      is converted to ".". 
data1 <- data.frame(desiredData)

##      data2 contains grouped data of each activity and of each subject.
##      The numeric values between -1 and 1 are the mean of the measurements
##      of each variable for each activity and of each subject
data2 <- data1 %>%
        group_by(subjectCode, activityLabel) %>%
        summarise_each(funs(mean))

## saving the tidy data set in the working directory
##      filename        : tidydata.txt
##      dimension       : 181 x 68
## R001 contains the 68 column names of the tidydata set          
## R002 : R181 contain numeric values from -1 to 1
## These values are the averages of the mean measurements
## or the standard deviation measurements of each activity
## and of each subject
write.table(data2, file="tidydata.txt", row.name = FALSE)