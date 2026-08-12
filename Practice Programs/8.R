# Define the range
all_letters <- LETTERS

# 1. Extract first 10 English letters in lower case
first_10_lower <- letters[1:10]

# 2. Extract last 10 English letters in upper case
last_10_upper <- LETTERS[17:26]

# 3. Extract letters between 22nd to 24th letters in upper case
mid_letters_upper <- LETTERS[22:24]

# Combine all into a single character string
combined_string <- paste(c(first_10_lower, last_10_upper, mid_letters_upper), collapse = " ")

# Display the result
cat("Combined String:\n", combined_string, "\n")