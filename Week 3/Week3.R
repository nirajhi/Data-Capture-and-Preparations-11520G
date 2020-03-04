#Exercise 4

library(ggplot2)

cars_data = data("cars")

size_of_car_data = dim(mtcars)
num_row = nrow(mtcars)
num_col = ncol(mtcars)

first_row_second_col = mtcars[1,2]

first_row_second_col_byname = mtcars["Mazda RX4","cyl"]


hist(mtcars$mpg, breaks = 20, xlab = "Miles per gallon", ylab = "Count")

boxplot(mtcars$mpg~mtcars$cyl)

plot(mtcars$mpg)

plot(mtcars$hp~mtcars$wt)

number_of_manual_transmission = sum(mtcars$am)

number_of_automatic_transmission = num_row - number_of_manual_transmission


plot(mtcars$wt~mtcars$hp)

#Excersize 5