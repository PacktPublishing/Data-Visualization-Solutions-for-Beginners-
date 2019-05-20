#Author @ Mohammed 
#Pact Publishing Section 5
#Code used to Fetch/install/Load all libraries required

#Loading Libraries
#source("Libraries.R")

#Loading data in R environment
data<-read.csv("diabetes.csv",header = T)

#View(head(data))

#Explanation of data 

#Several constraints were placed on the selection of these instances from a 
#larger database. In particular, all patients here are females at least 21 years
#old of Pima Indian heritage.

#Pregnancies specifies number of times a person has been pregnant
#summary(as.factor(data$Pregnancies))

#Glucose is Plasma glucose concentration a 2 hours in an oral glucose tolerance test 
#summary(data$Glucose)

#Blood Pressure -> Diastolic blood pressure (mm Hg) 
#summary(data$BloodPressure)

#Skin Thickness -> Triceps skin fold thickness (mm) 
#summary(data$SkinThickness)

#Insulin -> 2-Hour serum insulin (mu U/ml) 
#summary(data$Insulin)

#BMI -> Body mass index (weight in kg/(height in m)^2) 
#summary(data$BMI)

#Diabetes pedigree function 
#summary(data$DiabetesPedigreeFunction)

#Age
#summary(data$Age)

#Outcome -> 1->Diabetes 0->No Diabetes
#summary(as.factor(data$Outcome))

#Data seems fairly straight forward with no missing values , Hence moving on ahead
#with EDA

print("=======================Data Loaded=========================================")
