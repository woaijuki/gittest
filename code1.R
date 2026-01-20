

# 1. Create Data (a table called a Data Frame)
# We define names, salaries, and departments
employees <- data.frame(
  name       = c("Alice", "Bob", "Charlie", "Diana"),
  salary     = c(52000, 61000, 58000, 72000),
  department = c("IT", "HR", "IT", "Finance")
)

# 2. View the table in the Console
print("Employee List:")
print(employees)

# 3. Calculate the Average Salary
# We use the mean() function on the 'salary' column
average_salary <- mean(employees$salary)

# 4. Print the result with a message
# The message() function combines text and our calculation
message("The average salary in the company is: $", average_salary)

# 5. Create a Simple Chart (Bar Plot)
# This helps us see who earns the most visually
barplot(employees$salary, 
        names.arg = employees$name, 
        col       = "red", 
        main      = "Salary",
        ylab      = "Salary in USD",
        xlab      = "Employee Name")

# Create a new column 'bonus' by multiplying salary by 0.10
employees$bonus <- employees$salary * 0.10


# Create a new column 'age' 
employees$age <- year - birthyear


# Create a 'total_pay' column
employees$total_pay <- employees$salary + employees$bonus

print("Updated Table with Bonuses:")
print(employees)