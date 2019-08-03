library(tidyverse)

mtcars

ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point()

mtcars %>% 
  ggplot(aes(x = hp, y = mpg)) + 
  geom_point()

