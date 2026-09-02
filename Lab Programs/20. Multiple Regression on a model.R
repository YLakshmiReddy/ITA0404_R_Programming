data("ChickWeight")

model_chick <- lm(weight ~ Time + Diet, data = ChickWeight)
summary(model_chick)

chick_preds <- predict(model_chick, newdata = ChickWeight)

rmse <- sqrt(mean((ChickWeight$weight - chick_preds)^2))
mae <- mean(abs(ChickWeight$weight - chick_preds))

print(paste("RMSE:", rmse))
print(paste("MAE:", mae))