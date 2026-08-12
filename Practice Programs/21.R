v1 <- 1:9
v2 <- 10:18
arr <- array(c(v1, v2), dim=c(3, 3, 2))
print(arr[2, , 2]) # 2nd row, 2nd matrix
print(arr[3, 3, 1]) # 3rd row, 3rd column, 1st matrix