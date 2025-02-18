# Load the dataset
data <- read.csv("income.data.csv")

# Print head of dataframe
print(head(data))

# Problem 1
# Load data into linear regression model
model1 <- lm(happiness ~ income, data = data)

# View results
summary(model1)

# Question answers
# What is the estimated regression equation (Happiness = β0 + β1 × Income)?
# The estimated regression equation is (Happiness = 0.20427 + 0.71383 x Income)

# What is the value of R^2, and what does it indicate about the strength of the relationship between income and happiness? 
# The value of R^2 is 0.7493 which indicates that 74.93% of the variance in happiness can be explained by income.

# Interpret the coefficient β1 (the slope of the regression line). What does it tell you about the relationship between income and happiness?
# The coefficient β1, 0.71383, indicates that for each one-unit increase of the income value, happiness increases by the amount of the coefficient.

# Problem 2
# Evaluate the performance of the linear regression model
# Calculate the residuals of the model
residuals1 <- residuals(model1)

# Plot the residuals to check for homoscedasticity (constant variance of residuals)
plot(residuals1, main = "Residuals of Sample Linear Regression")

# Calculate the residual sum of squares (RSS) for the model
RSS1 <- sum(residuals1)

# Calculate the Mean Squared Error (MSE) for the model
MSE1 <- mean(residuals1)

# Question answers
# What do the residuals tell you about the model fit? Are there any patterns that indicate the model might not be a good fit?
# The plot of residuals appear to be distributed at random and mostly evenly, there is no clear indication of a pattern which suggests that the linear regression model is a good fit.

# What is the value of the residual sum of squares (RSS), and what does it indicate about the fit of the model?
# The value of the residual sum of squares (RSS) is 3.59087759527199e-16, further indicating that the model is a good fit of the model to explain the relationship between income and happiness. 

# What is the Mean Squared Error (MSE), and how can it be used to evaluate the model's prediction accuracy?
# The value of the Mean Squared Error (MSE) is 6.90743462400278e-19 indicates that the prediction accuracy of the model is very high. 