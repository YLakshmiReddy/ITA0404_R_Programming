v1 <- c(1, 2, 3, 4, 5, 6)
v2 <- c(7, 8, 9, 10, 11, 12)
row_names <- c("R1", "R2")
col_names <- c("C1", "C2", "C3")
mat_names <- c("M1", "M2")

arr_named <- array(c(v1, v2), dim = c(2, 3, 2),
                   dimnames = list(row_names, col_names, mat_names))
print("Array with Dimension Names:")
print(arr_named)

print("Element at Row 2, Column 3, Matrix 1:")
print(arr_named[2, 3, 1])

print("Entire Matrix 2:")
print(arr_named[, , 2])