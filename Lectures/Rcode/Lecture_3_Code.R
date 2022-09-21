#Lecture 3 Code

#Lists
list1 <-  list(name="Mike", gender="M", company="A")
list(x = c(1,2,3), gender="M", company="A")
list1$name



#Data frames
name <- c("Mike", "Lucy", "John") 
age <- c(20, 25, 30) 
student <- c(TRUE, FALSE, TRUE) 
df <-  data.frame(name, age, student)

df
list1



#You can subset a data frame similar to a vector, but with a data frame there are 2 dimensions
df[2,2]
df[,2]
df[2,]

df[df$age<25,]



#Functions
#Let’s try using `seq()` which makes regular sequences of numbers and, while we’re at it, learn more helpful features of RStudio. Type `se` and hit TAB. A popup shows you possible completions. 

seq(1,10)

#Let's learn more about the seq() function
?seq

seq(1,4)
seq(from = 4, to = 1)

#We can also look at the sum() function
sum(1, 2, 3, 4)

#We can sum the numbers 1 to 100
sum(seq(1,100))


#Closing parentheses
#x <- seq(1,3
        
#rm() function removes objects from environment 
pi <- 1
rm(pi)
pi

#further, rm(list=ls()) removes all objects
?rm()
ls()
rm(list=ls())

#Explain the results of the next 2 lines of code
seq(0, 1, length.out=10)
seq(1, 6, by=3)

#Generate the sequence 1, 1.5, 2, 2.5, ..., 5
seq(1,5,by=0.5)

#Calculate 1^3 + 2^3 + ... + 20^3
sum(seq(1,20)^3)

#Calculate (1 + 2 + ... + 20)^2
sum(1,20)^2

#Some other useful functions:
sqrt(4)

log(2.718)
exp(1)

mean(1:100)

min(1:100)

max(c(1,2,3,4,5))

range(1:100)




