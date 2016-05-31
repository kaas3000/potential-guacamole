setwd("~/Downloads/statistics-2-datasets/lab 5/")
library(agricolae)
library(car)

library(gdata)		#	activate	library
mydata	=	read.csv("Lab 5.1.csv", header = FALSE, sep = ";")	#	import	the	file	in	dataframe
v1 <- mydata$V1
v2 <- mydata$V2

cat("====================", "\n")
cat("== L5.1", "\n")
cat("====================", "\n")

# A
# print(mydata)

# B
boxplot(v2~factor(v1))

# C
cat("The Barlett test:")
print(
  bartlett.test(
    v2~factor(v1)
  )
)

# D
cat("The actual ANOVA:")

data = data.frame(y = v2, x = factor(v1))
model = lm(v2 ~ factor(v1), data = data)

result <-oneway.test(v2 ~ factor(v1), data)
result <- aov(model)
print(result)

layout(matrix(c(4,4,4,1,2,3,5,5,5),3,3,byrow=T),
        width=c(.36,.32,.32),height=c(.2,.6,.2))
par(mfrow=c(2,2))
plot(result)