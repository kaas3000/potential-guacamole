setwd("~/Downloads/statistics-2-datasets/assignment/")
solarData <- read.csv("../Ex612.csv", header = FALSE, sep = ";") $V1
solarMean = mean(solarData)

cat("====================", "\n")
cat("== L1.1", "\n")
cat("====================", "\n")

# A
cat("Mean: ", solarMean, "\n")
cat("Standard deviation: ", sd(solarData), "\n")

# B
png(filename = "plots/11-solar-scatter.png", bg = "white")
plot(solarData, 
     type = "p",
     main = "Solar data",
     xlab = "Day",
     ylab = "Solar intensity (watt/m^2")
abline(solarMean, 0)
dev.off()

png(filename = "plots/12-solar-abline.png", bg = "white")
plot(solarData, 
     type = "p",
     main = "Solar data",
     xlab = "Day",
     ylab = "Solar intensity (watt/m^2")
abline(solarMean, 0)
dev.off()


png(filename = "plots/13-solar-line.png", bg = "white")
plot(solarData, 
     type = "l",
     main = "Solar data",
     xlab = "Day",
     ylab = "Solar intensity (watt/m^2")
abline(solarMean, 0)
dev.off()


cat("\n", "====================", "\n\n")

rm(list = ls())