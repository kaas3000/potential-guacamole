library("ggplot2")
library("scales")

setwd("~/Downloads/statistics-2-datasets/assignment/")
moleConversionData <- c(
  4.2,
  4.7,
  4.7,
  5.0,
  3.8,
  3.6,
  3.0,
  5.1,
  3.1,
  3.8,
  4.8,
  4.0,
  5.2,
  4.3,
  2.8,
  2.0,
  2.8,
  3.3,
  4.8,
  5.0
)

cat("====================", "\n")
cat("== L1.2", "\n")
cat("====================", "\n")

# A
cat("Mean: ", mean(moleConversionData), "\n")
cat("Variance: ", var(moleConversionData), "\n")
cat("Standard deviation: ", sd(moleConversionData), "\n")

png(filename = "plots/31-moleConversion-boxplot.png")
boxplot(moleConversionData)
dev.off()

cat("\n", "====================", "\n\n")

rm(list = ls())