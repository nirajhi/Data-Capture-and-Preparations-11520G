setwd("~/OneDrive - University of Canberra/Semester 2/Data Capture/Week 2/Tutorial/")


# name <- readline(prompt = "Input your name:")
# age <- readline(prompt = "Input your age:")
# 
# print(paste("My name is ",name, " and I am ",age, "years old."))

age <- c(1,3,5,2,11,9,3,9,12,3)
weight <- c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)

df <- data.frame(age, weight)

mean_weight <- mean(weight)

sd_weight <- sd(weight)

correlation <-  cor(age, weight)



plot(age, weight,main = "Age to weight")

linearRegression <- lm(weight~age, data = df)



abline(linearRegression$coefficients[1], linearRegression$coefficients[2])


summary(linearRegression)


