m_5x4 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE,
                dimnames = list(paste0("R", 1:5), paste0("C", 1:4)))
print("5x4 Matrix (by row):")
print(m_5x4)

m_3x3 <- matrix(1:9, nrow = 3, ncol = 3, byrow = FALSE,
                dimnames = list(c("Row1", "Row2", "Row3"), c("Col1", "Col2", "Col3")))
print("3x3 Matrix (by column):")
print(m_3x3)

m_2x2 <- matrix(c(10, 20, 30, 40), nrow = 2, ncol = 2, byrow = TRUE,
                dimnames = list(c("A", "B"), c("X", "Y")))
print("2x2 Matrix (by row):")
print(m_2x2)