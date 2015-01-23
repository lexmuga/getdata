=================================================================
TIDYDATA    :   A Course Project on Getting and Cleaning Data
filename    :   README.md
date        :   January 23, 2015
=================================================================
Felix P. Muga II
lexmuga@gmail.com

The TIDYDATA Project  includes the following files:
==================================================

- 'README.md'

- 'tidydata.txt'    :   The dataset of this project
                        including the column names as shown in 
                        the first row

- 'run_analysis.R'  :   The R script that produces the file
                        'tidydata.txt'. It uses the files
                        from the 'Human Activity Recognition
                        Using Smartphones Dataset' which is
                        available in 
      https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
                        to generate 'tidydata.txt'.

- 'codebook.txt'    :   The variables are described in this file.
    

The entries in the file "tidydata.txt" are arranged 181 rows and 68 columns.
=============================================================================

The first row from the first column to the sixty-eighth column contains the
column names of the data set. These are given as follows:

Col01	subjectCode                     Each entry from Row002 : Row181
                                        in Col01 is one of the 30 integer  
                                        values from 1 : 30 

Col02	activityLabel                   Each entry from Row002 : Row181 is
                                        one of the 6 character strings
                                        given by
                                            WALKING
                                            WALKING_UPSTAIRS
                                            WALKING_DOWNSTAIRS
                                            SITTING
                                            STANDING
                                            LAYING

Col03	tBodyAcc.mean...X               Each of Col03 : Col35 contains a
Col04	tBodyAcc.mean...Y               numeric value between -1 and 1
Col05	tBodyAcc.mean...Z               for each activity (activityLabel)  
Col06	tGravityAcc.mean...X            and for each subject (subjectCode). 
Col07	tGravityAcc.mean...Y            These values are obtained from the
Col08	tGravityAcc.mean...Z            desiredData dataset which consists
Col09	tBodyAccJerk.mean...X           of the averages in each of Col03 to Col35
Col10	tBodyAccJerk.mean...Y           of the mean measurements in each column 
Col11	tBodyAccJerk.mean...Z           for each activity and for each
Col12	tBodyGyro.mean...X              subject using the group_by() and
Col13	tBodyGyro.mean...Y              and summarise_each() functions made
Col14	tBodyGyro.mean...Z              possible by the chaining %>% method.
Col15	tBodyGyroJerk.mean...X 
Col16	tBodyGyroJerk.mean...Y 
Col17	tBodyGyroJerk.mean...Z
Col18	tBodyAccMag.mean.. 
Col19	tGravityAccMag.mean.. 
Col20	tBodyAccJerkMag.mean.. 
Col21	tBodyGyroMag.mean.. 
Col22	tBodyGyroJerkMag.mean.. 
Col23	fBodyAcc.mean...X
Col24	fBodyAcc.mean...Y 
Col25	fBodyAcc.mean...Z 
Col26	fBodyAccJerk.mean...X 		
Col27	fBodyAccJerk.mean...Y 		
Col28	fBodyAccJerk.mean...Z 		
Col29	fBodyGyro.mean...X			
Col30	fBodyGyro.mean...Y 
Col31	fBodyGyro.mean...Z 
Col32	fBodyAccMag.mean.. 
Col33	fBodyBodyAccJerkMag.mean.. 
Col34	fBodyBodyGyroMag.mean.. 
Col35	fBodyBodyGyroJerkMag.mean..

Col36	tBodyAcc.std...X                 Each of Col26 : Col68 contains
Col37	tBodyAcc.std...Y                 a numeric value between -1 and 1
Col38	tBodyAcc.std...Z                 for each activity (activityLabel)
Col39	tGravityAcc.std...X              and for each subject (subjectCode). 
Col40	tGravityAcc.std...Y              These values are obtained from 
Col41	tGravityAcc.std...Z              desiredData  which consists
Col42	tBodyAccJerk.std...X             of the averages in each of Col26 to 
Col43	tBodyAccJerk.std...Y             Col68 of the standard deviation
Col44	tBodyAccJerk.std...Z             measurements in each column for 
Col45	tBodyGyro.std...X                each activity and for each subject
Col46	tBodyGyro.std...Y                using the group_by() and  the
Col47	tBodyGyro.std...Z                summarise_each() functions made
Col48	tBodyGyroJerk.std...X            possible by the chaining %>% method.
Col49	tBodyGyroJerk.std...Y 
Col50	tBodyGyroJerk.std...Z 
Col51	tBodyAccMag.std.. 
Col52	tGravityAccMag.std.. 
Col53	tBodyAccJerkMag.std.. 
Col54	tBodyGyroMag.std.. 
Col55	tBodyGyroJerkMag.std..
Col56	fBodyAcc.std...X 
Col57	fBodyAcc.std...Y 
Col58	fBodyAcc.std...Z 
Col59	fBodyAccJerk.std...X 
Col60	fBodyAccJerk.std...Y 
Col61	fBodyAccJerk.std...Z 
Col62	fBodyGyro.std...X
Col63	fBodyGyro.std...Y 
Col64	fBodyGyro.std...Z 
Col65	fBodyAccMag.std.. 
Col66	fBodyBodyAccJerkMag.std.. 
Col67	fBodyBodyGyroMag.std.. 
Col68	fBodyBodyGyroJerkMag.std..


The R script run_analysis.R utilizes the following:
===============================================================

* library    
-   dplyr               :   line    1

* functions  
-   read.table()        :   lines   9,17,27,34,48,66,73,87
-   grepl()             :           101,107
-   select()            :           115,126,135,146
-   colnames()          :           116,127,136,147
-   cbind()             :           156,164
-   rbind.data.frame()  :           170
-   data.frame()        :           179
-   group_by            :           185
-   summarise_each      :           186
-   funs()              :           186
-   write.table         :           196

* other functions
-   %>%                 :           184
-   mean                :           186

* variables (created)
-   features            :   line    9
-   activityLabel       :           17
-   xTest               :           27
-   yTest               :           34
-   activityTest        :           41
-   subjectTest         :           48
-   codeTest            :           56
-   xTrain              :           66
-   yTrain              :           73
-   activityTrain       :           80
-   subjectTrain        :           87
-   codeTrain           :           95
-   meanColnames        :           101
-   stdColnames         :           107
-   meanTest            :           115
-   stdTest             :           126
-   meanTrain           :           135
-   stdTrain            :           146
-   testData            :           156
-   trainData           :           164
-   desiredData         :           170
-   data1               :           179
-   data2               :           184

* files read
-   features.txt        :           9
-   activity_labels.txt :           17
-   X_test.txt          :           27
-   y_test.txt          :           34
-   subject_test.txt    :           48
-   X_train.txt         :           66
-   y_train.txt         :           73
-   subject_train.txt   :           87

* file created
-   tidydata.txt        : line      196
