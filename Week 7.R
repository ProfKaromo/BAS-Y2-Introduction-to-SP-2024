#Measures of Central tendency
#Arithmetic average 
set.seed(2024)
x <- c(sample(seq(2,70,3), 12, replace = T))
x
table(x)
AM <- sum(x)/length(x)
AM
AM1 <- mean(x)
AM1

#Harmonic mean
HM <- length(x)/sum(1/x)
HM

#Geometric mean
GM <- (prod(x))^(1/length(x))
GM
#AM>=GM>=HM
AM;GM;HM

#Mode
mode(x)
library(DescTools)
Mode(x)

#Median
median(x)#stats
Median(x)#DescTools
quantile(x,0.5)

#Quantiles
#1St quantile
quantile(x,0.25)
#3rd
quantile(x,0.55)

#percentiles
#37th percentile
quantile(x,0.37)
#99th percentile
quantile(x,0.99)

#Measures of Dispersion
p <- c(0.4,0.3,0.2,0.1)
x <- c("A","B","C","D")
grades <- sample(x,200,replace = T,prob = p)
grades

#Variance
x

var(x)

k <- 0
s <- NULL
mu <- mean(x)
for (i in 1:length(x)) {
  s[i] <- (x[i]-mu)^2
  k <- k+s[i]
}
var_x <- 1/(length(x)-1)*k
var_x

var(x)
#SD
sd_x <- sqrt(var_x)
sd_x

range(x)

Kurt(x)
Skew(x)
hist(x)

#Setting working directory.
setwd("D:\\JOSEKARODY\\KYU\\GITHUB PROJECTS REP\\workshop-f4sg-africa\\exercises\\data")
getwd()
setwd("D:/JOSEKARODY/KYU/GITHUB PROJECTS REP/BAS-Y2-Introduction-to-SP-2024")
mydata <- read.csv("tourism.csv")

View(mydata)

View(mtcars)
class(x)
class(mtcars)
edit(mtcars)

sin(60)
cos(60)
log10(10)
log(23,base = 12)
log(23)
