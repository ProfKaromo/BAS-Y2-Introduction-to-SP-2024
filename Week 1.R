#Week 1
print("Hello world")
cat("Hello world")

if(FALSE){
  "This is a demo for multi-line comments and it should be put
 inside either a single of double quote"
}

y <- c(3,6,7,8,4,3)
mean(y)

library(ggplot2)

# Use stdout as per normal...
print("Hello, world!")

# Use plots...
plot(cars)

# Even ggplot!
qplot(wt, mpg, data = mtcars, colour = factor(cyl))

