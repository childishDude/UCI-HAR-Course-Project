##'The following code contains 4 functions which clean and extract the desired data set which 
##'contains the average means and average standard deviation for each measurement in the train and 
##'test data sets. Further detailed explanation can be found in the README. Comments along the way 
##'provide info on what the code is doing here. This code assumes that run_analysis is running in 
##'the **SAME** directory as the 'UCI HAR Dataset' folder (not within the folder, or outside the 
##'directory where the folder is located).


meanSTD<-function(){
    #'This function finds the mean() and std() variable names, and their indices using features.txt
    #'It also cleans the variable names.
    library(dplyr)
    
    #'reads in features.txt list and creates 2 data frames with mean() variables in one, 
    #'and std() variables in the other.
    features<-read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
    means<-features[grep("mean()",features$V2,fixed=TRUE),]
    std<-features[grep("std()",features$V2,fixed=TRUE),]
    
    #'row binds the mean,std data frames then arranges them in ascending order.
    meanStd<-rbind(means,std)
    meanStd<-arrange(meanStd,V1)
    
    #'cleans the additional 'Body' in the last 6 names as well as the '()' in each name
    meanStd[61:66,"V2"]<-sub("Body","",meanStd[61:66,"V2"])
    meanStd[1:nrow(meanStd),"V2"]<-gsub("()","",meanStd[1:nrow(meanStd),"V2"],fixed=TRUE)
    meanStd[1:nrow(meanStd),"V2"]<-gsub("-","",meanStd[1:nrow(meanStd),"V2"],fixed=TRUE)
    meanStd[1:nrow(meanStd),"V2"]<-gsub("Acc","Acceleration",meanStd[1:nrow(meanStd),"V2"],fixed=TRUE)
    meanStd[1:nrow(meanStd),"V2"]<-gsub("Mag","Magnitude",meanStd[1:nrow(meanStd),"V2"],fixed=TRUE)
    meanStd[1:nrow(meanStd),"V2"]<-gsub("Gyro","Gyroscope",meanStd[1:nrow(meanStd),"V2"],fixed=TRUE)
    meanStd[1:nrow(meanStd),"V2"]<-gsub("mean","Mean",meanStd[1:nrow(meanStd),"V2"],fixed=TRUE)
    meanStd[1:nrow(meanStd),"V2"]<-gsub("std","StdDev",meanStd[1:nrow(meanStd),"V2"],fixed=TRUE)
    meanStd[1:nrow(meanStd),"V2"]<-gsub("^t","time",meanStd[1:nrow(meanStd),"V2"])
    meanStd[1:nrow(meanStd),"V2"]<-gsub("^f","frequency",meanStd[1:nrow(meanStd),"V2"])
    
    #'returns a data frame of mean,std variable names and their numeric index
    meanStd
}

activityName<-function(y){
    #'This function takes a numeric list of activities (such as y_train and y_test) and returns
    #'them with numbers swapped for activity labels.
    
    #'Reads the Activity labels data set into an 'act' data frame.
    act<-read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)
    
    #'This for loop checks through each number one at a time in the activity labels set. 
    for (i in 1:nrow(act)) {
      y[y$V1==i,]<-act[act$V1==i,"V2"]
    }
    
    #'Assigns the column name 'Activity' to the result set of Activity labels and returns.
    names(y)<-"Activity"
    y
}

clean<-function(name){
    #'This function is meant to take in 'train' or 'test' as a name. It uses this name to find the 
    #'appropriate datasets. It cleans, labels and returns a data frame with subject, activity, and
    #'measurement variables for mean() and std().
  
    #'reads in subject, measurements and activity data from train or test directory.
    subject<-read.table(paste("UCI HAR Dataset/",name,"/subject_",name,".txt",sep=""),stringsAsFactors=FALSE)
    X<-read.table(paste("UCI HAR Dataset/",name,"/X_",name,".txt",sep=""),stringsAsFactors=FALSE)
    y<-read.table(paste("UCI HAR Dataset/",name,"/y_",name,".txt",sep=""),stringsAsFactors=FALSE)
    
    #'gets mean(), std() variables' indices and names from features.txt and assigns to cols
    cols<-meanSTD()
    
    #'Uses indices (numeric vector) to preserve mean() and std() columns in the measurements
    #'data frame. Also assigned the variable names to the column.
    preserve<-cols[,1]
    X<-X[,preserve]
    names(X)<-cols[,2]
    
    #'The activity data frame is labelled with activity names. 
    y<-activityName(y)
    
    #'The column name of the Subject data frame is renamed.
    names(subject)<-"Subject"
    
    #'column binds Subject, Activity, measurements and returns the data frame
    X<-cbind(subject,y,X)
    X
}

run_analysis<-function(){
    library(dplyr)
    
    #'cleans the test data, and cleans the train data. Assigns each to a variable. 
    #'Then merges the two cleaned data frames (rbinds uing the previous fxn)
    test<-clean("test")
    train<-clean("train")
    mergedData<-rbind(test,train)
    
    #'groups the data by Subject then Activity and makes/returns the summary table of means.
    grouped<-group_by(group_by(mergedData,Subject,add=TRUE),Activity,add=TRUE)
    summary<-summarise_each(grouped,funs(mean),3:ncol(grouped))
    summary
}