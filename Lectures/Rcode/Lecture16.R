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