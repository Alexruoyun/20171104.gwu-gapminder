library(tidyverse)

download.file("http://fmichonneau.github.io/2017-11-03-gwu/gapminder.csv","data/gapminder.csv")

gapminder <- read.csv("data/gapminder.csv")

##Challenge:
##Calculate the average life expectancy by continent
##(and save it in a variable called life_exp_continent)
life_exp_continent <- gapminder %>% 
  group_by(continent) %>% 
  summarise(
    mean_life_exp = mean(lifeExp)
  )

##Challenge
##get the life expectancy by year for Canada
life_exp_canada <- gapminder %>% 
  filter(country == "Canada") %>% 
  select(year,lifeExp)

##Get the mean gdp per continent for the year 1972
mean_gdp_per_conti_1972 <- gapminder %>% 
  filter(year == 1972) %>% 
  group_by(continent) %>% 
  summarize(
    mean_gdp = mean(gdpPercap)
  )

##Get the population size through time for China
pop_size_china <- gapminder %>% 
  filter(country=="China") %>% 
  select(year,pop)

##Get the maxmum population size per country for the year 2007
max_pop_per_coun_2007 <- gapminder %>% 
  filter(year == 2007) %>% 
  group_by(country) %>% 
  summarise(
    max_pop = max(pop)
  )
