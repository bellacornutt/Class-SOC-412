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
table(gapminder$year, gapminder$continent)
table(gapminder$continent, gapminder$year)
# use the one on the bottom

# making my own data
name <- c("ross", "rachel", "monica", "joey", "chandler", "phoebe")
gender <- c("man", "woman", "woman", "man", "man", "woman")
pets <- c(1, 3, 2, 1, 1, 2)
likes_skiing <- c(FALSE, TRUE, FALSE, FALSE, TRUE, TRUE)

# my own fake data set ---------------------------------------
my_df <- data.frame(name = name, gender = gender, 
                    pets = pets, likes_skiing = likes_skiing)

# summary of my fake data set ------------------------------------
summary(my_df)
