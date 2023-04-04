library( dplyr, ggplot2, nycflights13)

# functions of dplyr 

#1. filter()

#2. summarise()

#3. group_by()

#4. mutate()

#5. arrange()

#6. join()

###################    1. filter()

View(flights)

portland_flights <- flights %>%
  filter( dest == "PDX"). #other operators can also be used like >, <, >=, <= , != not equal to etc. 
                          # criteria can be combined using "|" or operator or "&" and operator  
portland_flights
View(portland_flights)

btv_sea_flights_fall <- flights %>%
filter (origin == "JFK" & (dest == "BTV" | dest == "SEA") & month >= 10) #combining different operators

View(btv_sea_flights_fall)



