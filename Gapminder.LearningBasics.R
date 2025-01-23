##########################
#### Isabella Cornutt ####
### SOC 412 ####
### Winter 2025 ###
### Learning R Basics ##
### GAPMINDER ###

# downloading gapminder -----------------------------------------------
library(gapminder)
data.frame(gapminder)

# finding mean and median ------------------------------------------
sum(gapminder$lifeExp)
sum(gapminder$gdpPercap)

median(gapminder$lifeExp)
median(gapminder$gdpPercap)

# two-way table of year and continent ------------------------------

