# download and unzip raw data

if(!file.exists("./getclean")){dir.create("./getclean")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./getclean/Dataset.zip",method="curl")
unzip("./getclean/Dataset.zip", exdir= "./getclean") # unzipped file is a folder 'UCI HAR Dataset' 
# containing informative files and the test and training files. For more info see CodeBook.md

# Read all data
data.train <- read.table('./getclean/UCI HAR Dataset/train/X_train.txt') 
data.test <- read.table('./getclean/UCI HAR Dataset/test/X_test.txt') 
acti.train <- read.table('./getclean/UCI HAR Dataset/train/y_train.txt')
acti.test <- read.table('./getclean/UCI HAR Dataset/test/y_test.txt')
who.train <- read.table('./getclean/UCI HAR Dataset/train/subject_train.txt')
who.test <- read.table('./getclean/UCI HAR Dataset/test/subject_test.txt')
feat <- read.table('./getclean/UCI HAR Dataset/features.txt')
acti <- read.table('./getclean/UCI HAR Dataset/activity_labels.txt')

# Merge the training and the test sets to create one data set and 
# appropriately label the data set with descriptive variable names

data.t <- rbind(data.train, data.test)
activity <- rbind(acti.train, acti.test)
who <- rbind(who.train, who.test) 

names(who) <- c("who")
names(activity) <- c("activity")
names(data.t) <- feat$V2

full.data <- cbind(data.t, who, activity)

# Extract only the measurements on the mean and standard deviation for each measurement. 

subset.featsnames <- feat$V2[grep("mean\\(\\)|std\\(\\)", feat$V2)]
selfeatnames <- c(as.character(subset.featsnames), "who", "activity")
sub.data <- subset(full.data, select = selfeatnames)

## Use descriptive activity names to name the activities in the data set
sub.data$activity <- acti[sub.data$activity, 2]

## Create a second, independent tidy data set with the average of each variable
## for each activity and each subject.
var.aver <- aggregate(.~who + activity, sub.data, mean)
var.aver <- var.aver[order(var.aver$who, var.aver$acti), ]
write.table(var.aver, './getclean/tidydata.txt', row.names = F)
