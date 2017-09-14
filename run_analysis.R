library(dplyr)

# download the data if it doesn't already exist
data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_file <- "UCI HAR Dataset.zip"

if (!file.exists(zip_file)) {
        download.file(data_url, zip_file, mode = "wb")
}

# unzip file if it doesn't already exist
location <- "UCI HAR Dataset"

if (!file.exists(location)) {
        unzip(zip_file)
}


# get activity and feature names
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels) = c("code", "activity")
features <- read.table("UCI HAR Dataset/features.txt")

# determine which features to use
incl <- grepl("mean|std", features$V2, ignore.case = TRUE)

# read in train data, name columns, and filter on mean and std
train_dat <- read.table("UCI HAR Dataset/train/X_train.txt")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
train_activity <- read.table("UCI HAR Dataset/train/y_train.txt")

names(train_dat) <- features$V2
train_dat <- train_dat[,incl]

names(train_subject) <- "subject"
names(train_activity) <- "activity_code"

# read in test data, name columns, and filter on mean and std
test_dat <- read.table("UCI HAR Dataset/test/X_test.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
test_activity <- read.table("UCI HAR Dataset/test/y_test.txt")

names(test_dat) <- features$V2
test_dat <- test_dat[,incl]

names(test_subject) <- "subject"
names(test_activity) <- "activity_code"

# combine the train data points
train <- cbind(train_subject, train_activity, train_dat)

# combine the test data points
test <- cbind(test_subject, test_activity, test_dat)

# combine the train and test data
total_data <- rbind(train, test)

# add activity label, remove activity code, and reorder columns
total_data <- merge(total_data, activity_labels, by.x = "activity_code", 
                    by.y = "code", all.x = TRUE)

total_data <- select(total_data, -activity_code)

total_data <- select(total_data, c(1, 88, 2:87))

# create a second, independent tidy data set with the average of each variable
# for each activity and each subject

final_data <- total_data %>%
        group_by(subject, activity) %>%
        summarise_all(funs(mean))

# export data 

write.table(final_data, "final_data.txt")
        