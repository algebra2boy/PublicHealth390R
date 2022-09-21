#install.packages("tidyverse") #Uncomment this and run it if you do not have the tidyverse installed.
library(tidyverse)

# Let's look at the mpg dataset
mpg

?mpg

#R's built in data viewer
view(mpg)

#See variables, their type, and first few values
glimpse(mpg)

#sample table using kable function (note that it requires the knitr package)
knitr::kable(head(mpg[, 1:4]), "pipe")

# $ operator allows us to select a single variable
mpg$displ


install.packages("nycflights13")
library(nycflights13)


flights

?flights

view(flights)
glimpse(flights)

#Let's plot engine size (displ) vs. gas mileage (hwy)


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))


ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))



