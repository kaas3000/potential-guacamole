setwd("~/Downloads/statistics-2-datasets/lab 3/")

enqueteData <- matrix(
  c(37, 20, 7, 36),
  nrow = 2,
  ncol = 2,
  dimnames = list(
    "before" = c("agree", "disagree"),
    "after"  = c("agree", "disagree")
  )
)

cat("====================", "\n")
cat("== L3.2", "\n")
cat("====================", "\n")

# A
cat("Use the McNemar test when comparing methods", "\n")

# B
print(enqueteData)
mcNemarEnquete <- mcnemar.test(enqueteData)

if (mcNemarEnquete$p.value > 0.05) {
  cat("The p-value is more than 0.05 which means that there is no significant change in the opinion of the interviewed americans", "\n")
} else {
  cat("The p-value is less than 0.05 which means that there is a significant difference in the opinion of the interviewed americans", "\n")
}

cat("====================", "\n")
rm(list = ls())









# 
# posthoc.relation <- function(cramersV) {
#   if (cramersV == 0) { cat("No difference") }
#   if (cramersV > 0 & cramersV <= 0.05)
# }