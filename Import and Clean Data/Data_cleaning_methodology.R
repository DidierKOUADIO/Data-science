
#------------------------------------------------------#
# Importing raw Data 
#------------------------------------------------------#
pathFolder = "C:/Users/Didier/Documents/Dataset/project2024-07-29/"

# Check the possible encoding
readr::guess_encoding(paste0(pathFolder, "airlines_final.csv"), n_max = 1000)
readr::guess_encoding(paste0(pathFolder, "banking_dirty.csv"), n_max = 1000)
readr::guess_encoding(paste0(pathFolder, "ride_sharing_new.csv"), n_max = 1000)
# Output: ASCII

# Open file with text editor like Bloc-note:
# - check delimiter
# - check first line headers

# Some arguments function import
# Argument      description
# header:       Does the first line contain column names?
# col.names:    if header is FALSE, character vector with column names.
# na.string:    Which strings should be considered NA?
# colClasses:   character vector with the types of columns. Will coerce the columns to the specified types.
# stringsAsFactors: If TRUE, converts all character vectors into factor vectors.
# sep: Field separator.



# Import the data with the encoding found
airlines_final = read.csv(paste0(pathFolder, "airlines_final.csv"), encoding = "ASCII")
banking_dirty = read.csv(paste0(pathFolder, "banking_dirty.csv"), encoding = "ASCII")
ride_sharing = read.csv(paste0(pathFolder, "ride_sharing_new.csv"), encoding = "ASCII")

airlines_final
banking_dirty
ride_sharing


#---------------------------------------------------#
# From Raw to Technically Correct Data 
#---------------------------------------------------#

# Reading data with read.table and its cousins

# read.delim    read.delim2
# read.csv      read.csv2
# read.table    read.fwf

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

# Reading data with readLines
    # Step 1. Reading data.
    # Step 2. Selecting lines containing data
    # Step 3. Split lines into separate fields
    # Step 4. Standardize rows
    # Step 5. Transform to data.frame
    # Step 6. Normalize and coerce to correct types


#-------------------------------------------------#
# From Technically Correct Data to Consistent Data
#-------------------------------------------------#

