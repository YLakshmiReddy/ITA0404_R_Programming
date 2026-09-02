my_list <- list(
  num_vector = c(1, 2, 3, 4, 5),
  char_matrix = matrix(letters[1:4], nrow = 2),
  custom_func = function(x) { x^2 }
)

print(my_list)
print("Executing stored function via list:")
print(my_list$custom_func(5))