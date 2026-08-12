boxplot(weight ~ Diet, data=ChickWeight)
hist(ChickWeight$weight[ChickWeight$Diet == 1])
plot(ChickWeight$Time, ChickWeight$weight, col=ChickWeight$Diet)