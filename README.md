## Getting and Cleaning Data: Course Project

### Introduction
This repository contains my submission for the course project for the Getting and Cleaning Data course.
The repository includes the script that will clean and tidy the data set, a tidied data set, and a code book describing the data.

### Raw Data
The raw data was collected from the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The data is a record of an experiment carried out on 30 volunteers tracking their movement while performing certain activities.
The observations are in the x_test.txt and x_train.txt files, activity labels are in the y_test.txt and y_train.txt files, and the test subjects are in the subject_test.txt and subject_train.txt files.
 The variable names are in the features.txt file.

### The Script
The script called run_analysis.R merges the training and test sets together before adding labels to the columns.
It then cleans and sorts these into one dataframe containing the mean and standard deviations variables, then sorts these into a further dataframe sorted by subject and activity.
the Script requires that:

*The UCI HAR dataset be downloaded and extracted

*The extracted data is within a directory named "UCI HAR Dataset" located in the working directory

###The Tidy Dataset
The file tidydata.txt contains a tidied summary of the data, with the mean of each variable sorted by activity and subject.
It can be read back into R by downloading to the working directory and using: read.table("~/tidydata.txt", stringsAsFactors=FALSE)

### The Codebook
The Codebook explains how the data was tranformed and provides a guide to the variables.