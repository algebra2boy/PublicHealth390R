library(tidyverse)
library(babynames)
library(nycflights13)

# sort the babynames by n 
arrange(babynames, n)

# sort the babynames by n in descending order
arrange(babynames,desc(n))

df <- tibble(x = c(5, 2, NA))
arrange(df, x)

# sort by x 
arrange(df, desc(x))

# only selecting the babynames when n equals to 1000
babynames %>% filter (n == 1000)

filter(babynames,n == 1000)

arrange(select(filter(babynames, year == 2015, sex == "M"),
       name,n), desc(n))

babynames %>% 
  filter(year == 2015, sex == "M") %>% 
  select(name, n ) %>% 
  arrange(desc(n))

babynames  %>%  
  filter(sex == "F",name=="Michael") %>% 
  ggplot() +
  geom_line(aes(x=year,y=prop))


babynames %>% 
  filter(name == "Michael") %>%
  ggplot() +
  geom_line(mapping = aes(year, prop, group = sex))

# Miachael could be a female or a male name 
# use a facet graph to separate them and make the scales 
# to scale automatically
babynames %>% filter(name == "Michael") %>%
  ggplot() +
  geom_line(mapping = aes(year, prop)) + 
  facet_wrap(~ sex, scales = "free_y")

babynames %>% summarize(total = sum(n), max = max(n))
babynames %>% summarize(n = n(), nname = n_distinct(name))


pollution <- tribble(
  ~city,   ~size, ~amount, 
  "New York", "large",      23,
  "New York", "small",      14,
  "London", "large",      22,
  "London", "small",      16,
  "Beijing", "large",      121,
  "Beijing", "small",      56
)

pollution %>% 
  summarize(mean = mean(amount), sum = sum(amount), n = n())

# merge the city together 
# it is like the primary key 
pollution %>% 
  group_by(city) %>%
  summarize(mean = mean(amount), sum = sum(amount), n = n())

# merge the (city, size) together
# primary key is (city, size)
pollution %>% 
  group_by(city, size) %>%
  summarize(mean = mean(amount), sum = sum(amount), n = n())

# ignore all the na values
weather %>% 
  group_by(month) %>% 
  summarize(mean = mean(temp, na.rm = TRUE), 
            std_dev = sd(temp, na.rm = TRUE))

babynames %>% 
  group_by(sex) %>%
  summarize(total = sum(n))

babynames %>% 
  group_by(sex) %>%
  ungroup() %>%
  summarize(total = sum(n))