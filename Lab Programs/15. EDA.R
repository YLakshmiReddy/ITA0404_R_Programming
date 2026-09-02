data("iris")

print("Dimensions:")
print(dim(iris))

print("Summary:")
print(summary(iris))

print("Standard Deviations:")
print(sapply(iris[, 1:4], sd))

print("Quantiles:")
print(sapply(iris[, 1:4], quantile))

print("Mean grouped by Species:")
print(aggregate(. ~ Species, data = iris, mean))

iris$Length_Category <- cut(iris$Sepal.Length,
                            breaks = c(4, 5.5, 6.5, 8),
                            labels = c("Short", "Medium", "Long"))

print("Pivot Table (Count by Species & Sepal.Length Category):")
print(table(iris$Species, iris$Length_Category))