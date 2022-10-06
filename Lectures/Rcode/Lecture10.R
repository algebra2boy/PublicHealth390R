library(tidyverse)
library(ggplot2)
a <- c(1,1,2,2,3,3,3,3,3,4,5,6)
b <- c(-3,2,4,2,5,-6,1,2,2,4,4,-2)
mean(a)
mean(b)
median(a)
median(b)

quantile(a,probs=c(0.25,0.5,0.75))
quantile(b,probs=c(0.25,0.5,0.75))
range(a)
range(b)
IQR(a)
IQR(b)

var(a)
var(b)
sd(a)

summary(a)
summary(b)

view(diamonds)
summary(diamonds)

a <- 1:7
b <- c(1:6, 10000)

summary(a)
summary(b)

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut, fill = clarity))

# make all the column at the same height
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "fill")


ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, fill = clarity), position = "dodge")

# Compare the number of different levels of cut within each value of color
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(cut, fill = cut))

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(cut, fill = cut), position = "dodge")

ggplot(data= diamonds) + 
  geom_bar(mapping = aes(x=cut))+
  coord_flip()

bar <- ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut, fill = cut),
           show.legend = FALSE,
           width = 1) 
  + labs(x = NULL,y = NULL) 
bar
bar + coord_flip()

# turn a stacked bar chart into a pie chart using
bar + coord_polar()

ggplot(data = mpg, mapping = aes(x = cty, y = hwy)) +
  geom_point() + 
  geom_abline() +
  coord_fixed()

bar <- ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x=cut, fill = cut)) + coord_polar()
bar

