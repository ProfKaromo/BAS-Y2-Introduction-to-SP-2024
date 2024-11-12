print(ls(pattern = "x"))
rm(list = ls())

a <- c(3,1,0,2,5,3,7,3,9)
A <- matrix(a,nrow = 3,byrow = T)
A

y <- 2*A
w <- solve(A)
k <- y-w
t(k)

t((2*A)-solve(A))
