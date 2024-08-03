
# Find the encoding you are using by default
Encoding("Queensrÿche")

# The default encoding used by your OS 
Sys.getlocale("LC_CTYPE")

pathFolder = "C:/Users/Didier/Documents/Dataset/project2024-07-29/"

# Check the possible encoding of a file
readr::guess_encoding(paste0(pathFolder, "airlines_final.csv"), n_max = 1000)
readr::guess_encoding(paste0(pathFolder, "banking_dirty.csv"), n_max = 1000)
readr::guess_encoding(paste0(pathFolder, "ride_sharing_new.csv"), n_max = 1000)