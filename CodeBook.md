##CodeBook

###Variables

*Activity- Describes the activity that was undertaken as each reocrding was made.

*Subject- Each number from 1:30 corresponds to one of the 30 participants in the study.

As it was required that the measurements recording mean and standard deviation were to be extracted the following variable names were used:

*variables recording both 'mean()' and 'Mean' as measurements of mean

*variables recording 'std()' as a measurement of standard deviation

###The Data
The data records experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the data captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The original dataset was randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
In its original for the data was separated into two unlabelled files with observations for each group, separate files for the activities, as well as a separate file with the name of each recorded value.

###The Script
The script first combines all of the data together into one dataframe.
It then selects only the columns that record both mean and standard deviation
It then adds variable labels and adds appopriate names to the activity variable.
Finally the script will produce a new independent dataframe that takes an average for each variable, across each activity for each individual.
