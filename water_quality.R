# Water Quality Case Study

library(tidyverse)
library(lubridate)
library(stringr)

water <- read_csv("http://594442.youcanlearnit.net/austinwater.csv")
glimpse(water)

#Begin analysis by creating a new tibble and changing the column names. 
water <- tibble ('siteName'=water$SITE_NAME,
                 'siteType'=water$SITE_TYPE,
                 'sampleTime'=water$SAMPLE_DATE,
                 'parameterType'=water$PARAM_TYPE,
                 'parameter'=water$PARAMETER,
                 'result'=water$RESULT,
                 'unit'=water$UNIT)
glimpse(water)

# To see how many unique parameters exist in the dataset
unique(water$parameter)

# Looking for PH only values. This function will show us the results as boolean values.
water[which(str_detect(water$parameter, 'PH')),]$parameter
# This method of search for water PH is not helpful because there are lots of other PH letters in this dataset. 

# Trying with unique()
unique(water$parameterType)

# Triming the rsults to just Alaklinity/PH
filtered_water <- subset(water, (parameterType=='Alkalinity/Hardness/pH') | parameterType=='Conventionals')
glimpse(filtered_water)

# To see what parameters exists in this dataset
unique(filtered_water$parameter)

# Reducing the content of the dataset to only 'PH' and 'Water Temperature' with a subset
filtered_water <- subset(filtered_water, ((parameter=='PH') | (parameter=='WATER TEMPRATURE')))
glimpse(filtered_water)

summary(filtered_water)

filtered_water$siteType <- as.factor(filtered_water$siteType)

filtered_water$sampleTime <- mdy_hms(filtered_water$sampleTime)

summary(filtered_water)

