titanic_df <- as.data.frame(Titanic)

class_survival <- xtabs(Freq ~ Survived + Class, data = titanic_df)
barplot(class_survival, legend = rownames(class_survival),
        main = "Survival vs Class", col = c("red", "green"), beside = TRUE)

gender_survival <- xtabs(Freq ~ Survived + Sex, data = titanic_df)
barplot(gender_survival, legend = rownames(gender_survival),
        main = "Survival vs Gender", col = c("red", "blue"), beside = TRUE)

age_survival <- xtabs(Freq ~ Age, data = titanic_df)
barplot(age_survival, main = "Distribution of Age Category", col = "lightgray")