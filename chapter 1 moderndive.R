library(nycflights13)
library(dplyr)
library(knitr)

flights

#Explore the data

View(flights) # brings rstudio's built in data viewer

glimpse(flights) #included in dplyr package

kable(airlines) # good for reproducible results as in R Markdown documents


airlines$name
