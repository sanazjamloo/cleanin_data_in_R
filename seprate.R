library(tidyverse)

inpatient <- read_tsv("http://594442.youcanlearnit.net/inpatient.tsv")

glimpse(inpatient)

names <- c("DRG", "ProviderID", "Name", "Address", "City", "State", "ZIP", "Region", "Discharges","AverageCharges", "AverageTotalPayments", "AveragemedicarePayments")

inpatient <- read_tsv("http://594442.youcanlearnit.net/inpatient.tsv", col_names= names, skip=1)

glimpse(inpatient)

# Changing data types 
types <- 'cccccccciccc'

inpatient <- read_tsv("http://594442.youcanlearnit.net/inpatient.tsv", col_names= names, skip=1, col_types=types)
glimpse(inpatient)

# Changing data types again for currency values
# After d for double failed, I used n for numeric.
types <- 'ccccccccinnn'
inpatient <- read_tsv("http://594442.youcanlearnit.net/inpatient.tsv", col_names= names, skip=1, col_types=types)
glimpse(inpatient)
unique(inpatient$DRG)

inpatient_separate <- separate(inpatient,DRG, c('DRGCode','DRGdescription'), '-')

inpatient_separate <- separate(inpatient,DRG, c('DRGCode','DRGdescription'), 4)
glimpse(inpatient)

