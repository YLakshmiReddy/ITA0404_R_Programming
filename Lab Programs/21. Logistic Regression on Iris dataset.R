iris_bin <- subset(iris, Species %in% c("versicolor", "virginica"))
iris_bin$Species <- droplevels(iris_bin$Species)

set.seed(123)
sample_idx <- sample(seq_len(nrow(iris_bin)), size = 0.8 * nrow(iris_bin))
train_data <- iris_bin[sample_idx, ]
test_data <- iris_bin[-sample_idx, ]

model_logit <- glm(Species ~ Petal.Length + Petal.Width,
                   data = train_data,
                   family = binomial)
summary(model_logit)

prob_preds <- predict(model_logit, newdata = test_data, type = "response")
predicted_classes <- ifelse(prob_preds > 0.5, "virginica", "versicolor")

confusion_mat <- table(Actual = test_data$Species, Predicted = predicted_classes)
print("Confusion Matrix:")
print(confusion_mat)