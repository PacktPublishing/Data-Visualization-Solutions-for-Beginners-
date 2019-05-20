#Author @ Mohammed 
#Pact Publishing Section 4
#Code used to Fetch/install/Load all libraries required

#setwd("D:/Packt_R_Codes/DemoR_Section4")

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


checkInstallLoad("class")
checkInstallLoad("data.table")
checkInstallLoad("ggplot2")
checkInstallLoad("treemap")

print("============== Completed loading libraries  ===================")