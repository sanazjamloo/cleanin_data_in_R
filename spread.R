# Making a long dataset wide by spread()

library(tidyverse)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/5_6")

weather <- read_csv("mexicanweather.csv")

weather 

weather.wide <- spread(weather,element, value )

weather.wide
