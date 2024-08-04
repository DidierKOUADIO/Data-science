current_time <- Sys.time()
class(current_time)

current_time
# ---------------------------------
library(lubridate)
dates <- c("15/02/2013", "15 Feb 13", "It happened on 15 02 '13")
dmy(dates)

# Possible function
# dmy 
# myd 
# ydm
# mdy 
# dym 
# ymd

# y. In R, 00-68 are interpreted as 2000-2068 and 69-99 as 1969-1999.

dmy("01 01 68")
dmy("01 01 69")

# Format date 

# Code description Example
# %a Abbreviated weekday name in the current locale. Mon
# %A Full weekday name in the current locale. Monday
# %b Abbreviated month name in the current locale. Sep
# %B Full month name in the current locale. September
# %m Month number (01-12) 09
# %d Day of the month as decimal number (01-31). 28
# %y Year without century (00-99) 13
# %Y Year including century. 2013
