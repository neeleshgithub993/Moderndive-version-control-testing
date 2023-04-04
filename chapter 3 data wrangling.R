library( dplyr, ggplot2, nycflights13)

# functions of dplyr 

#filter()

#summarise()

#group_by()

#mutate()

#arrange()

#join()

#filter()

View(flights)

portland_flights <- flights %>%
  filter( dest == "PDX")
 
portland_flights
View(portland_flights)
