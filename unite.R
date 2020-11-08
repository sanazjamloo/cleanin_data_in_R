# Combining multiple columns into one column
library(tidyverse)

inspections <- read_csv("http://594442.youcanlearnit.net/inspections.csv")
glimpse(inspections)

names <- c("ID", "DBAName","AKAName", "License", "FacilityType", "Risk", "Address",
           "City", "State", "ZIP", "InspectionDate","InspectionType", "Results",
           "Violations", "Latitude", "Longitude", "Location")

inspections <- read_csv("http://594442.youcanlearnit.net/inspections.csv",
                        col_names=names, skip=1)
glimpse(inspections)

# Combining City and State into one column as Regio
regional_inspections <- unite(inspections, Region, City, State, sep=",")
glimpse(regional_inspections)

unique(regional_inspections$Region)

library(stringr)

#String manipulation
# Converting everything in the region field to uppercase
regional_inspections$Region  <- str_to_upper(regional_inspections$Region)
# unique(regional_inspections$Region)

# Handling misspellings of Chicago
regional_inspections$Region <- str_replace(regional_inspections$Region, "CCHICAGO, IL", "CHICAGO, IL")
regional_inspections$Region <- str_replace(regional_inspections$Region, "CHCICAGO, IL", "CHICAGO, IL")
regional_inspections$Region <- str_replace(regional_inspections$Region, "CHICAGOCHICAGO, IL", "CHICAGO, IL")
regional_inspections$Region <- str_replace(regional_inspections$Region, "CHCHICAGO, IL", "CHICAGO, IL")
regional_inspections$Region <- str_replace(regional_inspections$Region, "CHICAGOI, IL", "CHICAGO, IL")

unique(regional_inspections$Region)

# Handling NAs
regional_inspections$Region <- str_replace(regional_inspections$Region, "CHICAGO, NA", "CHICAGO, IL")
unique(regional_inspections$Region)




