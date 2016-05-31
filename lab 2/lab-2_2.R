setwd("~/Downloads/statistics-2-datasets/lab 2/")

premiumData <- c(19, 22, 24, 24, 25, 25, 26, 26, 28, 32)
regularData <- c(16, 20, 21, 22, 23, 22, 27, 25, 27, 28)

cat("====================", "\n")
cat("== L2.2", "\n")
cat("====================", "\n")

# A
cat("The best way to test if the car performs significantly better with premium gas is with a paired t-test", "\n")

# B
# Al lang gedaan :]

# C
asdf <- 
  t.test(x = regularData,
       y = premiumData,
       alternative = "less",
       paired = TRUE,
       conf.level = 0.1)
print(asdf)
cat("A low p-value is found with the t.test, which means that H0 can be rejected and Ha can be accepted", "\n")

cat("====================", "\n")

rm(list = ls())