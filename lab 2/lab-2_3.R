setwd("~/Downloads/statistics-2-datasets/lab 2/")

samples <- 200
defective <- 4
alpha <- 0.05

cat("====================", "\n")
cat("== L2.3", "\n")
cat("====================", "\n")

# A
cat("H0: p = alpha", "\n")
cat("Ha: p < alpha", "\n")

# C
z0 <- ((defective/samples) - alpha)/sqrt(alpha*(1-alpha)/samples)

# D
criticalValue <- qnorm(alpha)

# E
# See C


# F
pValue <- pnorm(z0)

if (pValue < alpha) {
  cat(pValue, "<", alpha, " (p < alpha), this means that H0 can be rejected and Ha can be accepted", "\n")
} else if (pValue == alpha) {
  cat(pValue, "=", alpha, " (p = alpha), this means that H0 can be accepted and Ha can be rejected", "\n")
} else {
  cat(pValue, ">", alpha, " (p > alpha), this means that both H0 and Ha can be rejected", "\n")
}

cat("====================", "\n")

rm(list = ls())