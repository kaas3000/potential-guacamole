setwd("~/Downloads/statistics-2-datasets/lab 2/")

sensorAData <- c(3.481, 3.448, 3.485, 3.475, 3.472, 3.477, 3.472)
sensorBData <- c(3.258, 3.254, 3.256, 3.249, 3.241, 3.254, 3.247)

cat("====================", "\n")
cat("== L2.4", "\n")
cat("====================", "\n")

# A
cat("Mean sensor A: ", mean(sensorAData), "\n")
cat("Mean sensor B: ", mean(sensorBData), "\n")

cat("Variance sensor A: ", var(sensorAData), "\n")
cat("Variance sensor B: ", var(sensorBData), "\n")

# B
png(filename = "plots/41-boxplot-sensorA.png")
boxplot(sensorAData)
dev.off()

png(filename = "plots/42-boxplot-sensorB.png")
boxplot(sensorBData)
dev.off()

# C
cat("Sensor 2 seems to have more variation than sensor 1", "\n")

# D
cat("There are 2 variances, so it should be an f-test", "\n")

# E
print(
  var.test(sensorAData, sensorBData))

# F
cat("The p-value of the f-test is higher than alpha of 0.05. This leads to the conclusion that H0 can be rejected and Ha can be accepted.", "\n")


cat("====================", "\n")

rm(list = ls())