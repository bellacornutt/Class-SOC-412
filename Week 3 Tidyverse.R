#############################
# Isabella Cornutt
# SOC 412
# Winter 2025
# Week 3 - the tidyverse
##############################

# library calls always at the top
library(tidyverse)

# Making tibbles -------------------------------------------------------

name <- c("bob", "harry", "sally", "lars", "musashi", "jennifer")
gender <- c("man", "man", "woman", "man", "man", "woman")
age <- c(23, 37, 37, 87, 42, 37)
height <- c(73, 67, 64, 75, 68, 67)
likes_soccer <- c(TRUE, FALSE, TRUE, TRUE, FALSE, FALSE)

my_tibble <- tibble(name, gender = factor(gender), age, height, likes_soccer)
my_tibble

# load command
load("class_data/earnings.RData")
mean(earnings$wages)

# Piping -----------------------------------------------------------------
x <- c(3, 7, 9, 2, 5)
log_x <- log(x)
sum_log_x <- sum(log_x)
round(sum_log_x, 2)
