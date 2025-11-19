#Week 3
#Arrays
# Create an array.
A <- array(c('green' , 'yellow' , 'red' , 'magenta'), dim=c(3, 3, 2))
print(A)

#Factors
# Create a vector.
apple_colors <- c('green' , 'green' , 'yellow' , 'red' , 'red' , 'red' , 'green' )
# Create a factor object.
factor_apple <- factor(apple_colors)
# Print the factor.
print(factor_apple)
print(nlevels(factor_apple))

#Dataframe
Name <- c("Alex","Jane","Joan","Kim","Charles")
Age <-c(20,23,22,19,20)
County <- c("Nakuru","Embu","Nairobi","Nyeri","Kisumu")
Weight <- c(55,60,57,48,56)
Grade <- c("B","B+","A-","B-","C+")

MyData <- cbind(Name,Age,County,Weight,Grade)
MyData <- as.data.frame(MyData)
MyData

MyData2 <- data.frame(name = c("Alex","Jane","Joan","Kim","Charles"),
age = c(20,23,22,19,20),
county = c("Nakuru","Embu","Nairobi","Nyeri","Kisumu"),
weight = c(55,60,57,48,56),
grade = c("B","B+","A-","B-","C+"))
MyData2

#Extracting data from data frame
#MyData[i,j] the value if the ith row in jth column. 
MyData[2,5] #Specific value
MyData[2,] #second row/record
MyData[,4] #fourth column/variable

mean(as.numeric(MyData[,4]))

#Replacing values
MyData[2,5] <- "B-" #Replace a Specific value

gender <- c("M","F","F","M","M")
cbind(MyData,gender)

#Droping/Deleting 
MyData[,-(4:6)]

MyData$gender <- c("M","F","F","M","M")
MyData

MyData$gender2 <- factor(MyData$gender,levels = c("M","F"),labels = c(1,0))
MyData
class(MyData[,7])

for (i in 1:5) {
  for (j in 1:5) {
    if(i%%2==0 && j%%2==0)
      cat(i,"*",j,"=",i*j,"\n")
  }
  cat("\n")
}

for(i in 1:10){
  for(j in 1:10){
    if(i>j)
      cat(i," ")
  }
  cat("\n")
}
