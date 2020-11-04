library(tidyverse)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/1_3")

land <- read_csv("publiclands.csv")

dim(land)

summary(land)
nrow(land)
sum(is.na(land))
head(land, 10)
str(land)
unique(land$State)

# Addressing the missing states rows by appending 0 to the acres of the missing states.
missing_states <- tibble(State=c('Conneticut', 'Deleware', 'Hawaii', 'Iowa', 'Maryland', 'Massachusetts', 
                                 'New Jersey', 'Rhode Island'),
                          PublicLandAcres=c(0,0,0,0,0,0,0,0))
land <- rbind(land, missing_states)
View(land)


