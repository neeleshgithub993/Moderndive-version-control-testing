library(nycflights13)
library(ggplot2)
library(moderndive)

#grammer of graphics
# matching data variable to aesthetic (aes for eg x,y position, size, colour ) 
# of geometric objects (geoms for example point, line, histogram etc)

#faceting breaks plot into several plots
#position - adjustment for barplots

# 5 named grahics.  scatterplots, linegraphs, histogram, boxplot, barplots

# 5NG1. scatterplots

View(flights)
View(alaska_flights)

ggplot(data = alaska_flights) +
  geom_point(aes(x = dep_delay, y = arr_delay))

#Overplotting
#adjusting transperency of points by adding alpha = 0.2

ggplot(data = alaska_flights) +
  geom_point(aes(x = dep_delay, y = arr_delay), alpha = 0.2)

#Jittering
#use geom_jitter() instead of geom_point()

ggplot(data = alaska_flights) +
  geom_jitter(aes(x = dep_delay, y = arr_delay), width = 30, height =30)

#using jitter and alpha both 

ggplot(data = alaska_flights) +
  geom_jitter(aes(x = dep_delay, y = arr_delay), width = 30, height =30, alpha = 0.4)

# 5NG2 Linegraphs via geomline. Used when variable on x axis has an inherent ordering such as time.

weather

?weather

early_january_weather

glimpse(early_january_weather)

ggplot(data = early_january_weather)+
  geom_line(aes(x = time_hour, y = temp))

# using different linetypes by using linetype = 0 to 6, size of line by size = ....
# and colour of line by colour = ......

ggplot(data = early_january_weather)+
  geom_line(aes(x = time_hour, y = temp), linetype = 1, size = 1, colour = "blue")


# 5NG3. Histograms. via geom_histogram
# bins, observations falling into bins

ggplot(weather)+
  geom_histogram(aes(x = temp))

#changing border colour to white by      colour = "........"
#and inside colour by     fill = "........"

ggplot(weather)+
  geom_histogram(aes(x = temp), colour = "white", fill = "steelblue")

# specify how many bins we want to cut x axis in by "bins = .........." 
#default bins are 30

ggplot(weather)+
  geom_histogram(aes(x = temp), bins = 40, colour = "white", fill = "steelblue")

# Or specify width of the bins by "binwidth = ........."

ggplot(weather)+
  geom_histogram(aes(x = temp), binwidth = 10, colour = "white", fill = "steelblue")

#facet wrapping
#splitting the histogram on the basis of month by adding facet_wrap(~month)

ggplot(weather)+
  geom_histogram(aes(x = temp), binwidth = 10, colour = "white", fill = "steelblue")+
  facet_wrap(~month)

# specify number of row in facet wrap by facet_wrap(~month, nrow = .....)
#or number of coloumns by ncol=......

ggplot(weather)+
  geom_histogram(aes(x = temp), binwidth = 10, colour = "white", fill = "steelblue")+
  facet_wrap(~month, nrow = 4)

ggplot(weather)+
  geom_histogram(aes(x = temp), binwidth = 10, colour = "white", fill = "steelblue")+
  facet_wrap(~month, ncol = 4)

# 5NG4 Boxplots. via geom_boxplot

ggplot(weather)+
  geom_boxplot(aes(x = factor(month), y = temp)). 
#numerical variable month converted to categorical variable by using factor()  

#5NG5 barplots  via geom_bar or geom_col
# geom_bar() when not pre counted and geom_col() when pre counted

ggplot(flights)+
  geom_bar(aes(x = carrier))

# Two categorical variables

View(flights)

ggplot(flights)+
  geom_bar(aes(x = carrier, fill = origin)). # this is called stacked barplots

#dodged barplots

ggplot(flights)+
  geom_bar(aes(x = carrier, fill = origin), position = "dodge")

# making width of every bar equal
ggplot(flights)+
  geom_bar(aes(x = carrier, fill = origin), 
           position = position_dodge(preserve = "single"))

#faceting geom bar

ggplot(flights)+
  geom_bar(aes(x = carrier))+
  facet_wrap(~origin, ncol = 1)
