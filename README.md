=================================================================
TIDYDATA    :   A Course Project on Getting and Cleaning Data
filename    :   README.md
date        :   10 February 2015
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
    

The entries in the file "tidydata.txt" are arranged in 181 rows and 68 columns.
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

Col03	tBodyAccmeanX               Each of Col03 : Col35 contains a
Col04	tBodyAccmeanY               numeric value between -1 and 1
Col05	tBodyAccmeanZ               for each activity (activityLabel)  
Col06	tGravityAccmeanX            and for each subject (subjectCode). 
Col07	tGravityAccmeanY            These values are obtained from the
Col08	tGravityAccmeanZ            desiredData dataset which consists
Col09	tBodyAccJerkmeanX           of the averages in each of Col03 to Col35
Col10	tBodyAccJerkmeanY           of the mean measurements in each column 
Col11	tBodyAccJerkmeanZ           for each activity and for each
Col12	tBodyGyromeanX              subject using the group_by() and
Col13	tBodyGyromeanY              and summarise_each() functions made
Col14	tBodyGyromeanZ              possible by the chaining %>% method.
Col15	tBodyGyroJerkmeanX 
Col16	tBodyGyroJerkmeanY 
Col17	tBodyGyroJerkmeanZ
Col18	tBodyAccMagmean 
Col19	tGravityAccMagmean
Col20	tBodyAccJerkMagmean
Col21	tBodyGyroMagmean
Col22	tBodyGyroJerkMagmean
Col23	fBodyAccmeanX
Col24	fBodyAccmeanY 
Col25	fBodyAccmeanZ 
Col26	fBodyAccJerkmeanX 		
Col27	fBodyAccJerkmeanY 		
Col28	fBodyAccJerkmeanZ 		
Col29	fBodyGyromeanX			
Col30	fBodyGyromeanY 
Col31	fBodyGyromeanZ 
Col32	fBodyAccMagmean
Col33	fBodyBodyAccJerkMagmean
Col34	fBodyBodyGyroMagmean
Col35	fBodyBodyGyroJerkMagmean

Col36	tBodyAccstdX                 Each of Col26 : Col68 contains
Col37	tBodyAccstdY                 a numeric value between -1 and 1
Col38	tBodyAccstdZ                 for each activity (activityLabel)
Col39	tGravityAccstdX              and for each subject (subjectCode). 
Col40	tGravityAccstdY              These values are obtained from 
Col41	tGravityAccstdZ              desiredData  which consists
Col42	tBodyAccJerkstdX             of the averages in each of Col26 to 
Col43	tBodyAccJerkstdY             Col68 of the standard deviation
Col44	tBodyAccJerkstdZ             measurements in each column for 
Col45	tBodyGyrostdX                each activity and for each subject
Col46	tBodyGyrostdY                using the group_by() and  the
Col47	tBodyGyrostdZ                summarise_each() functions made
Col48	tBodyGyroJerkstdX            possible by the chaining %>% method.
Col49	tBodyGyroJerkstdY 
Col50	tBodyGyroJerkstdZ 
Col51	tBodyAccMagstd 
Col52	tGravityAccMagstd
Col53	tBodyAccJerkMagstd
Col54	tBodyGyroMagstd
Col55	tBodyGyroJerkMagstd
Col56	fBodyAccstdX 
Col57	fBodyAccstdY 
Col58	fBodyAccstdZ 
Col59	fBodyAccJerkstdX 
Col60	fBodyAccJerkstdY 
Col61	fBodyAccJerkstdZ 
Col62	fBodyGyrostdX
Col63	fBodyGyrostdY 
Col64	fBodyGyrostdZ 
Col65	fBodyAccMagstd
Col66	fBodyBodyAccJerkMagstd
Col67	fBodyBodyGyroMagstd
Col68	fBodyBodyGyroJerkMagstd


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

#####################################################################
APPENDIX
*### Original Source Dataset README file

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
