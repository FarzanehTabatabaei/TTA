# First Task
name <- readline(prompt = "Enter your name: ")
age <- readline(prompt = "Enter your age: ")
print(paste("You're name is ",name,"and you're age is", age))

# Second Task
programme = "R"; 
n1 =  10; 
n2 =  0.5
nums = c(10, 20, 30, 40, 50, 60)
print(ls())
print("Details of the objects in memory:")
print(ls.str())

#Third Task
print("numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 60:")
print(mean(20:60))
print("Sum of numbers from 51 to 91:")
print(sum(51:91))

#Fourth Task
v = sample(-50:50, 10, replace=TRUE)
print("10 random integer values between -50 and +50:")
print(v)