# Import packges and dataset
library(ggplot2)
library(dplyr)
install.packages("gapminder")
library(gapminder)

# Create a subset of he gapminder dataset called gapminder_1957
gapminder_1957 <- gapminder %>% filter(year == 1957)

#Plot number1:Scatterplots, pop on the x-axis and lifeExp on the y-axis
ggplot(data = gapminder_1957, aes(x =pop, y =lifeExp )) +
  geom_point() 

#Plot number2:Scatterplot, pop on the x-axis and gdpPercap y-axis
ggplot(data = gapminder_1957, aes(x = pop, y = gdpPercap)) + 
  geom_point() 

#Plot number3:Scatterplot, gdpPercap on the x-axis and lifeExp on the y-axis
ggplot(data = gapminder_1957, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point() 

#Plot number4:Adding log scale:scatter plot comparing pop and gdpPercap, with both axes on log scale
ggplot(data = gapminder_1957, aes(x = pop, y = gdpPercap)) +
  geom_point() +
  scale_x_log10() +
  scale_y_log10()
  
#Plot number5:Scatter plot comparing pop and lifeExp, with color representing continent
ggplot(data = gapminder_1957, aes(x = pop, y = lifeExp, color=continent)) +
  geom_point() +
  scale_x_log10()

#Plot number6:Adding size aesthetics
ggplot(data = gapminder_1957, aes(x =pop, y= lifeExp, color=continent, size = gdpPercap)) +
  geom_point() +
  scale_x_log10()
#Plot number7:scatter plot comparing pop and lifeExp, Faceted by continent
ggplot(data = gapminder_1957, aes(x = pop, y = lifeExp, )) +
  geom_point() +
  facet_wrap(~continent)

#(important plot) create a variable by-year that gets the median life for each year
gapminder_1957_new <- gapminder_1957 %>% group_by(year) %>%
  summarise(median_lifeExp = median(lifeExp))

#Plot number8:create a scatterplot showing the change in median life
ggplot(data = gapminder_1957_new, aes( x = year, y = median_lifeExp, color = median_lifeExp) ) +
  geom_point()

#Summarize the median gdpPercap by year then save it as by_year
by_year <- gapminder %>% group_by(year) %>%
  summarise(medianGdpPercap = median(gdpPercap))

#Plot number9:create a line plot showing the change in median GdpPercap over
ggplot(data = by_year, aes(x =year , y = medianGdpPercap )) +
  geom_line() +
  expand_limits(y=0)

#Summarize the median gdpPercap by year & continent, save as by _year_continent
by_year_continent <- gapminder %>% group_by(year, continent) %>%
  summarise(medianGdpPercap = median(gdpPercap))

#Plot number10=create a line plot showing the change in median GdpPercap by cintinent overtime
ggplot(data =by_year_continent, aes(x = year , y = medianGdpPercap , color = continent)) +
  geom_line() +
  expand_limits(y=0)

#Summarize the median gdpPercap by continet in 1957
by_continent_1957 <- gapminder_1957 %>% group_by(continent) %>%
  summarise(medianGdpPercap = median(gdpPercap))

#Plot number11:create a bar plot showing median GdpPercap by continent
ggplot(data= by_continent_1957, aes(x = continent, y = medianGdpPercap)) + 
  geom_col()

#Filter the dataset for the year 1957, create a new collumn called pop_by_mil, save this in a new variable called gapminder_1957
gapminder_1957 <- gapminder %>% filter( year == 1957) %>% 
  mutate(pop_by_mil = pop/1000000)

#Plot number12:create a histogram of population(pop_by_mil) 
ggplot(data = gapminder_1957, aes(x =pop_by_mil )) +
  geom_histogram()

#Plot bumber13:create a boxplot comparing gdpPercap among continents, and add a title to this graph
ggplot(data = gapminder_1957, aes(x = gdpPercap, y = continent) ) +
  geom_boxplot() +
  labs(title = "Box Plot of GDP per Capita by continent in 1957")







