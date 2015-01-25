###Design
* ######This code book contains information on each variable in the tidy data set "tidyDataSummary.txt". All of the following variables, except the 'Subject' and 'Activity' variables, are means of a set of measurements collected in the 'UCI HAR Dataset'.
* ######For example, 'timeBodyAccelerationMeanX' in this data set is the mean of a set of 'timeBodyAccelerationMeanX' measurements collected for a given 'Subject' and 'Activity'. The sets of measurements are available in the 'UCI HAR Dataset', collected from a Smartphone (Samsung Galaxy S II) gyroscope and accelerometer
* ######All the measurements in the 'UCI HAR Dataset' are normalized to be within the range [-1,1]. Therefore the measurements here do not have any units (relative measures). Each meaurement is captured in the time domain or frequency domain in different axial directions (XYZ).

###CodeBook
1.	Subject
 *  A categorical numerical variable 1-30 for each volunteer involved in the experiment. Each volunteer performed every activity, with a smartphone on their waist from which all the measurements were collected/calculated.
2.	Activity
 *  6 categorical variables, each describing an Activity performed, from which the measurements were collected
        * Walking  
        * Walking_Upstairs
        * Walking_Downstairs
        * Sitting
        * Standing
        * Laying
3.	timeBodyAccelerationMeanX
 *  Mean of the mean time domain Body Acceleration signal in the X direction.
4.	timeBodyAccelerationMeanY
 *  Mean of the mean time domain Body Acceleration signal in the Y direction.
5.	timeBodyAccelerationMeanZ
 *  Mean of the mean time domain Body Acceleration signal in the Z direction.
6.	timeBodyAccelerationStdDevX
 *   Mean of the Standard Deviation of time domain Body Acceleration signal in the X direction.
7.	timeBodyAccelerationStdDevY
 *  Mean of the Standard Deviation of time domain Body Acceleration signal in the Y direction.
8.	timeBodyAccelerationStdDevZ
 *  Mean of the Standard Deviation of time domain Body Acceleration signal in the Z direction.
9.	timeGravityAccelerationMeanX
 *  Mean of the mean time domain Gravity Acceleration signal in the X direction.
10.	timeGravityAccelerationMeanY
 *  Mean of the mean time domain Gravity Acceleration signal in the Y direction.
11.	timeGravityAccelerationMeanZ
 *  Mean of the mean time domain Gravity Acceleration signal in the Z direction.
12.	timeGravityAccelerationStdDevX
 *  Mean of the Standard Deviation of time domain Gravity Acceleration signal in the X direction.
13.	timeGravityAccelerationStdDevY
 *  Mean of the Standard Deviation of time domain Gravity Acceleration signal in the Y direction.
14.	timeGravityAccelerationStdDevZ
 *  Mean of the Standard Deviation of time domain Gravity Acceleration signal in the Z direction.
15.	timeBodyAccelerationJerkMeanX
 *  Mean of the mean time domain Body Acceleration Jerk signal in the X direction.
16.	timeBodyAccelerationJerkMeanY
 *  Mean of the mean time domain Body Acceleration Jerk signal in the Y direction.
17.	timeBodyAccelerationJerkMeanZ
 *  Mean of the mean time domain Body Acceleration Jerk signal in the Z direction.
18.	timeBodyAccelerationJerkStdDevX
 *  Mean of the Standard Deviation of time domain Body Acceleration Jerk signal in the X direction.
19.	timeBodyAccelerationJerkStdDevY
 *  Mean of the Standard Deviation of time domain Body Acceleration Jerk signal in the Y direction.
20.	timeBodyAccelerationJerkStdDevZ
 *  Mean of the Standard Deviation of time domain Body Acceleration Jerk signal in the Z direction.
21.	timeBodyGyroscopeMeanX
 *  Mean of the mean time domain Body Gyroscope signal in the X direction.
22.	timeBodyGyroscopeMeanY
 *  Mean of the mean time domain Body Gyroscope signal in the Y direction.
23.	timeBodyGyroscopeMeanZ
 *  Mean of the mean time domain Body Gyroscope signal in the Z direction.
24.	timeBodyGyroscopeStdDevX
 *  Mean of the Standard Deviation time domain Body Gyroscope signal in the X direction.
25.	timeBodyGyroscopeStdDevY
 *  Mean of the Standard Deviation time domain Body Gyroscope signal in the Y direction.
26.	timeBodyGyroscopeStdDevZ
 *  Mean of the Standard Deviation time domain Body Gyroscope signal in the Z direction.
27.	timeBodyGyroscopeJerkMeanX
 *  Mean of the mean time domain Body Gyroscope Jerk signal in the X direction.
28.	timeBodyGyroscopeJerkMeanY
 *  Mean of the mean time domain Body Gyroscope Jerk signal in the Y direction.
29.	timeBodyGyroscopeJerkMeanZ
 *  Mean of the mean time domain Body Gyroscope Jerk signal in the Z direction.
30.	timeBodyGyroscopeJerkStdDevX
 *  Mean of the Standard Deviation time domain Body Gyroscope Jerk signal in the X direction.
31.	timeBodyGyroscopeJerkStdDevY
 *  Mean of the Standard Deviation time domain Body Gyroscope Jerk signal in the Y direction.
