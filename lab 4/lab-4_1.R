setwd("~/Downloads/statistics-2-datasets/lab 4/")

temperatureData <- c(0, 20, 40, 60, 80, 100)
activityData <- c(171, 181, 190, 200, 209, 218)

cat("====================", "\n")
cat("== L4.1", "\n")
cat("====================", "\n")

# A
plot(temperatureData,
     activityData,
     xlab = "Temperature",
     ylab = "Activity",
     main = "Activity vs temperature")

# B
firstOrderResult <- lm(activityData ~ temperatureData)
firstOrderSummary <- summary.lm(firstOrderResult)

secondOrderResult <- lm(activityData ~ temperatureData + I(temperatureData^2))
secondOrderSummary <- summary.lm(secondOrderResult)

thirdOrderResult <- lm(activityData ~ temperatureData + I(temperatureData^2) + I(temperatureData^3))
thirdOrderSummary <- summary.lm(thirdOrderResult)

fourthModelResult <- lm(activityData ~ -1 + temperatureData)
fourthModelSummary <- summary.lm(fourthModelResult)

print(firstOrderSummary)
print(secondOrderSummary)
print(thirdOrderSummary)
print(fourthModelSummary)

