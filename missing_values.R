# Missing Values
# Load the tidyverse
library(tidyverse)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/1_2")

#Load the data file
heating <- read_csv("heating.csv")

#Tidy the data file
heating <- heating %>%
  gather(key="age", value="homes", -Source)

# Begin the analysis
summary(heating)
dim(heating)

# Converting the data type for homes

heating %>%
  mutate(homes=as.numeric(homes))

heating %>%
  filter(is.na(as.numeric(homes)))

heating <- heating %>%
  mutate(homes=ifelse(homes==".",0,homes)) %>%
  mutate(homes=ifelse(homes=="Z",0,homes)) %>%
  mutate(homes=as.numeric(homes))
  
summary(heating)

