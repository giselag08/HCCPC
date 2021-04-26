#----------------------------------ILL Stats Data------------------------------
# CODE OBJECTIVE: Identify if COVID-19 has affected frequency of ILL requests by comparing ILL data from 2018-19, 2019-20, and 2020-21 academic years

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

# Create a data frame 
df <- data.frame(Year=rep(c('2019', '2020', '2021'), each=2),
                 ILL=rep(c('lending', 'borrowing'), times=3),
                 Requests=c(94, 19, 78, 20, 22, 11))
view(df)

# Visualization 
ggplot(df, aes(fill=ILL, y=Requests, x=Year)) +
  geom_bar(position='dodge', stat='identity') +
  ggtitle('COVID-19 Impact on ILL Requests at HCC Plant City Library')
