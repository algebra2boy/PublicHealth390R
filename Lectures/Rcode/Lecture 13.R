library(tidyverse)
library(babynames)

# : selects a range of columns
baby <- select(babynames, name:prop)

# select very column but 
baby2 <- select(babynames, -c(name,prop)) 

# select columns that starts with n
baby3 <- select(babynames, starts_with("n"))


# Use filter, babynames and the logical operators to find:

#All of the rows where prop is greater than or equal to 0.08
row <- filter(babynames, prop >= 0.08)

# All of the children named “Sea”
chilren <- filter(babynames, name == "Sea")

Sue <- filter(babynames, name == "Sue" & sex == "M")

year <- filter(babynames, year == 1880 & (n == 5 | n == 6))
year2 <- filter(babynames, year == 1880 &  n %in% c(5,6))

good_name <- filter(babynames, name %in% c ("Acura", "Lexus", "Yugo" ))
