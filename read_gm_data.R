# Read data from .csv file
gdp <- read.csv("data/data-1952.csv")
new <- read.csv("data/data-1957.csv")
gdp <- rbind(gdp, new)

# Calculate GDP
gdp['gdp'] <- gdp$pop * gdp$gdpPercap 
# Subset variables
keep <- c('country', 'year', 'lifeExp', 'gdp')
gdp <- gdp[keep]
write.csv(gdp, "gdpc.csv")
