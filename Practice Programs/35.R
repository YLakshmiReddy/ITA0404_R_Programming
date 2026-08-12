data(ChickWeight)
# i
ordered_cw <- ChickWeight[order(ChickWeight$Diet, ChickWeight$weight), ]
tail(ordered_cw, 6)
# ii
m_cw <- melt(ChickWeight, id.vars=c("Chick", "Time", "Diet"))
dcast(m_cw, Diet ~ variable, mean)
dcast(m_cw, Diet ~ variable, function(x) names(sort(-table(x)))[1])