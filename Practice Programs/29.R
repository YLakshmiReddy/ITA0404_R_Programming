data(iris)
# i
dim(iris); str(iris); summary(iris); sapply(iris[,-5], sd)
# ii
aggregate(. ~ Species, iris, function(x) c(mean=mean(x), sd=sd(x)))
# iii
quantile(iris$Sepal.Width); quantile(iris$Sepal.Length)
# iv
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris$Sepal.Length, breaks=quantile(iris$Sepal.Length), include.lowest=TRUE)
# v & vi
aggregate(. ~ Species + Sepal.Length.Cate, iris1, mean)
# vii
tapply(iris1$Sepal.Length, list(iris1$Species, iris1$Sepal.Length.Cate), mean)