# The Sparks Foundation Data Science & Business Analytics Internship.

# TASK 1- Prediction using Supervised ML -To Predict the percentage of marks of the students based on the number of hours they have studied.

# Performed By :Vignesh Yadavar
 
# First we will visualize our data using scatter plot.
 
# We denote Hours studied as "x" and Percentage Obtained as "y".
x <- c(2.5,5.1,3.2,8.5,3.5,1.5,9.2,5.5,8.3,2.7,7.7,5.9,4.5,3.3,1.1,8.9,2.5,1.9,6.1,7.4,2.7,4.8,3.8,6.9,7.8)
y <- c(21,47,27,75,30,20,88,60,81,25,85,62,41,42,17,95,30,24,67,69,30,54,35,76,86)
 
# Scatter Plot
   
plot(x = x,y = y,xlab = "Hours Studied",ylab = "Score Obtained",xlim = c(1,9),ylim = c(10,90),main = "Hours Studied vs Score Obtained")
   
# From the scatter plot it looks like there is a correlation between the two variables.
 
# Now we will use linear regression and plot a regression plot to prove that correlation between the two variables exist.
 
# We will use lm() function of R to generate a relationship between x and y variable.
     
relation <- lm(y~x)
print(summary(relation))
    

# Regression Plot
plot(x,y,col = "blue",main = "Hours Vs Scores",abline(lm(y~x)),cex = 1.3,pch = 16,xlab = "Hours Studied",ylab = "Score Obtained")
     
# The Regression Plot shows that our two variables are positively correlated.
       
# Using this model now we will predict the Score if the hours=9.25.
       
a <- data.frame(x = 9.25)
result <-  predict(relation,a)
print(result)
     
# Conclusion: According to our regression model if a student studies for 9.25 hours a day then he/she is likely to score 92.90985 marks(approximately 93).