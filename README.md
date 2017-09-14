## Getting and Cleaning Data

### Project for week 4 of Getting and Cleaning Data JH Coursera course

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to below represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at [the site where the data was obtained](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

[Here is the data for the project](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

This repository contains the following files:
* README.md: This file to explain the other files and how they are connected.
* CodeBook.md: Modifies and updates the existing codebooks with the data to indicate all the variable and summaries calculated, along with units, and any other relevant information.
* run_analysis.R: An R script that will 
  1. Merge the training and test data sets into one data set.
  2. Extract only the mean and standard deviation for each measurement.
  3. Use descriptive activity names in the data set.
  4. Labels the dta set with descriptive variable names.
  5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* final_data.txt: The independent tidy data set computed by run_analysis.R.  To view this table in R, place the file in your working directory and run this code view_this_table <- read.table("final_data.txt").

