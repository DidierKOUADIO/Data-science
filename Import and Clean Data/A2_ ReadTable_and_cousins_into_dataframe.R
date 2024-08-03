
# Reading data with read.table and its cousins

# read.delim    read.delim2
# read.csv      read.csv2
# read.table    read.fwf

pathFolder = "C:/Users/Didier/Documents/Dataset/project2024-07-29/"

# Import the data with the encoding found
airlines_final = read.csv(paste0(pathFolder, "airlines_final.csv"), encoding = "ASCII")
banking_dirty = read.csv(paste0(pathFolder, "banking_dirty.csv"), encoding = "ASCII")
ride_sharing = read.csv(paste0(pathFolder, "ride_sharing_new.csv"), encoding = "ASCII")

airlines_final
banking_dirty
ride_sharing

# 1) Inspections
head(airlines_final)
str(airlines_final)
summary(airlines_final)

# Type checking

str(airlines_final)

# A) Using colClasses, we can force R to either interpret the columns in the way we want or throw
# an error when this is not possible.

airlines_final2 <- read.csv(
  file = paste0(pathFolder, "airlines_final.csv"), 
  colClasses=c('numeric','numeric','character','character','character','character','character','character',
               'character','numeric','character','character','character' ))
# for date variable
airlines_final2$dept_time <- as.Date(airlines_final2$dept_time)
str(airlines_final2)

# B) Import all columns as character with stringsAsFactors ste to FALSE

airlines_final3 <- read.csv(
  file = paste0(pathFolder, "airlines_final.csv"), 
  stringsAsFactors=FALSE)
# then apply the as.-functions to convert to the desired type 
airlines_final3$wait_min <- as.numeric(airlines_final3$wait_min)

