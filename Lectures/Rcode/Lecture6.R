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
