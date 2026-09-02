exam_data <- data.frame(
  name = c("Anastasia", "Dima", "Katherine", "James", "Emily"),
  score = c(12.5, 9.0, 16.5, 12.0, 9.0),
  attempts = c(1, 3, 2, 3, 2),
  qualify = c("yes", "no", "yes", "no", "no"),
  stringsAsFactors = FALSE
)

# Extract specific columns
print(exam_data[, c("name", "score")])

# Add row
new_row <- data.frame(name = "Michael", score = 20.0, attempts = 1, qualify = "yes")
exam_data <- rbind(exam_data, new_row)

# Add column
exam_data$country <- c("USA", "USA", "USA", "USA", "USA", "USA")

# Sort by score descending
exam_data_sorted <- exam_data[order(-exam_data$score), ]
print("Sorted Data Frame:")
print(exam_data_sorted)

# Save to file
write.csv(exam_data_sorted, file = "exam_data.csv", row.names = FALSE)