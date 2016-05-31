setwd("~/Downloads/statistics-2-datasets/lab 4/")

library(gdata)		#	activate	library
mydata	=	read.xls("lab4data.xlsx")	#	import	the	file	in	dataframe
stack.loss	<- mydata[,	"stack.loss"]	 #	select	column	and	put	in	vector
flow	<- mydata[,	"flow"]
temp	<-mydata[,	"temp"]
conc	<-mydata[,	"conc"]

cat("====================", "\n")
cat("== L4.3", "\n")
cat("====================", "\n")

# 
model <- lm(stack.loss ~ flow + temp)
print(
  summary(model)$sigma
)