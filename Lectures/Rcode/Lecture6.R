library(ggplot2)
library(tidyverse)
?geom_point
view(mpg)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x=displ, y =hwy,color = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x=displ, y =hwy,size = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x=displ, y =hwy,alpha = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x=displ, y =hwy,shape = class))


ggplot(data = mpg) + 
  geom_point(mapping = aes(x=displ, y =hwy,color = displ <5))

glimpse(mpg)

# displ -> engine displacement, in litres
# drv -> the type of drive train, where f = front-wheel drive, r = rear wheel drive, 4 = 4wd
# hwy -> highway miles per gallon
# class  -> "type" of car
# year  -> year of manufacture

hist(mpg$year)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color=year ))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color=class ))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size=year ))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size=class ))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = 'blue') 