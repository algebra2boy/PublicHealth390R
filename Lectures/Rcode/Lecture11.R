library(ggplot2)
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) +
  geom_smooth(se = FALSE)+
  labs(title = "Fuel efficiency generally decreases with engine size")

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) +
  geom_smooth(se = FALSE) +
  labs(
    title = "Fuel efficiency generally decreases with engine size",
    subtitle = "Two seaters (sports cars) are an exception because of their light weight",
    caption = "Data from fueleconomy.gov"
  )

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) +
  geom_smooth(se = FALSE) +
  labs(
    x = "Engine displacement (L)",
    y = "Highway fuel economy (mpg)",
    color = "Car type"
  )


ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) +
  geom_smooth(se = FALSE)+
  labs(
    x = quote(sum(x[i] ^ 2, i == 1, n)),
    y = quote(alpha + beta + frac(delta, theta))
  )

ggplot(diamonds, aes(carat, price)) + 
  geom_point(aes(color = color)) + 
  geom_smooth(se = FALSE) + 
  labs(
    x = "weight of the diamond",
    y = "price in US dollars")

ggplot(mpg, aes(x= displ, y=hwy)) +
  geom_label(aes(label=model))


mpg_label <- tibble(
  displ = 4,
  hwy = 30,
  label = "a label at (4,30)"
)

ggplot(mpg, aes(x= displ, y=hwy)) +
  geom_point() +
  geom_label(data = mpg_label, aes(label=label),vjust = "bottom", hjust = "left")


ggplot(mpg, aes(x= displ, y=hwy)) +
  geom_point() +
  geom_rect(xmin = 2, xmax = 6, ymin = 20, ymax = 30)


mpg_label <- tibble(
  displ = -Inf,
  hwy = Inf,
  label = "a label at (4,30)"
)

ggplot(mpg, aes(x= displ, y=hwy)) +
  geom_point() +
  geom_label(data = mpg_label, aes(label=label),vjust = "top", hjust = "left")

mpg_label <- tibble(
  displ = c(-Inf,-Inf,Inf, Inf),
  hwy = c(-Inf, Inf, -Inf, Inf),
  label = c("Bottom left", "Top left", "Bottom right", "Top Right")
)
verticle = c("bottom", "top", "bottom", "top")
horiz = c("left", "left", "right", "right")

ggplot(mpg, aes(x= displ, y=hwy)) +
  geom_point() +
  geom_label(data = mpg_label, aes(label=label),vjust = verticle, hjust = horiz)

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) +
  scale_x_continuous() +
  scale_y_continuous() +
  scale_color_discrete()

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  scale_y_continuous(breaks = seq(15, 40, by = 5))

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  scale_x_continuous(labels = NULL) +
  scale_y_continuous(labels = NULL)

base <- ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class))

base + theme(legend.position = "left")

# make the x axis label to the 90 angle
base + theme(axis.text.x = element_text(angle = 90))

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) +
  geom_smooth(se = FALSE) +
  theme(legend.position = "bottom") +
  guides(color = guide_legend(nrow = 1))


ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = class)) + 
  scale_y_continuous(breaks = seq(10, 50, by = 10)) + 
  scale_x_continuous(breaks = seq(1, 10, by = 1)) +
  theme(legend.position = "bottom") +
  guides(color = guide_legend(nrow = 1)) + 
  geom_smooth(se = FALSE)
  
  
