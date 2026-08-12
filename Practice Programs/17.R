v <- 1:12
dim_names <- list(c("Row1", "Row2", "Row3"), c("Col1", "Col2"), c("Tab1", "Tab2"))
arr <- array(v, dim=c(3, 2, 2), dimnames=dim_names)
print(arr)