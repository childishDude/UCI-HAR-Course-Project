#run_analysis script README
##Summary
This script is comprised of 4 functions, with run_analysis being the main function. The goal of this script is to take 2 data sets of measurements on subjects performing activities and merge them together into a data set containing certain measurements. The 2 data sets are called 'test' and 'train'. They contain measurements on subjects performing activities (although the number of observations varies). The final output of this script is a data set that contains the average value of the means and standard deviations of measurements grouped by test subject and activity.

There is more information on the variables, the subjects, and activities in the codebook. The following contains further information on each function in the script. Where each requirement of the script is completed you will see _Step 'X' completed_ (you can do ctrl+f to find these quickly). Here is an overview of the functions:
* __meanSTD()__ rewrites the variable names descriptively and returns indices/variable names for only the relevant (mean(), std()) measurements
* __activityName(y)__ takes an activity data frame with numbers and converts it into a data frame with labels (Walking, Standing, etc.)
* __clean(name)__ takes one of the data set folder names, and returns a data frame with activity labels, subjects, and measurements (with variable names)
* __run_analysis()__ binds cleaned 'test' and 'train' data together. Then it groups by activity and subject to find the average of the mean and standard deviation measurements for each group.

###meanSTD()
The first script is called __meanSTD__. Since the variables of each measurement are the same (and in the  same order) across both the 'test' and 'train' data sets, this function cleans and returns only the necessary column names prior to being applied to either data set. 

The first step is to read in the features.txt file, which contains __column names__ and __indices__. The 'grep' function is used to find only variable __names__ (and their __indices__) containing mean() or std() in the name. MeanFreq variables are left out because they measure the mean of an attribute of a variable, rather than the mean of a variable itself.

Next, the variable __names__ are cleaned up. Using gsub, the variable with "BodyBody" in the name is replaced with "Body". "Acc" is replaced with "Acceleration", "Mag with "Magnitude" and so on for other abbreviations. The "-" and "()" are removed to avoid any confusion with special characters during data analysis that will happen later. The variables are left in camelCase. Camel Case seems the best format to leave data in, as it doesn't have spaces (which might be problematic), but at the same time differentiates among words and provides consistent format. 

Finally, the script returns a data frame with both descriptive variable __names__ and their numerical __index__ (from features.txt), __arranged__ by index. The numerical __index__ is important, as it tells exactly which columns to subset and assign names to in the Measurement data sets later on. (_Step 4 completed_)

###activityName(y)
The second script is called __activityName__. This script takes one of the __activity files(y)__ as an argument and changes the __numbers__ to __activity labels__ using the __activity_labels.txt__ file.

A for loop subsets the __activity file (y)__ for each number in the __activity_labels.txt__ file. The corresponding (number to label) value in the __activity_labels.txt__ file is assigned to all the subsetted rows at once. The loop does this for each __activity number__.

The script returns the labels in a data frame of char type labels. (_Step 3 Completed_)

####clean(name)
The third script is called __clean__. Though the other functions clean, this one performs the main task by bringing them together and by filtering for the relevant measurements. 

The function argument is the name of the folder containing the data to clean and label ('test' or 'train' in this case). First, the __Subject__, __Activity__, and __Measurements__ files are read in. The __meanSTD()__ function is called. Using the column __indices__ returned by this function, the __measurement__ columns with only the __mean__ and __std measurements__ are subsetted from all the measurements. (_Step 2 Completed_) Then using the column __names__ returned by __meanSTD()__, descriptive variable __names__ are assigned as column names to the subsetted data. Since __meanSTD()__ returns arranged __names__ by index, the correct descriptive variable __names__ are assigned to the correct subsetted columns.

The next step is to get the Activity file ready. Using __activityName__ (the second script), the activity data with __numbers__ is labelled appropriately. 

The subject data column is named "Subject"

Finally, these three data sets (Activity, Subject, Measurements) are column bound (cbind) and returned.

###run_analysis()
The fourth script is called __run_analysis__. First it cleans both the __test__ and __train__ data sets using __clean("test")__ and __clean("train")__. The __train__ and __test__ data set with __Subject__, __Activities__ (labelled), __measurements__ (of only __std__ and __mean__) are stored in variables. These are rbound (rbind) to create a data set of 10,299 rows with 68 variables (_Step 1 Completed_) 

This bigger data set is then grouped twice, once by __Subject__, then by __Activity__ (using add=TRUE, to prevent groups from being overridden. summarise each is used on the data to find the __mean__ of each group at once from column 3 (skipping the first 2 __Subject__ and __Activity__ columns until the last column). This final data set is returned by this function (_Step 5 Completed_)

###Closing
__run_analysis__ is the only __manual__ function call necessary for this whole script to work, as other function calls are nested within this function.