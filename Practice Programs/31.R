v <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean(v); median(v)
ux <- unique(v); ux[which.max(tabulate(match(v, ux)))] # Mode
sort(unique(v), decreasing=TRUE)[2] # 2nd highest
sort(unique(v))[3] # 3rd lowest