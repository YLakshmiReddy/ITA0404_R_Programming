if (!requireNamespace("reshape2", quietly = TRUE)) install.packages("reshape2")
library(reshape2)

data("airquality")

melted_air <- melt(airquality, id.vars = c("Month", "Day"))
print(head(melted_air))

monthly_avg <- dcast(melted_air, Month ~ variable, mean, na.rm = TRUE)
print("Monthly Averages for Ozone, Solar.R, Wind, Temp:")
print(monthly_avg)