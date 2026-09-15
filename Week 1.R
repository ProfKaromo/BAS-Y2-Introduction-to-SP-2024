#Week 1

x <- print("Hello world!")
if(FALSE){
  "abive is my first R code 
  abive is my first R code" 
}


x <- c(2:20)
plot(density(x))

View(mtcars)
mtcars$hp



install.packages("zoo")
getwd()
setwd("D:\\JOSEKARODY\\KYU\\GITHUB PROJECTS REP\\Python Projects\\PYTHON\\MODCOM\\Datasets")

read.csv("D:\\JOSEKARODY\\KYU\\GITHUB PROJECTS REP\\Python Projects\\PYTHON\\MODCOM\\Datasets\\bank.csv")
read.csv("bank.csv")

print("Hello world")
cat("Hello world")

if(FALSE){
  "This is a demo for multi-line comments and it should be put
 inside either a single of double quote"
}

y <- c(3,6,7,8,4,3)
mean(y)

x<- c(1, 6, 8, 10, 7, 5, 3, 14, 19, 6, 5, 1, 5, 3)
min(x)
max(x)
length(x)
x[6]
summary(x)
table(x)
var(x)
sd(x)
sqrt(var(x))
median(x)
mean(x) == sum(x)/length(x)

View(mtcars)

library(ggplot2)

# Use stdout as per normal...
print("Hello, world!")

# Use plots...
plot(cars)

# Even ggplot!
plot(mtcars$hp, mtcars$mpg, data = mtcars)

