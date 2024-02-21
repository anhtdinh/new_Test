# Insall package ------

library(dplyr)
library(gapminder)
# ------

data = gapminder %>% 
  filter(continent == "Asia") %>% 
  arrange(lifeExp) %>% 
  group_by(country) %>% 
  slice_head()
