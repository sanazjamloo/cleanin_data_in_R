library(tidyverse)
library(lubridate)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/3_2")

weather <- read_csv("mexicanweather.csv")

# Using the spread function to make the dataset wider
weather <- weather %>%
  spread(element, value)

weather <- weather %>%
  filter(!(is.na(TMAX)& is.na(TMIN)))


weather <- weather %>%
  rename(maxtemp=TMAX, mintemp=TMIN) %>%
  select(station, date, mintemp, maxtemp)

head(weather, n=20)

# Converting the degrees to Celsius
weather <- weather %>%
  mutate(mintemp=mintemp/10) %>%
  mutate(maxtemp=maxtemp/10)

head(weather)

# Converting Celsius to Fahrenheit 
weather <- weather %>%
  mutate(mintemp=mintemp*(9/5)+32) %>%
  mutate(maxtemp=maxtemp*(9/5)+32)

head(weather)
