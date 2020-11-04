library(tidyverse)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/2_1")

continents <- read_csv("continents.csv")

View(continents)

# Resolving duplicated rows
continents <- unique(continents)
View(continents)

continents <- continents %>%
  filter(!(Continent=='Antarctica' & Population > 100000))
View(continents)
