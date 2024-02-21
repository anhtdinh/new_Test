# Insall package ------

library(dplyr)
library(gapminder)
# ------

data = gapminder %>% 
  filter(continent == "Asia") %>% 
  arrange(lifeExp)

