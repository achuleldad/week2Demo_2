#creating a dataframe
Subject<- c(1:7)
Gender<- c('male','male','male',NA,'Female','Female','Female')
Age<- c(23,34,32,54,65,45,35)
Weight<-c(67.5, NA, 63.7, 56.8, 89.9, 87.5, 77.5)
Trial <-data.frame(Subject,Gender,Age,Weight)
View(Trial)


Trial[4,3]
Trial[,3]
help("setNames")
#install library

install.packages("data.table")
#load library
library(data.table)

setnames(Trial, 'Subject','participant')
View(Trial)
Trial[!complete.cases(Trial),]
Trial[!complete.cases(Trial),'Age']

Trial$Age [Trial$participant==6] <- 55.0
View(Trial)
View(Trial)
Trial$Gender[Trial$participant==4]<-'male'
Trial$Weight[Trial$participant==4]<-65
View(Trial)



# create a data frame
Manager<-c(1:5)
Date<-c('10/15/18', '01/11/18', '10/21/18', '10/28/18', '05/01/18')
Country<-c('US','US','IRL','IRL', 'IRL')
Gender<-c('M','F', 'F', 'M', 'F')
Age<-c(32,45,25,39,99)
q1<-c(5,3,3,3,2)
q2<-c(4,5,5,3,2)
q3<-c(5,2,5,4,1)
q4<-c(5,5,5,NA,2)
q5<-c(5,5,2,NA,1)
