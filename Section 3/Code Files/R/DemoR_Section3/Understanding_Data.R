#Author @ Mohammed 
# Pact Publishing Section 3
# Code used to load data
source("Libraries.r")

data<-read.csv(file = "AdultDataSet.csv",header = TRUE)

View(head(data,20))

ndat<-data

# Here its obvious that age is numeric 

#But what about type_employer , how can you simply conclude from 10 rows what is its type/class

summary(ndat$type_employer)
class(ndat$type_employer)
# From this we verify and know that its type is factor

summary(ndat$fnlwgt)

