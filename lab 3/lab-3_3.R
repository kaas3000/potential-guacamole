setwd("~/Downloads/statistics-2-datasets/lab 3/")

diseaseTestData <- matrix(
  c(37, 3, 1, 25),
  nrow = 2,
  ncol = 2,
  dimnames = list(
    "fluorecence" = c("positive", "negative"),
    "PCR" = c("positive", "negative")
  )
)

cat("====================", "\n")
cat("== L3.3", "\n")
cat("====================", "\n")

# A
cat("Use the McNemar test when comparing methods", "\n")

# B
print(
  ftable(diseaseTestData)
)

diseaseMcnemar <- mcnemar.test(diseaseTestData)
print(diseaseMcnemar)
if (diseaseMcnemar$p.value > 0.05) {
  cat("P value > 0.05, There is a significant difference in the results of the disease detection methods", "\n")
} else {
  cat("P value < 0.05 There is no significant difference in the results of the disease detection methods", "\n")
}

# C
cat("The degree of agreement between the disease data is ", cohen.kappa(diseaseTestData)$kappa, "\n")

# D
A <- diseaseTestData[1, 1]
B <- diseaseTestData[1, 2]
C <- diseaseTestData[2, 1]
D <- diseaseTestData[2, 2]
cat("Sensivity: ", A/(A+C), "\n")
cat("Specifity: ", D/(B+D), "\n")

sickPeople <- (1/1000)*200000
cat("If 1/10000 people get the disease then ", sickPeople , " individuals of the 200000 tested people actually have the disease", "\n")
cat("If ", sickPeople, " people have the disease then ", 37/38*sickPeople, " people will get a positive diagnosis when using the fluorescence method.", "\n")
cat("There are", (1/38)*200000, " people that will get a false positive diagnosis. A solution could be to do the test one more time (if the fluorescence method allows this and has another 37/38 chance for the correct output). If this isn't the case, then the more expensive PCR can be used for the correct diagnosis", "\n")

cat("====================", "\n")
rm(list = ls())