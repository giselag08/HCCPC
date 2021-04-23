#----------------------------------Patron Stats Data------------------------------
# CODE OBJECTIVE: Identify if COVID-19 has affected frequency of patron visits from 2019 to 2021 

# Install packages
install.packages("readxl")
install.packages("dplyr")
install.packages("tidyr")
install.packages("tidyverse")
install.packages("ggplot2")

# Load Libraries
library(readxl)
library(dplyr)
library(tidyr)
library(tidyverse)
library(ggplot2)

# Import Excel files
X2019_stats <- read_excel("~/Desktop/2019_stats.xlsx", +
                            col_types = c("date", "numeric"))
View(X2019_stats) # view that excel imported correctly 
X2020_stats <- read_excel("~/Desktop/2020_stats.xlsx", +
                            col_types = c("date", "numeric"))
View(X2020_stats) # view that excel imported correctly 
X2021_stats <- read_excel("~/Desktop/2021_stats.xlsx", +
                            col_types = c("date", "numeric"))
View(X2021_stats) # view that excel imported correctly  
patrons_stats = rbind(X2019_stats, X2020_stats, X2021_stats) # combine excel files into one list
head(patrons_stats)

# Visualization 
p <- ggplot(patrons_stats, aes(Month, Patrons,)) + 
  geom_line() +
  labs(x = "Month",
       y = "Number of Patrons",
       title = "COVID-19's Impact on Patron Visits at HCC Plant City Library",
       subtitle = "2019-2021")
p
