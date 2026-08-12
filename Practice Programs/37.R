model <- lm(weight ~ Time + Diet, data=ChickWeight)
pred <- predict(model, data.frame(Time=10, Diet=factor(1, levels=levels(ChickWeight$Diet))))
print(pred)
# Error check requires actual value at Time 10/Diet 1