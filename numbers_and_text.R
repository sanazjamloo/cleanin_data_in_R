#Converting text to numeric value (currency)

library(tidyverse)
library(lubridate)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/3_3")

names <- c("DRG", "ProviderID", "Name", "Address", "City", "State", "ZIP", "Region", "Discharges", "AverageCharges", "AverageTotalPayments", "AverageMedicarePayments")

inpatient <- read_tsv("inpatient.tsv", skip=1, col_names = names)

summary(inpatient)
View(inpatient)
dim(inpatient)

inpatient$AverageCharges

# I Need to tell R that these are numeric values
types <- 'ciccccccinnn'

# Then re-read the file 
inpatient <- read_tsv("inpatient.tsv", skip=1, col_names = names, col_types=types)

summary(inpatient)