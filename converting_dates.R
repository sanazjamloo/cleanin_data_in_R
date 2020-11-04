# Deconstructing and constructing date values

install.packages('lubridate')

library(tidyverse)
library(lubridate)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/3_2")

weather <- read_csv("mexicanweather.csv")

summary(weather)
dim(weather)

# Creating a new year, month, and day column in the weather tibble
weather$year <- year(weather$date)
weather$month <- month(weather$date)
weather$day <- day(weather$date)

weather

wday("2018-04-01")
yday("2018-04-01")


