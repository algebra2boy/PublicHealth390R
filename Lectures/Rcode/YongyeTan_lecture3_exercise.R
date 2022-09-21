# 1
x <- pi^2 / 6

#2
y <- sum(1/(seq(1,10)^2))

#3
d1 = x - y

#4
y <- sum(1/(seq(1,20)^2))
d2 = x - y

#5
y <- sum(1/(seq(1,30)^2))
d3 = x - y

y <- sum(1/(seq(1,40)^2))
d4 = x - y

y <- sum(1/(seq(1,50)^2))
d5 = x - y

y <- sum(1/(seq(1,60)^2))
d6 = x - y

#6
d <- c(d1,d2,d3,d4,d5,d6)
