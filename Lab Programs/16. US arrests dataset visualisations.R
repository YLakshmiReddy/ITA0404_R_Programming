data("USArrests")

print("Summary:")
print(summary(USArrests))

state_max_rape <- rownames(USArrests)[which.max(USArrests$Rape)]
print(paste("State with largest Rape arrests:", state_max_rape))

state_max_murder <- rownames(USArrests)[which.max(USArrests$Murder)]
state_min_murder <- rownames(USArrests)[which.min(USArrests$Murder)]
print(paste("Max murder rate:", state_max_murder))
print(paste("Min murder rate:", state_min_murder))

print("Correlation Matrix:")
print(cor(USArrests))

median_assault <- median(USArrests$Assault)
q25_murder <- quantile(USArrests$Murder, 0.25)
filtered_states <- rownames(USArrests)[USArrests$Assault > median_assault & USArrests$Murder < q25_murder]
print("States above median assault and bottom 25% murder:")
print(filtered_states)

par(mfrow = c(2, 2))
hist(USArrests$Murder, main = "Histogram of Murder", xlab = "Murder")
plot(density(USArrests$Murder), main = "Density of Murder")
plot(USArrests$Assault, USArrests$Murder, xlab = "Assault", ylab = "Murder", main = "Scatterplot")
barplot(USArrests$Rape[1:10], names.arg = rownames(USArrests)[1:10], las = 2, main = "Rape (Top 10)")
par(mfrow = c(1, 1))