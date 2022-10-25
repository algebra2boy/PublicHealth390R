month_label <- c (
  '1' = "Jan", '2' = "Feb",'3' = "Mar",'4' = "Apr",
  '5' = "May", '6' = "Jun",'7' = "Jul",'8' = "Aug",
  '9' = "Sep", '10' = "Oct",'11' = "Nov",'12' = "Dec")
temperature_mean <- round(tapply(weather$temp, factor(weather$month),mean))
temperature_label <- tibble(
  temp = Inf,
  y = Inf,
  class = unique(weather$month),
  label = str_c("mean=", temperature_mean))

verticle = "top"
horiz = "right"

ggplot(data = weather, aes(x = temp )) +
  geom_histogram(color= "white",binwidth = 5) +
  # total 4 rows
  facet_wrap(~month,
             nrow=4,
             # match the label to the new label
             labeller = as_labeller(month_label)) + 
  labs(
    title = "Temperature in 12 months",
    x = "Temperature (in Fahrenheit)",
    y = NULL) + 
  scale_y_continuous(labels = NULL) + 
  # data is not the original data set
  # has to make the y label very explictly
  geom_label(data = temperature_label, aes(y = y, label = label), vjust = verticle, hjust = horiz)