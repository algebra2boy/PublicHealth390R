library(tidyverse)
library(ggplot2)

ggplot(data = mpg) + 
    geom_point(mapping = aes(x = displ, y = hwy)) + 
    facet_grid(drv ~ cyl)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(. ~ cyl)



ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(~ cty)

?facet_wrap

ggplot(data=mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))+
  facet_wrap(~class, nrow=2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy),alpha=0.2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy),  position="jitter")


ggplot(data = mpg) +
  geom_jitter(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_count(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_line(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_path(mapping = aes(x = displ, y = hwy))


ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))


ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy,color = drv)) + 
  geom_point(mapping = aes(x = displ, y = hwy,color = drv)) 

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy,group = drv))


