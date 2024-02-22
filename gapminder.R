# Insall package ------

library(dplyr)
library(gapminder)
library(googlesheets4)
library(tidyverse)
library(ggplot2)


# ------

data = gapminder %>% 
  filter(continent == "Asia") %>% 
  arrange(lifeExp) %>% 
  group_by(country) %>% 
  slice_head()

data %>% 
  ggplot(aes(x= gdpPercap,y=lifeExp), color = continent) +
  geom_point()
  


  
