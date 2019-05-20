#Author @ Mohammed 
# Pact Publishing Section 3
# Code used to load data
source("Libraries.r")

#Downloading adult income data set from UCI
print("Downloading Data")

data = read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data",
                  sep=",",header=F,
                  col.names=c("age", "type_employer", "fnlwgt", "education", 
                              "education_num","marital", "occupation", "relationship", "race","sex",
                              "capital_gain", "capital_loss", "hr_per_week","country", "income"),
                  fill=FALSE,strip.white=T)

print("Data Loaded")
print("Loading datasets complete.")

write.csv(x = data,file = "AdultDataSet.csv")
