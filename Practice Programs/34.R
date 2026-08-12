# i
na_count <- colMeans(is.na(airquality))
airquality_clean <- airquality
for(i in 1:ncol(airquality_clean)) {
  if(na_count[i] < 0.1) airquality_clean <- airquality_clean[!is.na(airquality_clean[,i]),]
  else airquality_clean[is.na(airquality_clean[,i]), i] <- mean(airquality_clean[,i], na.rm=TRUE)
}
# ii & iii
model <- lm(Ozone ~ Solar.R, data=airquality_clean)
plot(airquality_clean$Solar.R, airquality_clean$Ozone)
abline(model, col="red")