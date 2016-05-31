library("ggplot2")
library("scales")

setwd("~/Downloads/statistics-2-datasets/assignment/")
semiconductorData <- read.csv("../Ex634.csv", header = FALSE, sep = ";") $V1


cat("====================", "\n")
cat("== L1.2", "\n")
cat("====================", "\n")


# A
stem(semiconductorData)

# B
cat("Mean: ", mean(semiconductorData), "\n")
cat("Median: ", median(semiconductorData), "\n")
cat("Standard deviation", sd(semiconductorData), "\n")

# C
png(filename = "plots/21-semiconductor-quantile-quantile.png")
qqnorm(semiconductorData)
qqline(semiconductorData)
dev.off()

cat("The data seems normally distributed, despite deviating at the start and at the end.", "\n")

# D
zValueOfzo <- pnorm(650,
                    mean = mean(semiconductorData),
                    sd = sd(semiconductorData),
                    lower.tail = FALSE)
cat(percent(zValueOfzo), "of the data is exceeding 650 megahertz", "\n")


cat("\n", "====================", "\n\n")

rm(list = ls())