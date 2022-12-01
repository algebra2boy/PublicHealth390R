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
  filter(!is.na(tvhours)) %>% 
  group_by(relig) %>% 
  summarise(tvhours = mean(tvhours)) %>% 
  ggplot(mapping = aes(tvhours, relig)) + 
  geom_point()

gss_cat %>% 
  filter(!is.na(tvhours)) %>% 
  group_by(relig) %>% 
  summarise(tvhours = mean(tvhours)) %>% 
  ggplot(mapping = aes(tvhours, fct_reorder(relig, tvhours, .fun = mean))) + 
  geom_point()



gss_cat %>% 
  filter(!is.na(tvhours)) %>% 
  group_by(marital) %>% 
  summarise(tvhours = mean(tvhours)) %>% 
  ggplot(mapping = aes(tvhours, fct_reorder(marital, tvhours, .fun = mean))) + 
  geom_point()

gss_cat %>%
  filter(!is.na(tvhours)) %>%
  group_by(partyid) %>%
  summarise(tvhours = mean(tvhours)) %>%
  ggplot(aes(tvhours, fct_reorder(partyid, tvhours))) +
  geom_point() +
  labs(y = "partyid")

gss_cat %>%
  filter(!is.na(tvhours)) %>%
  mutate(partyid = fct_recode(partyid,
                              "Republican, strong"    = "Strong republican",
                              "Republican, weak"      = "Not str republican",
                              "Independent, near rep" = "Ind,near rep",
                              "Independent, near dem" = "Ind,near dem",
                              "Democrat, weak"        = "Not str democrat",
                              "Democrat, strong"      = "Strong democrat")) %>% 
  group_by(partyid) %>%
  summarize(tvhours = mean(tvhours)) %>%
  ggplot(aes(tvhours, fct_reorder(partyid, tvhours))) +
  geom_point() + labs(y = "partyid")


gss_cat %>%
  filter(!is.na(tvhours)) %>%
  mutate(partyid = fct_collapse(partyid,
                                "conservative" = c("Strong republican", 
                                                   "Not str republican", 
                                                   "Ind,near rep"),
                                "liberal" = c("Strong democrat", 
                                              "Not str democrat", 
                                              "Ind,near dem"))) %>% 
  group_by(partyid) %>%
  summarize(tvhours = mean(tvhours)) %>%
  ggplot(aes(tvhours, fct_reorder(partyid, tvhours))) +
  geom_point() + labs(y = "partyid")

# What is the best time of day to fly?
flights %>% 
  group_by(sched_dep_time) %>% 
  summarize(arr_delay_avg = mean(arr_delay,na.rm=TRUE)) %>% 
  ggplot(mapping = aes(x = sched_dep_time, y = arr_delay_avg)) + 
  geom_point(alpha = 0.2) + geom_smooth()
