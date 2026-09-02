par(mfrow = c(2, 3))

boxplot(airquality$Ozone, main = "Boxplot of Ozone")
hist(airquality$Temp, main = "Histogram of Temperature", xlab = "Temp")
barplot(table(mtcars$cyl), main = "Bar Plot of Cylinders", xlab = "Cylinders")
plot(airquality$Temp[1:30], type = "l", main = "Line Chart (Temp)", ylab = "Temp")
plot(airquality$Wind, airquality$Temp, main = "Scatter Plot (Wind vs Temp)",
     xlab = "Wind", ylab = "Temp")

par(mfrow = c(1, 1))