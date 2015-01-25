#run_analysis script README
##Summary
This script is comprised of 4 functions. Run_analysis is the main function. The goal of this script is to take 2 data sets of measurements on subjects performing activities and merge them together into a single summary data set. The 2 data sets are called 'test' and 'train'. They contain measurements on subjects performing activities. The final output of this script is a data set that contains the average value of the means and standard deviations of measurements grouped by test subject and activity.

There is more information on the variables, the subjects, and activities in CodeBook.md. The following contains information on each function in the script. When each requirement for the project is completed you will see _Step 'X' completed_ (You can do ctrl+f to find these quickly). Here is a quick overview of the functions:
* __meanSTD()__ rewrites the variable names descriptively and returns column indices/variable names for only the relevant (mean(), std()) measurements.
* __activityName(y)__ takes an Activity data frame with numbers (1-6) and converts it into a data frame with labels (Walking, Standing, etc.)
* __clean(name)__ takes one of the data set folder names (train or test), and returns a single cleaned data frame for that data set with Activity labels, Subjects, and Measurements.
* __run_analysis()__ binds cleaned 'test' and 'train' data together. Then it creates a data frame grouped by activity and subject to find the average of the mean and standard deviation measurements for each group.

###meanSTD()
The first script is called __meanSTD__. Since the variables of each measurement are the same (and in the  same order) across both the 'test' and 'train' data sets, this function cleans and returns only the necessary column names/indices prior to being applied to either data set.

The first step is to read the features.txt file, which contains __column names__ and __column indices__. The 'grep' function is used to find only variable __names__/__indices__ containing mean() or std() in the name. MeanFreq variables are left out because they measure the mean of an attribute of a variable, rather than the mean of a variable itself.

Next, the variable __names__ are cleaned up. Using gsub, the variable with "BodyBody" in the name is replaced with "Body". "Gyro" is replaced with "Gyroscope", "Mag" with "Magnitude" and so on for other abbreviations. The "-" and "()" are removed to avoid any confusion with special characters during data analysis that will happen later. The variables are left in camelCase. CamelCase seems the best format to leave data in, as it doesn't have spaces (which might be problematic later on), but can still differentiate among words, providing consistent format. 

Finally, the script returns a data frame with both descriptive variable __names__ and their numerical __index__ (from features.txt) __arranged__ by index, for just mean() and std() columns. The numerical __index__ is important, as it tells exactly which columns to subset and assign names to in the Measurement data sets later on. (_Step 4 completed_)

###activityName(y[activity data frame to be labelled])
The second script is called __activityName__. This script takes one of the __activity files (y)__ as an argument and changes the __numbers__ to __activity labels__ using the __activity_labels.txt__ file.

A for loop subsets the __activity file (y)__ for each number in the __activity_labels.txt__ file. The corresponding (number to label) value in the __activity_labels.txt__ file is assigned to all the subsetted rows at once. The loop does this for each __activity number__.

The script returns the labels in a data frame of char type variables. (_Step 3 Completed_)

###clean(name['test' or 'train'])
The third script is called __clean__. Though the other functions also clean data, the function here is to clean the main data set and append labels, and variable names to them. It works on one set of data sets at a time ('test' or 'train' as specified in the argument).

First, the __Subject__, __Activity__, and __Measurements__ files for 'test' or 'train' are read in. The __meanSTD()__ function which returns column __indices__ and __variable names__ is called. The __measurement__ columns with only the __mean()__ and __std()__ measurements are subsetted from all the measurements, using the column __indices__ returned by meanSTD(). Then using the column __names__ returned by __meanSTD()__, descriptive variable __names__ are assigned as column names to the subsetted data. (_Step 2 Completed_) Since __meanSTD()__ returns arranged __names__ by index, the correct descriptive variable __names__ are assigned to the correct subsetted columns. The measurement data frame has now been filtered and labelled for the correct columnns and is ready for binding.

The next step is to get the Activity file ready for bnding. Using __activityName__ (the second script), the activity data with __numbers__ is labelled appropriately. 

The subject data column is then named "Subject".

Finally, these three data sets (Activity, Subject, Measurements) are column bound (cbind) and returned.

###run_analysis()
The fourth script is called __run_analysis__. It calls __clean("test")__ and __clean("train")__ on both data sets and stores them in variables. These are rbound (rbind) to create a data frame of 10,299 rows with 68 variables (_Step 1 Completed_) 

The bound data frame is then grouped twice, once by __Subject__, then by __Activity__ (using add=TRUE, to prevent groups from being overridden). 'Summarise each' is used on the grouped data to find the __mean__ of each group from column 3 (skipping the first 2 __Subject__ and __Activity__ columns) until the last column. This final grouped data set with means of all __mean()__ and __std()__ measurements is returned by this function (_Step 5 Completed_)

###Closing
__run_analysis__ is the only __manual__ function call necessary for this whole script to work, as other function calls are nested within this function.