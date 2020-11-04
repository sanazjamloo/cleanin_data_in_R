library(tidyverse)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/1_4")

employees <- read_csv("employees.csv")

View(employees)



# There is no way to calculate aggregations because there is a missing value in the salary column.
# Missing values need to be removed before any calculations.
sum(employees$Salary, na.rm=TRUE)
mean(employees$Salary, na.rm=TRUE)
max(employees$Salary, na.rm=TRUE)


