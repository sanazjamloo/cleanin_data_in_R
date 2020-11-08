# Reading delimited files
# Read_csv and read_tsv both use read_delim in the backend. 

library(tidyverse)

deaths <- read_delim(file='http://594442.youcanlearnit.net/drugdeaths.txt', delim='^')
glimpse(deaths)