# Direct assignment to avoid readline timing issues
n <- 20

if (!is.na(n) && n > 0) {
  # Create a sequence from 1 to n
  nums <- 1:n
  
  # Filter numbers that divide n without a remainder
  factors <- nums[n %% nums == 0]
  
  cat("The factors of", n, "are:\n")
  print(factors)
} else {
  cat("Please enter a valid positive integer.\n")
}