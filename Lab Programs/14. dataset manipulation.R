if (!requireNamespace("reshape2", quietly = TRUE)) install.packages("reshape2")
library(reshape2)

data("ChickWeight")

sorted_chick <- ChickWeight[order(ChickWeight$Diet, ChickWeight$weight), ]
print(head(sorted_chick))

melted_chick <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))

casted_chick <- dcast(melted_chick, Diet ~ variable, mean)
print("Mean values by Diet:")
print(casted_chick)