# Example 1
f <- factor(c("a", "b", "a", "a", "c"))
levels(f)
 
# Example 2
gender <- c(2, 1, 1, 2, 0, 1, 1)

  # Recoding table, stored in a simple vector
recode <- c(male = 1, female = 2)
gender <- factor(gender, levels = recode, labels = names(recode))
gender

  # The relevel function allows you to determine which level comes first
gender <- relevel(gender, ref = "female")
gender

# Levels can also be reordered, depending on the mean value of another variable
age <- c(27, 52, 65, 34, 89, 45, 68)
gender <- reorder(gender, age)
gender

# Removing the attr means by setting that attribute to NULL.
attr(gender, "scores") <- NULL
gender



