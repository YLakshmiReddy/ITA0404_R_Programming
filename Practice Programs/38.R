data(Titanic)
df_titanic <- as.data.frame(Titanic)
library(ggplot2)
# a & b
ggplot(df_titanic, aes(x=Class, y=Freq, fill=Survived)) + geom_bar(stat="identity", position="dodge") + facet_wrap(~Sex)
# c
hist(as.numeric(df_titanic$Age)) # Note: Titanic dataset 'Age' is a factor (Child/Adult)