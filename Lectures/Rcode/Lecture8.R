library(tidyverse)
library(ggplot2)
ggplot(mpg) +
    geom_histogram(mapping = aes(x = hwy))

ggplot(mpg) +
  geom_histogram(mapping = aes(x = hwy), color="white")

ggplot(mpg) +
  geom_histogram(mapping = aes(x = hwy), color = "white", fill = "steelblue")

ggplot(mpg)+
  geom_histogram(mapping = aes(x=hwy),color="white",bins=40)

ggplot(mpg)+
  geom_histogram(mapping = aes(x=hwy),color="white",binwidth=1)


ggplot(mpg)+
  geom_histogram(mapping = aes(x=hwy),color="white",breaks=10:45)


ggplot (mpg) + 
  geom_histogram(mapping = aes(x=cty), binwidth = 1, bins = 20, color = "white", fill = "plum")

ggplot (mpg) + 
  geom_histogram(mapping = aes(x=displ), binwidth = 1, bins = 20, color = "white", fill = "purple")

ggplot(mpg)+
  geom_freqpoly(mapping = aes(x=hwy))

ggplot(mpg)+
  geom_freqpoly(mapping = aes(x=hwy,color=drv))

ggplot(mpg)+
  geom_histogram(mapping = aes(x=hwy),color="white")+
  facet_wrap(~drv)

ggplot(mpg)+
  geom_boxplot(mapping = aes(y=hwy))


ggplot(mpg)+
  geom_boxplot(mapping = aes(x=drv,y=hwy))

ggplot(mpg)+
  geom_boxplot(mapping = aes(y=drv,x=hwy))

ggplot(mpg)+
  geom_boxplot(mapping = aes(x=class,y=hwy))

ggplot(mpg)+
  geom_violin(mapping = aes(x=class,y=hwy))

ggplot(mpg)+
  geom_bar(mapping = aes(x=drv))

ggplot(mpg)+
  geom_bar(mapping = aes(x=trans))

ggplot(mpg)+
  geom_bar(mapping = aes(x=trans,fill = drv ))

ggplot(mpg)+
  geom_bar(mapping = aes(x=trans,color = drv ))

ggplot(mpg)+
  geom_bar(mapping = aes(x=trans,fill = drv ),position = "dodge")

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg,mapping = aes(x = displ, y = hwy)) + 
  geom_point() +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + 
  geom_point(mapping = aes(color = class)) + 
  geom_smooth(data = filter(mpg, class == "subcompact"), se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = drv)) +
  geom_smooth(aes(linetype = drv), se = FALSE)


ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(size = 4, color = "white") +
  geom_point(aes(color = drv))

ggplot(mpg, aes(x=displ, y = hwy)) + 
   geom_point(aes(color = drv)) + 
  geom_smooth(se = FALSE)
 
