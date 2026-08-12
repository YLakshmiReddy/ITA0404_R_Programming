get_user_info <- function() {
  name <- readline(prompt="Enter Name: ")
  age <- readline(prompt="Enter Age: ")
  
  cat("\n--- Results ---\n")
  print(paste("Name:", name))
  print(paste("Age:", age))
  print(R.version.string)
}

get_user_info()