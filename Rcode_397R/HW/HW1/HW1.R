# 1 (a)
number_from_1_to_1000 <- c(1:1000)
number_from_1_to_1000_divisible_by3 <- sum(c(number_from_1_to_1000%%3==0))
number_from_1_to_1000_notdivisible_by7 <- sum(c(number_from_1_to_1000%%7!=0))
print(paste("There is ",number_from_1_to_1000_divisible_by3, " numbers from 1 to 1000 are divisible by 3"))
print(paste("There is ",number_from_1_to_1000_notdivisible_by7, " numbers from 1 to 1000 are not divisible by 7"))

#1 (b)
number_from_1_to_1000_divisible_by3_and7 <- sum(c(number_from_1_to_1000%%3==0 & number_from_1_to_1000%%7==0 ))
number_from_1_to_1000_divisible_by3_but_not7 <- sum(c(number_from_1_to_1000%%3==0 & number_from_1_to_1000%%7!=0 ))
print(paste("There is ",number_from_1_to_1000_divisible_by3_and7, " numbers from 1 to 1000 are divisible by 3 and 7"))
print(paste("There is ",number_from_1_to_1000_divisible_by3_but_not7, " numbers from 1 to 1000 are divisible by 3 but not 7"))

# 2 (a)
calculation <- 2 * ((2/1)*(2/3)) * ((4/3)*(4/5)) * ((6/5)*(6/7))
print(paste("answer equal to",calculation))

# 2 (b)
a <- c(2,4,6)
b <- c(1,3,5)
c <- c(3,5,7)
answer = 2 * (prod(a/b,a/c)) 
print(paste("using vector and prod() will get us", answer))

# 2 (c)
a <- c(seq(2,100, by=2))
b <- c(seq(1,99, by=2))
c <- c(seq(3,101, by=2))
answer2 = 2 * (prod(a/b,a/c)) 
print(paste("answer up to 101 is", answer2))

a <- c(seq(2,1000, by=2))
b <- c(seq(1,999, by=2))
c <- c(seq(3,1001, by=2))
answer3 = 2 * (prod(a/b,a/c)) 
print(paste("answer up to 1001 is", answer3))


# 4 (a)
cars
view(cars)

