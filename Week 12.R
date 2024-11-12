#Denstities of distribution function and culculations
#Consider the model y1 = β0 + β1x + ei where xi ∼ N(4, 0.1), 
#β0 = 1.4, β1 =  3.8, ei ∼ N(0, 0.5) write a well commented 
#R − code that genarates 1000 values of y.

x <- rnorm(1000,4,0.1)
e <- rnorm(1000,0,0.5)

y <- NULL
for (i in 1:1000) {
  y[i] <- 1.4+3.8*x[i]+e[i]
}

y

#Accidents in a factory occur with a poisson distribution at 
#an average of 4 per week calculate the probability of more 
#than 5 accident in any one week

#p(x>5)=1-p(x<=5)
#Using the CDF
1-ppois(5,lambda = 4)
#Using the density function
1-sum(dpois(0,lambda = 4)+dpois(1,lambda = 4)+dpois(2,lambda = 4)+dpois(3,lambda = 4)+dpois(4,lambda = 4)+dpois(5,lambda = 4))
