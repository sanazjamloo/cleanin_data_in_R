library(tidyverse)
library(lubridate)

setwd("/Users/sanaz/Downloads/Ex_Files_Cleaning_Bad_Data_R/Exercise Files/4_3")

whitehouse <- read_csv("whitehouse.csv", col_types="ccncci")

# Using boxpolt to find outliers
boxplot(whitehouse$Salary)
whitehouse %>%
  filter(Salary>1000000)

whitehouse <- whitehouse %>%
  mutate(Salary=ifelse(Salary>1000000,NA,Salary))

boxplot(whitehouse$Salary)

# Running filter one more time to detect that one outlier
whitehouse %>%
  filter(Salary>200000)
