# For NUMERIC variables, special values indicate values that are not an element of the
# mathematical set of real numbers (ℝ). The function is.finite determines which values are
# `regular' values.
is.finite(c(1, Inf, NaN, NA))

# Function to check special value

is.special <- function(x){
  if (is.numeric(x)) !is.finite(x) else is.na(x)
}

# Example
x <- c(1, Inf, NaN, NA)
is.special(x)

# Applying this function to a column
sapply(person, is.special)