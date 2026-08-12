# Full R program: Create and read a CSV file

# Step 1: Create sample data
data <- data.frame(
  ID = c(1, 2, 3, 4),
  Name = c("Lakshmi", "Ravi", "Meena", "Arjun"),
  Age = c(25, 30, 28, 35),
  Department = c("IT", "HR", "Finance", "Marketing")
)

# Step 2: Write the data to a CSV file
write.csv(data, "data.csv", row.names = FALSE)

# Step 3: Read the CSV file back into R
read_data <- read.csv("data.csv", header = TRUE)

# Step 4: Display the content
print(read_data)

# Optional: View in spreadsheet-like format (RStudio only)
# View(read_data)