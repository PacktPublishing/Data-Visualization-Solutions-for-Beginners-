#Author @ Mohammed 
# Pact Publishing Section 3
# Code used to load data
source("Libraries.r")

data<-read.csv(file = "AdultDataSet.csv",header = TRUE)

#Load data
data<-read.csv("despo.csv",header = T)
ndata<-data
table(as.factor(data$type_employer))
#Here we have 1836 Missing values
data<-data[data$type_employer!="?",]
summary(data$type_employer)


#Occupation
table(as.factor(data$occupation))
#Here we have 1843 Missing values
data<-data[data$occupation!="?",]
summary(data$occupation)


table(as.factor(data$country))
#Here we have 583 Missing values
data<-data[data$country!="?",]
summary(data$country)



#This is the CSV FILE WE WILL USE FOR REFERENCE
write.csv(ndata,"AdultDataSet_WITHOUT_NA.csv")
#=========================================
