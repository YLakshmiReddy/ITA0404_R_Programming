library(nnet)
library(caret)

data(iris)
set.seed(123)

train_idx <- sample(1:nrow(iris), 0.8 * nrow(iris))
train <- iris[train_idx, ]
test <- iris[-train_idx, ]

model <- multinom(Species ~ Petal.Width + Petal.Length, data = train)
predictions <- predict(model, test)

confusionMatrix(predictions, test$Species)