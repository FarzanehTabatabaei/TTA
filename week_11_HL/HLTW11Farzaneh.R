# First Task
a <- c(1,2,3,4,5)
b <- c(6,7,8,9,10)
c <- c(11,12,13,14,15)
m <- cbind(a,b,c)
print(m)
matplot(as.data.frame(m),type="l")

# Second Task
Employees = data.frame(Name = c("Farzaneh F","Amir K","Kamala B", "Iqra N","Zak D"),
                       Age = c(23,22,25,26,32),
                       Gender = c("F","M","F","F","M"),
                       Role = c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       Length_of_service = c("15 months","19 months","24 months","27 months","30 months")
)
print(Employees)
print(summary(Employees))

# Third Task
library("ggplot2")
x <- 1:20 
y <- x*x
qplot(x,y, xlab = "Numbers",
      ylab = "Squares")
# Add line
qplot(x, y, xlab = "Numbers",
      ylab = "Squares", geom=c("point", "line"))

#Fourth question
data <- data.frame(
  subjects = c("English", "Science", "Math", "History", "Chemistry"),  
  marks = c(70, 95, 80, 74, 100)
)
ggplot(data, aes(x=subjects, y=marks)) + 
  geom_bar(stat = "identity")