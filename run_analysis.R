#read both datasets into r
test<-read.table("~/UCI HAR Dataset/test/X_test.txt")
train<-read.table("~/UCI Har Dataset/train/X_train.txt")
# add the subject and activity data onto each dataframe
test[,562]<-read.table("~/UCI HAR Dataset/test/y_test.txt")
test[,563]<-read.table("~/UCI HAR Dataset/test/subject_test.txt")
train[,562]<-read.table("~/UCI HAR Dataset/train/y_train.txt")
train[,563]<-read.table("~/UCI HAR Dataset/train/subject_train.txt")
#Combine these two dataframes into on called 'alldata'
alldata<-rbind(test, train)
#Read the features file into R, then use this as column headers
#In addition, add column headers for the variables 'subject' and 'activity'
feat<-read.table("~/UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
names(alldata)<-c(feat$V2, "activity", "subject")
#select only the variables recording mean and standard devation
srtdata<-alldata[,grep(("mean|std|Mean"), feat$V2)]
#add the variables 'activity' and 'subject' 
srtdata<-cbind(srtdata, alldata$activity, alldata$subject)
names(srtdata)[87]<-"activity"
names(srtdata)[88]<-"subject"
#add descriptive activity names to the 'activity' variable
srtdata$activity[srtdata$activity==1]<-"Walking"
srtdata$activity[srtdata$activity==2]<-"Walking Upstairs"
srtdata$activity[srtdata$activity==3]<-"Walking Downstairs"
srtdata$activity[srtdata$activity==4]<-"Sitting"
srtdata$activity[srtdata$activity==5]<-"Standing"
srtdata$activity[srtdata$activity==6]<-"Laying"
#Now we can creat a separate dataframe that takes the average for each variable sorted by acticity and subject
newdf<-aggregate(srtdata[,1:86], by=list(srtdata$activity, srtdata$subject), FUN=mean)
names(newdf)[1]<-"activity"
names(newdf)[2]<-"subject"