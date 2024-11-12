#Regression Analysis
x <- c(39,65,62,90,82,75,20,98,36,78)
y <- c(47,53,58,86,62,68,65,91,51,84)
model1 <- lm(y~x)
b0 <- model1$coefficients[1]
b1 <- model1$coefficients[2]
b0;b1
#The fitted model will be
#yhat = 38.66876+0.4314921*x
model1$coeff
model1$coeff[1]
model1$coeff[2]

coef(model1)
coef(model1)[1]
coef(model1)[2]

#Fitted values
yhat <- model1$fitted.values
yhat

#fitting the line
plot(x,y)
abline(model1)
sse = 0
for (i in length(y)) {
  sse = sse+((y[i]-model1$fitted.values[i])^2)
}
sse

mse <- sse/length(y)
mse

rmse <- sqrt(mse)
rmse

#Erros
e = model1$residuals
e
sum(e)

#Model Summary
summary(model1)

