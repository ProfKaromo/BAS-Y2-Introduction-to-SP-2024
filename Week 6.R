#Types of Operators
#Arithmetic Operators
v1 <- c(3,6,2,7)
v2 <- c(8,5,6,2)
#Addition +
v3 <- v1+v2
v3
#Subtraction -
v4 <- v2-v1
v4
#Multiplication *
v5 <- v1*v2
v5
#Division /
v6 <- v2/v1
v6
#Remainder %%
v7 <- v2%%v1
v7
#Quotient %/%
v8 <- v2%/%v1
v8
#power ^ (exponent)
v9 <- v2^v1
v9

#Relational Operators
#Each element of the first vector is compared with the 
#corresponding element of the second vector. The result of
#comparison is a Boolean value.
#Greater than >
r1 <- c(3,6,2,7)
r2 <- c(8,6,6,2)
r3 <- r1>r2
r3
#Lessthan <
r4 <- r1<r2
r4
#Greaterthan or equalto >=
r3 <- r1>=r2
r3
#Lessthan or equal to <=
r4 <- r1<=r2
r4
#Equalto ==
r5 <- r1==r2
r5
#NotEqualto !=
r6 <- r1!=r2
r6

#Logical Operators
#Element-wise logical AND &
v <- c(3, 1, TRUE, 2+3i)
t <- c(4, 1, FALSE, 2+3i)
print(v&t)
#Element-wise Logical OR |
v <- c(3, 0, TRUE, 2+2i)
t <- c(4, 0, FALSE, 2+3i)
print(v| t)
#Logical NOT operator
v <- c(3, 0, TRUE, 2+2i)
print(!v)
#Logical AND operator &&
v <- c(3,3,8,0,8)
t <- c(1,7,2,8,7)
print(v&&t)
#Logical OR operator ||
v <- c(T)
t <- c(F)
print(v||t)

#Assignment Operators
#As discussed
#Left Assignment
# <-
#=
#<<-
#Right Assignment
# ->
# ->>

#Miscellaneous Operators
#Collon Operator :
x <- 1:20
x
y <- seq(1,20,2)
y
y1 <- seq(by=2,to=20,from=1)
y1
y2 <- seq(2,20,1)
y2

#Pipe operator %in%
# checks of it belongs to

x <- 3:20
y = 35
y %in% x

#Matrix Operator %*%
A <- matrix(sample(seq(-10,10),9,replace = T),nrow = 3,byrow = T)
A
B <- matrix(sample(seq(-2,13),9,replace = T),nrow = 3,byrow = T)
B
A*B
A%*%B
