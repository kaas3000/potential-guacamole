setwd("~/Downloads/statistics-2-datasets/lab 2/")

f1Mean <- 75.6
f1Variance <- 1.5
f1Samples <- 15

f2Mean <- 77.9
f2Variance <- 1.2
f2Samples <- 20

cat("====================", "\n")
cat("== L2.1", "\n")
cat("====================", "\n")

# A
cat("Hypothesis H0: the mean of formula 1 equals the mean of formula 2", "\n")
cat("Hypothesis Ha: the mean of formula 1 is lower then the mean of formula 2", "\n")

# B
alpha <- 0.05

# C
cat("For this problem, the one-sided, 2 sample Z test should be used because two averages are compared, the population standard deviation is known. The question is to test if one value is greater than another value, which means a one sided problem.", "\n")

# D
cat("The critical value is: ", qnorm(alpha), "\n")

# E
hypothesisValue <- (f1Mean - f2Mean)/sqrt(f1Variance/f1Samples + f2Variance/f2Samples)
cat("The hypothesis value is: ", hypothesisValue , "\n")

# F
cat("The corresponding p-value is: ", pnorm(hypothesisValue), "\n")

# G
cat("Because of the low p-value, H0 can be rejected and Ha can be accepted", "\n")

cat("====================", "\n")

rm(list = ls())

