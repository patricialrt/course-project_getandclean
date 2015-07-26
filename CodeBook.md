---
title: "CodeBook"
author: "Patricialrt"
date: "26 Jul 2015"
output: html_document
---

### **Description of the output 'tidydata.txt'**

tidydata.txt is a table containing 

- for **each subject** ('who' from 1 to 30),         
- for each of the 6 **activities** (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING),     
- the **average of the mean and std deviation** of       
    + Triaxial acceleration from the accelerometer (tBodyAcc-XYZ) and the estimated body acceleration (tGravityAcc-XYZ),         + Triaxial Angular velocity from the gyroscope (tBodyGyro-XYZ),      
    + their derivation in time (tBodyAccJerk-XYZ, tBodyGyroJerk-XYZ),          
    + magnitude (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag) and     
    + some selected Fast Fourier Transform (fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag)

###**Some general information about the raw data:**

The raw data was downloaded here:     
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A full description of the raw data can be found here:     
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones              

**The dataset contains the description files: README.txt and features_info.txt from which I copy some exceprts here. Those excerpts helped me to better understand the data:**

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz have been captured. 

**The dataset includes the following files:**

- 'README.txt'    
- 'features_info.txt': Shows information about the variables used on the feature vector.    
- 'features.txt': List of all features.      
- 'activity_labels.txt': Links the class labels with their activity name.          
- 'train/X_train.txt': Training set.       
- 'train/y_train.txt': Training labels.         
- 'test/X_test.txt': Test set.          
- 'test/y_test.txt': Test labels.   
- 'train/subject_train/test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

For each record in the raw dataset it is provided:        
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.     
- Triaxial Angular velocity from the gyroscope.      
- A 561-feature vector with time and frequency domain variables.     
- Its activity label.     
- An identifier of the subject who carried out the experiment.   

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ,   
tGravityAcc-XYZ,    
tBodyAccJerk-XYZ,   
tBodyGyro-XYZ,   
tBodyGyroJerk-XYZ,   
tBodyAccMag,   
tGravityAccMag,   
tBodyAccJerkMag,   
tBodyGyroMag,   
tBodyGyroJerkMag,   
fBodyAcc-XYZ,    
fBodyAccJerk-XYZ,   
fBodyGyro-XYZ,   
fBodyAccMag,    
fBodyAccJerkMag,    
fBodyGyroMag,   
fBodyGyroJerkMag   

**The set of variables that were estimated from these signals are:** 

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

