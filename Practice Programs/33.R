library(reshape2)
data(airquality)

# (i) Summary Statistics
summary_stats <- summary(airquality)
print(summary_stats)

# (ii) & (iii) Melt airquality data set with Month and Day as ID variables
molten_air <- melt(airquality, id.vars = c("Month", "Day"))
print(head(molten_air))

# (iv) Cast the molten airquality data set with respect to Month and Day
casted_air <- dcast(molten_air, Month + Day ~ variable)
print(head(casted_air))

# (v) Compute the average of Ozone, Solar.R, Wind and Temp per month
monthly_avg <- dcast(molten_air, Month ~ variable, mean, na.rm = TRUE)
print(monthly_avg)