pathFolder = "C:/Users/Didier/Documents/Dataset/project2024-07-29/"

# Import the data with the encoding found
airlines_final = read.csv(paste0(pathFolder, "airlines_final.csv"), encoding = "ASCII")
banking_dirty = read.csv(paste0(pathFolder, "banking_dirty.csv"), encoding = "ASCII")
ride_sharing = read.csv(paste0(pathFolder, "ride_sharing_new.csv"), encoding = "ASCII")

library(editrules)
