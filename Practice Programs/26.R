data(airquality)
print(is.data.frame(airquality))
airquality <- airquality[order(airquality[,1], airquality[,2]), ]
airquality <- airquality[, !(names(airquality) %in% c("Solar.R", "Wind"))]
print(head(airquality))