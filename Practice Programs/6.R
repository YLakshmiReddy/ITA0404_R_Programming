# Define n explicitly to avoid the NA error from readline
n <- 50 

# R program to get all prime numbers up to n using the Sieve of Eratosthenes
if (!is.na(n) && n >= 2) {
  # Create a logical vector from 1 to n, initialized as TRUE
  primes <- rep(TRUE, n)
  primes[1] <- FALSE # 1 is not prime
  
  # Implement Sieve of Eratosthenes
  for (i in 2:floor(sqrt(n))) {
    if (primes[i]) {
      # Mark multiples of i starting from i^2 as FALSE
      # sequence logic: seq(from, to, by)
      indices <- seq(i^2, n, i)
      primes[indices] <- FALSE
    }
  }
  
  # Extract and print the prime numbers
  cat("Prime numbers up to", n, ":\n")
  print(which(primes))
} else {
  print("No prime numbers found or invalid input.")
}