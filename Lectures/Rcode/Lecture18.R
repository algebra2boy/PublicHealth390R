library(readxl)
library(tidyverse)
wages <- read_excel("/Users/yongyetan/Desktop/College/PublicHealth390R/Lectures/Rcode/wages.xlsx",na="NA")

head(wages)

wages %>% 
  ggplot(aes(log(income))) +
  geom_histogram(binwidth = .25)

# the front is the income (y-axis), the back is education (x-axis)
lm(log(income) ~ education, data = wages)

mod_e <- wages %>% lm(log(income)~ education, data=.) 

library(broom)
mod_e %>% tidy()

mod_e %>% glance()

mod_e %>% augment()

mod_eh <- wages %>% 
  lm(log(income) ~ education + height, data = .)
mod_eh %>% tidy()

mod_eh <- wages %>% 
  lm(log(income) ~ education + height + sex, data = .)
mod_eh %>% tidy()

wages %>%
  ggplot(aes(x = height, y = log(income))) +
  geom_point(alpha = 0.1) +
  geom_smooth(method = lm)

wages %>%
  ggplot(aes(x = height, y = log(income))) +
  geom_point(alpha = 0.1) +
  geom_smooth(method = loess)


