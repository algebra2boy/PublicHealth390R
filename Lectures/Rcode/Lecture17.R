library(tidyverse)
library(babynames)
library(nycflights13)
library(hms)
library(lubridate)

str_sub("Garrett", 1, 2)
str_sub("Garrett", 3)
str_sub("Garrett", -2)

g <- "Garrett"
str_sub(g, -3) <- "eth"
g

babynames %>% 
  mutate(last_letter = str_sub(name, -1)) %>% 
  mutate(vowel = last_letter %in% c("a", "e", "i", "o", "u")) %>% 
  group_by(year, sex) %>% 
  filter(vowel = TRUE) %>% 
  summarise(mean = weighted.mean(vowel, n)) %>% 
  ggplot() + 
  geom_line(mapping = aes(year, mean, color = sex))
  
strings <- c("Apple", "Orange")
str_detect(strings, "pp")

strings <- c("Apple", "Pineapple")
str_detect(strings, "apple")

typeof(1)
typeof(1L)
typeof(TRUE)
typeof("one")
typeof(raw(1))
typeof(1i)


a <- c(1,1,3,2,3,1)
factor(a)
factor(a,labels=c("blue","brown","green"))

eyes <- factor(x = c("blue", "green", "green"), 
               levels = c("blue", "brown", "green"))

gss_cat %>% 
  filter(!is.na(tvhours)) 
