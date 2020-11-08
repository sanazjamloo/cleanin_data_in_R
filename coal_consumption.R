# Coal Consumption Case Study

library(tidyverse)

# Skipping the first two rows because one is empty and the other contains title of the dataset
coal <- read_csv("http://594442.youcanlearnit.net/coal.csv", skip=2)
glimpse(coal)

# Renaming the first column from X to Region
colnames(coal)[1] <- 'region'
summary(coal)

# Converting the dataset to long format and correct datatypes
coal_long <- gather(coal, 'year', 'coal_consumption', -region)
glimpse(coal_long)

coal_long$year <- as.integer(coal_long$year)
summary(coal_long)

coal_long$coal_consumption <- as.numeric(coal_long$coal_consumption)
summary(coal_long)


# Separating the regions from the countries
unique(coal_long$region)

noncountries <- c("North America", "Central & South America", "Antartica", " Europe", "Eurosia","Middle East",
                  "Africa", "Asia & Oceana", "World" )

matches <- which(!is.na(match(coal_long$region, noncountries)))

coal_country <- coal_long[-matches,]
coal_region <- coal_long[matches,]

unique(coal_country$region)
unique(coal_regoin$region)

# Visualizing and analyzing the tidy data
ggplot(data=coal_region, mapping=aes(x=year, y=coal_consumption)) +
  geom_point()

ggplot(data=coal_region, mapping=aes(x=year, y=coal_consumption)) +
  geom_line()

ggplot(data=coal_region, mapping=aes(x=year, y=coal_consumption)) +
  geom_line(mapping=aes(color=region))

