#Assignment operators

#Equal to operator
v1 = 7
print(v1)

#Leftward assignment 
v2 <- "Leftward Assignmet"
v21 <<- "Leftward Assignmet 2"
print(v2)
print(v21)

#Rigtward assignment
"Rightward assignmet" -> v3
"Rightward assignmet 2" ->> v31
print(v3)
print(v31)

#difference between cat() and print()
year <- 22
print(year)
cat(year)
print("The student have ",year," years")
cat("The student have ",year," years\n")

#Example of using cat()
n=1000
B=10000
#install.packages("simex")#Remove "#" to install the simex package.
library("simex")

#==========================================================================================================
#Initialization 
#==========================================================================================================
store.beta.true <-   store.beta.naive  <-  NULL
store.beta.simex.linear <-  store.beta.simex.nonlin <-   store.beta.simex.quad <- NULL

mean.SIMEXestimates.nonlin <- mean.SIMEXestimates.linear <- 
  mean.SIMEXestimates.quad   <- matrix(0,6,4)

for (b in 1:B) {
  x.true = rexp(n,1/3)# True value of x
  z = rnorm(n,30,5)#Age
  
  eta = exp(5-0.5*x.true-0.1*z)
  py = eta/(1+eta)
  y = rbinom(n,1,py)# True value of y
  
  #==========================================================================================================
  #Building the True logit Model
  #==========================================================================================================
  logit.model.true = glm(y~x.true+z,family = binomial)
  beta.true = logit.model.true$coeff
  
  #==========================================================================================================
  #Building the Naive Model
  #==========================================================================================================
  x.sd_me = 2
  x.measured = x.true + x.sd_me * rnorm(n)
  
  logit.model.naive = glm(y~x.measured+z,x = TRUE,family = binomial)
  beta.naive = logit.model.naive$coeff
  
  #==========================================================================================================
  #Corrected Models
  #========================================================================================================== 
  #defaul: quadratic simex model
  logit.model.simex.quadratic = simex(logit.model.naive, SIMEXvariable = c("x.measured"),
                                      measurement.error = x.sd_me, asymptotic = FALSE)
  beta.simex.quad = logit.model.simex.quadratic$coeff
  
  #linear simex model
  logit.model.simex.linear = simex(logit.model.naive, fitting.method = "linear", SIMEXvariable = c("x.measured"),
                                   measurement.error = x.sd_me, asymptotic = FALSE)
  beta.simex.linear = logit.model.simex.linear$coeff
  
  # outputs 
  store.beta.naive        <-   rbind(store.beta.naive,        c(iter=b,beta.naive))
  store.beta.true         <-   rbind(store.beta.true,         c(iter=b,beta.true))
  store.beta.simex.quad   <-   rbind(store.beta.simex.quad,   c(iter=b,beta.simex.quad))
  store.beta.simex.linear <-   rbind(store.beta.simex.linear, c(iter=b,beta.simex.linear))
  
  mean.SIMEXestimates.linear <- (mean.SIMEXestimates.linear + 
                                   logit.model.simex.linear$SIMEX.estimates/B)
  
  mean.SIMEXestimates.quad   <- (mean.SIMEXestimates.quad + 
                                   logit.model.simex.quadratic$SIMEX.estimates/B)
  
  cat("\t Iteration: ",b, " of ", B,"\n")
}

#Data Types
d1 <- 7.0034349
class(d1)
d2 <- "I love R"
class(d2)

#Finding a variable 
ls()
print(ls(pattern = "O"))

.myvar <- "my hidden var"
print(ls(pattern = "my"))
print(ls(pattern = "my",all.names = TRUE))

#Deleting Variables
rm(d2)

rm(list=ls(pattern = "x"))
rm(list = ls())
   