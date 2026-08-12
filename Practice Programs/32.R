# i
sum(airquality$Temp) / length(airquality$Temp)
# ii
head(airquality, 5)
# iii
airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
# iv
airquality[which.min(airquality$Temp), ]
# v
sum(airquality$Wind > 17, na.rm=TRUE)