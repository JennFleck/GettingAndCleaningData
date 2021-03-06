## Code Book for Getting and Cleaning Data Project

### Experimental Study Design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record in the original dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The original dataset includes the following files:
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
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

### Variables

The following variables are included in final_data.txt

* subject : an indicator for the 30 volunteers
* activity : a description of the activity being measured (as decribed in the Summary Choices section below)
* all the other variables (names are listed in the Summary Choices section below) are the mean of the orignal variables with the same names.  The original variables are described above in the Experimental Study Design section.  These variables are all normalized and bound within [-1,1].

### Summary Choices

The activity codes given in the data set were numbers from 1 to 6.  These corresponded to the activities in the "activity_labels.txt" file and are as follows:
1. Walking
2. Walking Upstairs
3. Walking Downstairs
4. Sitting
5. Standing
6. Laying

The data fields used in the creation of our tidy data set are the fields that contained the words "mean" or "std" representing the mean and standard deviation measures are instructed in this problem.  Those fields are as shown in the list below and are described in the Experimental Study Design section above.

"tBodyAcc-mean()-X"                    "tBodyAcc-mean()-Y"                   
"tBodyAcc-mean()-Z"                    "tBodyAcc-std()-X"                    
"tBodyAcc-std()-Y"                     "tBodyAcc-std()-Z"                    
"tGravityAcc-mean()-X"                 "tGravityAcc-mean()-Y"                
"tGravityAcc-mean()-Z"                 "tGravityAcc-std()-X"                 
"tGravityAcc-std()-Y"                  "tGravityAcc-std()-Z"                 
"tBodyAccJerk-mean()-X"                "tBodyAccJerk-mean()-Y"               
"tBodyAccJerk-mean()-Z"                "tBodyAccJerk-std()-X"                
"tBodyAccJerk-std()-Y"                 "tBodyAccJerk-std()-Z"                
"tBodyGyro-mean()-X"                   "tBodyGyro-mean()-Y"                  
"tBodyGyro-mean()-Z"                   "tBodyGyro-std()-X"                   
"tBodyGyro-std()-Y"                    "tBodyGyro-std()-Z"                   
"tBodyGyroJerk-mean()-X"               "tBodyGyroJerk-mean()-Y"              
"tBodyGyroJerk-mean()-Z"               "tBodyGyroJerk-std()-X"               
"tBodyGyroJerk-std()-Y"                "tBodyGyroJerk-std()-Z"               
"tBodyAccMag-mean()"                   "tBodyAccMag-std()"                   
"tGravityAccMag-mean()"                "tGravityAccMag-std()"                
"tBodyAccJerkMag-mean()"               "tBodyAccJerkMag-std()"               
"tBodyGyroMag-mean()"                  "tBodyGyroMag-std()"                  
"tBodyGyroJerkMag-mean()"              "tBodyGyroJerkMag-std()"              
"fBodyAcc-mean()-X"                    "fBodyAcc-mean()-Y"                   
"fBodyAcc-mean()-Z"                    "fBodyAcc-std()-X"                    
"fBodyAcc-std()-Y"                     "fBodyAcc-std()-Z"                    
"fBodyAcc-meanFreq()-X"                "fBodyAcc-meanFreq()-Y"               
"fBodyAcc-meanFreq()-Z"                "fBodyAccJerk-mean()-X"               
"fBodyAccJerk-mean()-Y"                "fBodyAccJerk-mean()-Z"               
"fBodyAccJerk-std()-X"                 "fBodyAccJerk-std()-Y"                
"fBodyAccJerk-std()-Z"                 "fBodyAccJerk-meanFreq()-X"           
"fBodyAccJerk-meanFreq()-Y"            "fBodyAccJerk-meanFreq()-Z"           
"fBodyGyro-mean()-X"                   "fBodyGyro-mean()-Y"                  
"fBodyGyro-mean()-Z"                   "fBodyGyro-std()-X"                   
"fBodyGyro-std()-Y"                    "fBodyGyro-std()-Z"                   
"fBodyGyro-meanFreq()-X"               "fBodyGyro-meanFreq()-Y"              
"fBodyGyro-meanFreq()-Z"               "fBodyAccMag-mean()"                  
"fBodyAccMag-std()"                    "fBodyAccMag-meanFreq()"              
"fBodyBodyAccJerkMag-mean()"           "fBodyBodyAccJerkMag-std()"           
"fBodyBodyAccJerkMag-meanFreq()"       "fBodyBodyGyroMag-mean()"             
"fBodyBodyGyroMag-std()"               "fBodyBodyGyroMag-meanFreq()"         
"fBodyBodyGyroJerkMag-mean()"          "fBodyBodyGyroJerkMag-std()"          
"fBodyBodyGyroJerkMag-meanFreq()"      "angle(tBodyAccMean,gravity)"         
"angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"    
"angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                
"angle(Y,gravityMean)"                 "angle(Z,gravityMean)"    
