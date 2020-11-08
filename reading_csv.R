# Reading the csv file and renaming the column names

library(tidyverse)

inspections <- read_csv("http://594442.youcanlearnit.net/inspections.csv")
glimpse(inspections)

names <- c("ID", "DBAName","AKAName", "License", "FacilityType", "Risk", "Address",
           "City", "State", "ZIP", "InspectionDate","InspectionType", "Results",
           "Violations", "Latitude", "Longitude", "Location")

inspections <- read_csv("http://594442.youcanlearnit.net/inspections.csv",
                col_names=names, skip=1)
glimpse(inspections)


