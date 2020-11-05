# Text stored as numbers


library(tidyverse)
library(lubridate)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/3_4")

capitals <- read_csv("capitals.csv")

head(capitals)
tail(capitals)
View(capitals)

capitals <- read_csv("capitals_corrected.csv")

head(capitals)