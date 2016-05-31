setwd("~/Downloads/statistics-2-datasets/lab 3/")

cat("====================", "\n")
cat("== L3.4", "\n")
cat("====================", "\n")

# A
library(MASS)

flaws <-c(0,3,11,11,13,11,12,10,9,0)
# estimate lambda
mydist <- fitdistr(flaws, "poisson")
lambda <- mydist$estimate
lambda

# calculate props from 0:8
prop <- dpois(0:8,lambda) # makes a vector with the propabilities
# do not forget to calculate more then 8
prop.more <- 1-sum(prop)
prop <-append(prop, prop.more)
prop

# test if flaws are distributed according poisson
alpha = 0.01
myresult <-chisq.test(flaws, p=prop)

# B & C
pvalue = pchisq(myresult$statistic, 1, lower.tail = FALSE)
alpha <- 0.01
if (pvalue > alpha) {
  cat("The test returns a p-value of", pvalue, "which is less than alpha, which means that the distributions match each other (accept H0)", "\n")
} else {
  cat("The test returns a p-value of", pvalue, "which is more than alpha,  which means that the distributions don't match each other (reject H0)", "\n")
}

# D
N <- sum(flaws)
cramV <- myresult$statistic/(N*7) # k = 7 (8 columns - 1)
cat("The cramerV = ", cramV, " which means that there is a very strong difference and the flaws data is not Poisson distributed", "\n")

cat("====================", "\n")
rm(list = ls())