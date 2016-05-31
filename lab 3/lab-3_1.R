setwd("~/Downloads/statistics-2-datasets/lab 3/")

shootingData <- matrix(
  c(6, 58, 127, 735),
  nrow = 2,
  ncol = 2,
  dimnames = list(
    "sex" = c("women", "men"),
    "age" = c("kids", "adults")
  )
)

cat("====================", "\n")
cat("== L3.1", "\n")
cat("====================", "\n")

# A
cat("Use a 2-way chisquare test when you want to find the relation between two variables", "\n")

# B
chisqResult <- chisq.test(shootingData, p = 0.05)
print(chisqResult)

# C
N <- sum(shootingData)
cramV <- chisqResult$statistic/N # k = 2

cat("The Cramer V value is ", cramV, ", this is very low and means that there is almost no relation between sex and age", "\n")
cat("A visual inspection of the data shows that male adults are by far the most affected by mass shootings", "\n")

cat("====================", "\n")
rm(list = ls())