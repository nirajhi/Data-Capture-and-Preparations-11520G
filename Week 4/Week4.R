setwd("~/OneDrive - University of Canberra/Semester 2/Data Capture/Tutorials/Week 4/")

# packages to install
list.of.packages <- c("ggplot2")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)


#Exercise 1. 

quantities = 23
if(quantities > 30){
  print("What a great day!")
}else if(quantities>=20 & quantities<=30){
  print("Average day")
}else{
  print("Not enough for today")
}

# solution :
# for quantities = 10 =>"Not enough for today"
# for quantities = 30 =>"Average day"
# for quantities = 10 =>"What a great day!"


# Exercise 2


categories <- "C"
price <- 10

if(categories == "A"){
  print(paste("A vat rate of 8% is applied."," The total price is ", (price * 1.08)))
}else if(categories == "B"){
  print(paste("A vat rate of 10% is applied."," The total price is ", (price * 1.1)))
}else if (categories == "C"){
  print(paste("A vat rate of 20% is applied."," The total price is ", (price * 1.2)))
}else{
  
}



#Exercise 3
#read data from tab.txt
data_tab <- read.table("tab.txt", header = TRUE, sep="\t")


#Exercise 4

#current working directory 
path <- getwd()

#writing a text file to the text file
write.table(x=print("This is the first line\nThis is the second line\nThis is the third line\n"),
            file = paste(path,"/my_txt.txt", sep=""),
            row.names = FALSE,col.names = FALSE, quote = FALSE)

#reading the text from the my_txt.txt file
my_text <- readLines("my_txt.txt")

#print the text from my_txt.txt file
my_text

#Exercise 5
employees <-  read.csv("employee_sales.csv", TRUE, sep = ",", quote="\"", stringsAsFactors = FALSE)
print(employees)

#Exercise 6
max.salary <- max(employees$YearlyIncome)
print(max.salary)

min.sales <- max(employees$Sales)
print(min.sales)

median.sales <- median(employees$Sales)
print(median.sales)

mean.sales <- mean(employees$Sales)
print(mean.sales)

all_Bachelor <- subset(employees, employees$Education == "Bachelors")
print(all_Bachelor)


all_Bachelor_70000 <- subset(employees, employees$Education == "Bachelors" & employees$YearlyIncome> 70000)
print(all_Bachelor_70000)


lowest_salary_employee<- subset(employees, employees$YearlyIncome == min(employees$YearlyIncome))[,"FirstName"]
print("The employee with lowest salary ")
print(lowest_salary_employee)
