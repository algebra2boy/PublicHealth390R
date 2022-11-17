band <- tribble(
  ~name,   ~band,  
  "Mick", "Stones",
  "John", "Beetles",
  "Paul", "Beetles"
)

instrument <- tribble(
  ~name, ~plays,
  "John", "guitar",
  "Paul", "bass",
  "Keith", "guitar"
)


left_join(band,instrument, by ="name")

right_join(band,instrument, by ="name")

inner_join(band,instrument, by ="name")

full_join(band,instrument, by ="name")


flights %>% group_by(carrier) %>% 
  summarise(average = mean(arr_delay, na.rm=TRUE)) %>% 
  left_join(airlines, by = "carrier") %>% 
  arrange(desc(average))


band <- tribble(
  ~name,   ~band,  
  "Mick", "Stones",
  "John", "Beetles",
  "Paul", "Beetles"
)

instrument2 <- tribble(
  ~artist, ~plays,
  "John", "guitar",
  "Paul", "bass",
  "Keith", "guitar"
)

left_join(band,instrument2, by = c("name" = "artist" ))


left_join(flights, airports, by = c("dest" = "faa")) %>% 
  group_by(name) %>% 
  summarise(avg_delay = mean(arr_delay, na.rm=TRUE)) %>% 
  arrange(avg_delay)


semi_join(band,instrument, by ="name")

anti_join(band,instrument, by ="name")

semi_join(flights, airports,  by = c("dest" = "faa")) %>% 
  group_by(dest) %>% 
  summarise(n = n()) %>% 
  summarise(n = n())

cases <- tribble(
  ~country, ~"2011", ~"2012",~"2013",
  "FR",  7000, 6900, 7000,
  "DE",  5800, 6000, 6200,
  "US", 15000,14000,13000
)

cases

cases %>% pivot_longer(2:4, names_to = "year", values_to = "n")

cases %>% pivot_longer(c("2011","2012","2013"), 
                       names_to = "year", values_to  = "n" )
cases %>% pivot_longer( -1, names_to  = "year", values_to = "n")
cases %>% pivot_longer( -country, names_to = "year", values_to = "n")
cases %>% pivot_longer(starts_with("2"), names_to = "year",
                       values_to = "n")

pollution <- tribble(
  ~city,   ~size, ~amount, 
  "New York", "large",     23,
  "New York", "small",     14,
  "London", "large",       22,
  "London", "small",       16,
  "Beijing", "large",      121,
  "Beijing", "small",      56
)


pollution %>% pivot_wider(names_from = size, values_from = amount)

names(who) <- str_replace(names(who), "newrel", "new_rel")

who %>% group_by(country) %>% 
  summarise(n_iso = n_distinct(iso2, iso3)) %>% 
  filter(n_iso != 1)

who %>% pivot_longer(5:60, names_to = "codes", values_to = "n")

who %>% pivot_longer(5:60, names_to = "codes", values_to = "n" ) %>% 
  select(-iso2,-iso3) %>% 
  separate(codes,into = c("new", "type", "sexage"), sep = "_")

who %>% pivot_longer(5:60, names_to = "codes", values_to = "n" ) %>% 
  select(-iso2,-iso3) %>% 
  separate(codes,into = c("new", "type", "sexage"), sep = "_") %>% 
  separate(sexage,into = c("sex", "age"), sep = 1)

who %>%
  pivot_longer(5:60, names_to = "codes", values_to = "n" ) %>%
  select(-iso2, -iso3) %>%
  separate(codes, c("new", "type", "sexage"), sep = "_") %>%
  select(-new) %>%
  separate(sexage, into = c("sex", "age"), sep = 1,convert=TRUE) %>%
  unite("sexage2", sex, age, sep = "-")

