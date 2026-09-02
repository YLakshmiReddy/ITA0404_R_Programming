set.seed(42)
advertising <- data.frame(
  Spend = c(10, 20, 30, 40, 50, 60, 70, 80, 90, 100),
  Sales = c(15, 28, 42, 45, 60, 65, 78, 85, 95, 105)
)

model_ad <- lm(Sales ~ Spend, data = advertising)
summary(model_ad)

new_data <- data.frame(Spend = c(45, 85, 120))
predictions <- predict(model_ad, newdata = new_data)
print("Predicted Sales:")
print(data.frame(new_data, Predicted_Sales = predictions))