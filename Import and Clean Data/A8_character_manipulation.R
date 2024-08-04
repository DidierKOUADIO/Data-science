# – Remove prepending or trailing white spaces.
# – Pad strings to a certain width.
# – Transform to upper/lower case.
# – Search for strings containing simple patterns (substrings).
# – Approximate matching procedures based on string distances.

#  String normalization

# 1) the beginning or end of a string can be removed using str_trim.
library(stringr)
str_trim(" hello world ")
str_trim(" hello world ", side = "left")
str_trim(" hello world ", side = "right")

# 2) Place some character to fill the pad 
str_pad(112, width = 6, side = "left", pad = "#")
str_pad(112, width = 6, side = "right", pad = "0")
str_pad(112, width = 10, side = 'both', pad = "X")

# 3) Change the case
toupper("Hello world")
tolower("Hello World")

#  Approximate string matching

