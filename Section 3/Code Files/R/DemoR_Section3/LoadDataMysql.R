#Author @ Mohammed 
# Pact Publishing Section 3
# Code used to load data from Mysql 
source("Libraries.r")

mydb = dbConnect(MySQL(), user='root', password='root', dbname='packt', host='127.0.0.1')

dbListTables(mydb)

rs = dbSendQuery(mydb, "select * from adultdataset")

data = fetch(rs, n=-1)
View(head(data))
