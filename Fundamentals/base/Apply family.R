apropos("^[a-z]?apply$")
# [1] "apply"  "eapply" "lapply" "mapply" "rapply" "sapply" "tapply" "vapply"


# 1) Apply() function-------------------------------------
# Input: matrix or dataframe
# Output: vector or array
# syntax: Syntax: apply( x, margin, function ),margin (1 for row, 2 for columns)

# create sample data 
sample_matrix <- matrix(C<-(1:10),nrow=3, ncol=10) 

print( "sample matrix:") 
sample_matrix 

# Use apply() function across row to find sum 
print("sum across rows:") 
apply( sample_matrix, 1, sum) 

# use apply() function across column to find mean 
print("mean across columns:") 
apply( sample_matrix, 2, mean)

# 2) lapply() function-------------------------------------
# Input:  list, vector, data frame
# Output: object
# syntax: lapply( x, fun )

# create sample data 
names <- c("priyank", "abhiraj","pawananjani", 
           "sudhanshu","devraj") 
print( "original data:") 
names 

# apply lapply() function 
print("data after lapply():") 
lapply(names, toupper) 

# 3) sapply() function-------------------------------------
# Input: list, vector, data frame
# Output: array or matrix object of the same length whenever possible. Otherwise a list
# Syntax: sapply( x, fun )

# create sample data 
sample_data<- data.frame( x=c(1,2,3,4,5,6), 
                          y=c(3,2,4,2,34,5)) 
print( "original data:") 
sample_data 

# apply sapply() function 
print("data after sapply():") 
sapply(sample_data, max) 


# 4) sapply vs lapply: with with function returning vector --------------------
# Output: matrix
# Create a function that returns min and max of a vector: extremes
extremes <- function(x) {
  c(min = min(x), max = max(x))
}

# Apply extremes() over temp with sapply()
sapply(temp, extremes)

# Apply extremes() over temp with lapply()
lapply(temp, extremes)

# 4) sapply vs lapply: sapply cannot simlify certain result--------------------
# Definition of below_zero()
below_zero <- function(x) {
  return(x[x < 0])
}

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)

# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)

# Are freezing_s and freezing_l identical?
identical(freezing_s, freezing_l)

# 5) sapply vs lapply: with functions that return NULL--------------------------

# Definition of print_info()
print_info <- function(x) {
  cat("The average temperature is", mean(x), "\n")
}

# Apply print_info() over temp using sapply()
sapply(temp, print_info)

# Apply print_info() over temp using lapply()
lapply(temp, print_info)

# 5) vapply function----------------------------
# Input:
# Output: 
# vapply(X, FUN, FUN.VALUE, ..., USE.NAMES = TRUE)

# Definition of the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

# Fix the error:
vapply(temp, basics, numeric(4))

# Examples
# Convert to vapply() expression
vapply(temp, max, numeric(1))

# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, y = 5, logical(1))

