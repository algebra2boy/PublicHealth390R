library(tidyverse)
library(babynames)
library(nycflights13)

# what was the top ranked name for each year
x <- babynames %>% 
  mutate(rank = min_rank(desc(prop)))

weather <- weather %>% 
  mutate(temp_in_c = (temp - 32) / 1.8)

weather %>% 
  group_by(month) %>% 
  summarize(mean_temp_in_F = mean (temp, na.rm = TRUE),
            mean_temp_in_C = mean(temp_in_c, na.rm= TRUE))

babynames %>% 
  group_by(year) %>% 
  mutate(rank = min_rank(desc(year))) %>% 
  filter(rank == 1)