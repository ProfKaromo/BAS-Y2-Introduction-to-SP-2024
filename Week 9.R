#Correlation Coefficients
x <- c(39,65,62,90,82,75,20,98,36,78)
y <- c(47,53,58,86,62,68,65,91,51,84)
cor(x,y)
cor(x,y,method = "pearson")
cor(x,y,method = "spearman")
cor(x,y,method = "kendall")
