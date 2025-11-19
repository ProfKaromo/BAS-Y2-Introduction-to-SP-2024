#Data Analysis
#mtcars
View(mtcars)
head(mtcars)
head(mtcars,10)
tail(mtcars)
tail(mtcars,10)
names(mtcars)
#Column Extraction
mtcars[,c(1,2,3)]
mtcars[,c(1:5,8,9)]
#Row extraction
mtcars[1,]
mtcars[c(2:6,15:18,28),]
#Extractions of rows and columns
D1 <- mtcars[c(1:5),c(1:5)]
D1
mtcars[c(6:16,23:25,29),c(2:4,6:8,10)]

#Variable Extraction
mpg
mtcars$mpg
attach(mtcars)
mpg
hp

detach(mtcars)
model2 <- lm(mpg~hp,data = mtcars)

plot(women$height,women$weight,xlab = "Heigh",ylab = "Weight",main = "Regression of Weight on Height on women")
fit2 <- lm(women$weight~women$height)
abline(fit2)
summary(fit2)
