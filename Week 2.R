#Week 2
#R Objects/Variables

#Data Types in Vector R Object
#Atomic
v1 <- TRUE
print(class(v1))

v2 <- 9.3
print(class(v2))

v3 <- 9L
print(class(v3))

v4 <- 3-5i
print(class(v4))

v5 <- "Hello"
print(class(v5))

v6 <- "Hello"
print(class(charToRaw(v6)))

#Create a vector
#Use the c() function
v7 <- c("Jane","John","James","Alex")
v7
class(v7)
v8 <- c(3,5,8,9,4)
v8

#Lists
#created usig the list()/hold different types of elements
v9 <- list("hi",1,2,3,2+8i,5L,list("jane",20,"Embu",58))
v9

#Matrix
a <- c(2,3,5,7)
A1 <- matrix(a,nrow = 2,byrow = T)
A1

## Example of setting row and column names
mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2"),
                               c("C.1", "C.2", "C.3")))
mdat

#Matrix Operations
a <- c(3,5,6,7,0,4,2,8,5)
A <- matrix(a,nrow = 3,byrow = T)
b <- c(8,0,8,3,2,5,6,7,2)
B <- matrix(b,nrow = 3,byrow = T)

A;B

#Addition
c1 <- A+B
c1

#subtraction
c2 <- B-A
c2

#multply with a scaler
#5B

c3 <- 5*B
c3

#Linear combination
#2B-3A

c4 <- 2*B-3*A
c4

#Transpose
#Just use t() function to transpose
B_t <- t(B)
B;B_t

#Multpication
#%*%
c5 <- A*B #Does direct element multiplication
c5

c6 <- A%*%B #Correct matrix multiplication
c6

c7 <- A%%B #Gives the reminders
c7

#Inverse
#use solve() function
c8 <-solve(A)
c8

#Kroneker product
c9 <- kronecker(A,B)

#Determinant
#use the det() function

c10 <- det(A)
c10

#Extraction of matrix values
#we use index to extract matrix elements
#A[i,j] means the element in the the ith row and the jth column of 
#matrix A
A;B
#specific element
A_2_3 <- A[2,3]
A_2_3

#Extract a row
#A[i,] will extract the ith row of matrix A only
A_R2 <- A[2,]
A_R2

#Extract a columns
#A[,j] will extract the jth column of matrix A only
A_c3 <- A[,3]
A_c3

A_ep <- A[1,3]*B[2,2]
A_ep
