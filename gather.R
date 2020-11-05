# Making a wide dataset long by gather()

library(tidyverse)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/5_5")

pew <- read_csv("pew.csv")

pew

pew.long <- gather(pew, income, freq, -religion)

pew.long 



