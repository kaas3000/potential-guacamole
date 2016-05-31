setwd("~/Downloads/statistics-2-datasets/lab 4/")

brightnessData <- c(54, 61, 65, 100, 100, 100, 50, 57, 54)
contrastData <- c(56, 80, 70, 50, 65, 80, 25, 35, 26)
usefulRangeData <- c(96, 50, 50, 112,  96,  80,  155, 144, 255)

cat("====================", "\n")
cat("== L4.2", "\n")
cat("====================", "\n")

# A
model <- lm(usefulRangeData ~ contrastData)
print(
  summary(model)
)