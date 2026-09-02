m1 <- matrix(1:6, nrow = 2, ncol = 3)
m2 <- matrix(7:12, nrow = 2, ncol = 3)
m3 <- matrix(13:18, nrow = 2, ncol = 3)

combined_row <- rbind(m1, m2, m3)
print("Combined Row-wise Matrix:")
print(combined_row)