library(nycflights13)
library(ggplot2)
library(moderndive)

#grammer of graphics
# matching data variable to aesthetic (aes for eg x,y position, size colour ) 
# of geometric objects (geoms for example point, line histogram etc)

#faceting breaks plot into several plots
#position - adjustment for barplots

# 5 named grahics.  scatterplots, linegraphs, histogram, boxplot, barplots

# 1. scatterplots

View(flights)
View(alaska_flights)

ggplot(data = alaska_flights) +
  geom_point(aes(x = dep_delay, y = arr_delay))

#adjusting transperency of points by adding alpha = 0.2

ggplot(data = alaska_flights) +
  geom_point(aes(x = dep_delay, y = arr_delay), alpha = 0.2)


