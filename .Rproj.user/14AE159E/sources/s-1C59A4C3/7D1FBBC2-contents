library(tidyverse)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/2_2")

carpinteria <- read_csv("population.csv")
glimpse(carpinteria)
summary(carpinteria)
View(carpinteria)

# Getting the total population
sum(carpinteria$Population)

# Creating a new tibble to get rid of total, male, and female rows
carpinteria <- carpinteria %>%
  filter(!(Subject%in% c('Total', 'Male', 'Female')))

sum(carpinteria$Population)
