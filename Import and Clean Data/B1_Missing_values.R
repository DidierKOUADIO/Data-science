# na.rm option: Not considering missing values (set to TRUE ignore missing value)
# this option exist in folowing function: mean(), sum(), min(), max(), median(), and sd()
age <- c(23, 16, NA)
mean(age)
mean(age, na.rm = TRUE)

# na.omit: removes all the rows (df) /element (vector/list) containing NA values
na.omit(age) 

# Identify row with missing value => bool vector (TRUE for NON missing value)
complete.cases(age)

# Identify row with missing value => bool vector (TRUE for missing value)
is.na(age)
