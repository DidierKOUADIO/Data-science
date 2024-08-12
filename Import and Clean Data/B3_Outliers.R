# https://statsandr.com/blog/outliers-detection-in-r/#:~:text=The%20IQR%20criterion%20means%20that,as%20potential%20outliers%20by%20R.

# 1) Method: quantile

# Syntax: quantile( data, probs)
# Quantiles et IQR (decoupage des donn?es a x %, x - 25, 50 et 75)
# La fonction Quantile en R d?coule ma s?rie en 4 quantiles
x = c(2,13,5,36,12,50)
res<-quantile(x, probs = c(0,0.25,0.5,0.75,1), na.rm = FALSE)
res


# Function Quantile
x <- c(-50, rnorm(100), 60)
x
Q <- quantile(x)
Q[1]
Q[2]
Q[3]
Q[4]
Q[5]

# Custom function to find outliers
outlierFinder <- function(serie) {
  Q = quantile(serie)
  IQR <- Q[4] - Q[2]
  return (serie[serie < (Q[2]- 1.5*IQR) | serie > (Q[4] + 1.5*IQR)])
}
outlierFinder(x)

# 2) function base R: boxplot.stats(x)$out
x <- c(1:10, 20, 30)
boxplot.stats(x)$out

# Using function boxplot.stats
boxplot.stats(x, coef = 2)$out


# 3) 2nd method
# Load library
library(dplyr)

# Define quantiles
quantiles <- quantile(df$column_name, c(0.01, 0.99))

# Cap outliers
df <- df %>%
  mutate(column_name = ifelse(column_name < quantiles[1], quantiles[1], 
                              ifelse(column_name > quantiles[2], quantiles[2], column_name)))




# 4) Using the summary function
summary(x)
