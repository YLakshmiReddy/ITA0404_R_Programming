data(USArrests)
# i
str(USArrests); summary(USArrests)
rownames(USArrests)[which.max(USArrests$Rape)]
# max/min murder
rownames(USArrests)[which.max(USArrests$Murder)]
rownames(USArrests)[which.min(USArrests$Murder)]
# ii
cor(USArrests)
rownames(USArrests)[USArrests$Assault > median(USArrests$Assault)]
rownames(USArrests)[USArrests$Murder <= quantile(USArrests$Murder, 0.25)]
# iii
hist(USArrests$Murder); plot(density(USArrests$Murder))
plot(USArrests$UrbanPop, USArrests$Murder, col=rbPal <- colorRampPalette(c('blue','red'))(10)[as.numeric(cut(USArrests$Assault,10))])
barplot(USArrests$Murder, names.arg=rownames(USArrests), las=2)