32.	timeBodyGyroscopeJerkStdDevZ
 *  Mean of the Standard Deviation time domain Body Gyroscope Jerk signal in the Z direction.
33.	timeBodyAccelerationMagnitudeMean
 *  Mean of the mean time domain Body Acceleration Magnitude.
34.	timeBodyAccelerationMagnitudeStdDev
 *  Mean of the Standrd Deviation time domain Body Acceleration Magnitude.
35.	timeGravityAccelerationMagnitudeMean
 *  Mean of the mean time domain Gravity Acceleration Magnitude.
36.	timeGravityAccelerationMagnitudeStdDev
 *  Mean of the Standard Deviation time domain Gravity Acceleration Magnitude.
37.	timeBodyAccelerationJerkMagnitudeMean
 *  Mean of the mean time domain Body Acceleration Jerk Magnitude.
38.	timeBodyAccelerationJerkMagnitudeStdDev
 *  Mean of the Standard Deviation time domain Body Acceleration Jerk Magnitude.
39.	timeBodyGyroscopeMagnitudeMean
 *  Mean of the mean time domain Body Gyroscope Magnitude.
40.	timeBodyGyroscopeMagnitudeStdDev
 *  Mean of the Standard Deviation of time domain Body Gyroscope Magnitude.
41.	timeBodyGyroscopeJerkMagnitudeMean
 *  Mean of the mean time domain Body Gyroscope Jerk Magnitude.
42.	timeBodyGyroscopeJerkMagnitudeStdDev
 *  Mean of the Standard Deviation time domain Body Gyroscope Jerk Magnitude.
43.	frequencyBodyAccelerationMeanX
 *  Mean of the mean frequency domain Body Acceleration in the X direction.
44.	frequencyBodyAccelerationMeanY
 *  Mean of the mean frequency domain Body Acceleration in the Y direction.
45.	frequencyBodyAccelerationMeanZ
 *  Mean of the mean frequency domain Body Acceleration in the Z direction.
46.	frequencyBodyAccelerationStdDevX
 *  Mean of the Standard Deviation frequency domain Body Acceleration in the X direction.
47.	frequencyBodyAccelerationStdDevY
 *  Mean of the Standard Deviation frequency domain Body Acceleration in the Y direction.
48.	frequencyBodyAccelerationStdDevZ
 *  Mean of the Standard Deviation frequency domain Body Acceleration in the Z direction.
49.	frequencyBodyAccelerationJerkMeanX
 *  Mean of the mean frequency domain Body Acceleration Jerk in the X direction.
50.	frequencyBodyAccelerationJerkMeanY
 *  Mean of the mean frequency domain Body Acceleration Jerk in the Y direction.
51.	frequencyBodyAccelerationJerkMeanZ
 *  Mean of the mean frequency domain Body Acceleration Jerk in the Z direction.
52.	frequencyBodyAccelerationJerkStdDevX
 *  Mean of the Standard Deviation frequency domain Body Acceleration Jerk in the X direction.
53.	frequencyBodyAccelerationJerkStdDevY
 *  Mean of the Standard Deviation frequency domain Body Acceleration Jerk in the Y direction.
54.	frequencyBodyAccelerationJerkStdDevZ
 *  Mean of the Standard Deviation frequency domain Body Acceleration Jerk in the Z direction.
55.	frequencyBodyGyroscopeMeanX
 *  Mean of the mean frequency domain Body Gyroscope Jerk in the X direction.
56.	frequencyBodyGyroscopeMeanY
 *  Mean of the mean frequency domain Body Gyroscope Jerk in the Y direction.
57.	frequencyBodyGyroscopeMeanZ
 *  Mean of the mean frequency domain Body Gyroscope Jerk in the Z direction.
58.	frequencyBodyGyroscopeStdDevX
 *  Mean of the Standard Deviation frequency domain Body Gyroscope in the X direction.
59.	frequencyBodyGyroscopeStdDevY
 *  Mean of the Standard Deviation frequency domain Body Gyroscope in the Y direction.
60.	frequencyBodyGyroscopeStdDevZ
 *  Mean of the Standard Deviation frequency domain Body Gyroscope in the Z direction.
61.	frequencyBodyAccelerationMagnitudeMean
 *  Mean of the mean frequency domain Body Acceleration Magnitude.
62.	frequencyBodyAccelerationMagnitudeStdDev
 *  Mean of the Standrd Deviation frequency domain Body Acceleration Magnitude.
63.	frequencyBodyAccelerationJerkMagnitudeMean
 *  Mean of the mean frequency domain Body Acceleration Jerk Magnitude.
64.	frequencyBodyAccelerationJerkMagnitudeStdDev
 *  Mean of the Standard Deviation frequency domain Body Acceleration Jerk Magnitude.
65.	frequencyBodyGyroscopeMagnitudeMean
 *  Mean of the mean frequency domain Body Gyroscope Magnitude.
66.	frequencyBodyGyroscopeMagnitudeStdDev
 *  Mean of the Standard Deviation frequency domain Body Gyroscope Magnitude.
67.	frequencyBodyGyroscopeJerkMagnitudeMean
 *  Mean of the mean frequency domain Body Gyroscope Jerk Magnitude.
68.	frequencyBodyGyroscopeJerkMagnitudeStdDev
 *  Mean of the Standard Deviation frequency domain Body Gyroscope Jerk Magnitude.