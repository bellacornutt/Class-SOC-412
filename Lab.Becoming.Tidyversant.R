#############################
# Isabella Cornutt 
# SOC 412
# Winter 2025
# Becoming Tidyversant

# Load libraries and data -------------------------------
library(tidyverse)
load(url("https://github.com/AaronGullickson/stat_
         data/raw/main/output/earnings.RData"))
earnings
load("data/earnings.RData")

# Tidy it up -----------------------------------------

# group wages into five dollar groups and calculate percent of 
# respondents in each group
round(prop.table(table(cut(earnings$wages,
                           breaks=seq(from=0, to=100, by=5),
                           labels=paste("$",
                                         seq(from=0, to=95, by=5),
                                         "-",
                                         seq(from=5, to=100, by=5),
                                         sep="")))),
      3)*100

# calculate mean wages by gender and then reshape data wide so male and female 
# wage means are on the same line
rename(pivot_wider(summarize(group_by(earnings, gender),
                             mean_wages=mean(wages)),
                   names_from=gender, values_from=mean_wages),
       mean_wages_men=Male, mean_wages_women=Female)
