# Read data from .csv file
gdp <- read.csv("data/data-1952.csv")

# Calculate GDP
gdp['gdp'] <- gdp$pop * gdp$gdpPercap 
write.csv(gdp, "gdpc.csv")
