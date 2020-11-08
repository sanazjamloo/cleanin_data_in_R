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