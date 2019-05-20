#Author @ Mohammed 27/02/2017

#Loading Libraries
source("Libraries.R")

#Loading Data
source("Data.R")

# Now we have one target Variable that is binary.
# This leaves us with 8 variables
# Out of the 8 Pregnancies can be considered as a factor
# The pending 7 variables are continous numeric

#For every data analysis problem let us first plot the target variable against
#all the independent variable.

# For two factor variables we can use a stacked bar plot or a mosaic plot
# For one factor and other numeric , a box plot will do
# For two numeric variables , a scatter plot is perfect

View(head(data))
#histogram to see age
hist(data$Age)
#Normal bar chart
barplot(table(as.factor(data$Pregnancies)),space =0.01)

#GGPLOT
sub<-data[,c(9,1)]
p<-ggplot(sub, aes(x=Outcome, y=Pregnancies)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_minimal()
p

#Tree Map
sub<-data[,c(9,1,5)]
treemap(sub, #Your data frame object
        index=c("Pregnancies","Outcome"),  #A list of your categorical variables
        vSize = "Insulin",  #This is your quantitative variable
        type="index", #Type sets the organization and color scheme of your treemap
        palette = "Reds",  #Select your color palette from the RColorBrewer presets or make your own.
        title="TreeMap", #Customize your title
        fontsize.title = 14 #Change the font size of the title
)

# Outcome vs Pregnancies
plot(as.factor(data$Outcome)~as.factor(data$Pregnancies))
#Inference-> Women pregnant more than 15 times have no diabetes,
#             Women pregnat between 0-6 times have a lower probability of diabetes

#Outcomme Vs Glucose
boxplot(data$Glucose~data$Outcome)
#Inference-> Women Having diabetes usually have higher glucose values,
#             However we cannot say this with extreme confidence as women who dont 
#             have diabetes can also have high glucose values

#Outcome Vs Blood Pressure
boxplot(data$BloodPressure~data$Outcome)
#Inference-> Women Having diabetes usually have higher Blood pressure,
#             However we cannot cosinder blood pressure to determine diabetes

#Outcome Vs Skin Thickness
boxplot(data$SkinThickness~data$Outcome)
#Inference-> Women Having diabetes usually have more skin Thickness

#Outcome Vs Insulin
boxplot(data$Insulin~data$Outcome)
#Inference-> Women Having diabetes usually have outlier levels of insulin distributed
#             on the max and min side, but mostly on the down side

#Outcome Vs BMI
boxplot(data$BMI~data$Outcome)
#Inference-> Women Having diabetes usually have Considerbaly high level of BMI
#             as expected

#Outcome Vs DiabetesPedigreeFunction
boxplot(data$DiabetesPedigreeFunction~data$Outcome)
#Inference-> Women Having diabetes usually have Considerbaly higher values

#Outcome Vs Age
boxplot(data$Age~data$Outcome)
#Inference-> Age doesnt play any role wrt diabetes

#Plotting all numeric Values against each other
data_n<-data[,c(2,3,4,5,6,7,8)]
plot(data_n)
#Inference ->   SkinThickness and BMI have a Linear RelationShip
#                Glucose and Insulin also are slightly Linear



#Inference -> Blood pressure and glucose are highly correlated.
#             Blood Pressure,Glucose , Age are Determining factors of diabetes
#             for the people in the first principal component
#             Skin Thickness and insulin are highly determining factors of diabetes
#             for the people in the second principal component
#             BMI fails to explain the Outcome variable and has least effect


Print("============================End OF EDA==================================")
