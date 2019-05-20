#Author @ Mohammed 
# Pact Publishing Section 3
#Code used to Fetch/install/Load all libraries required

#Set Working Directory
setwd("D:/Packt_R_Codes/DemoR_Section3")

print("============== Beginning to load libraries  ===================")

#Function To check if 
checkInstallLoad <- function(libName) 
{
  if(!require(libName, character.only=TRUE)) 
  {
    install.packages(libName)
    require(libName, character.only=TRUE)
  }
}

checkInstallLoad("RMySQL")
checkInstallLoad("data.table")
checkInstallLoad("plyr")
checkInstallLoad("dplyr")
checkInstallLoad("ggplot2")

print("============== Completed loading libraries  ===================")
