# Factors of a number
find_factors <- function(n) {
  x <- 1:n
  x[n %% x == 0]
}
print("Factors of 28:")
print(find_factors(28))

# 10 random integers between -50 and 50
rand_ints <- sample(-50:50, 10)
print("10 Random Integers:")
print(rand_ints)

# FizzBuzz logic for 1 to 100
for (i in 1:100) {
  if (i %% 15 == 0) {
    print("FizzBuzz")
  } else if (i %% 3 == 0) {
    print("Fizz")
  } else if (i %% 5 == 0) {
    print("Buzz")
  } else {
    print(i)
  }
}