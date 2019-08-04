library(tidyverse)

datos <- mtcars

datos <- datos %>% 
  mutate_at(vars(c("cyl", "vs", "am", "gear", "carb")), factor) 

glimpse(datos)

## Gráfico Inicial

datos %>% 
  ggplot(aes(x = gear, y = mpg)) + 
  geom_point() +
  geom_boxplot()

datos %>% 
  ggplot(aes(x = gear, y = mpg)) + 
  geom_boxplot() +
  geom_point() 

datos %>% 
  ggplot(aes(x = gear, y = mpg)) + 
  geom_point() +
  geom_boxplot(alpha = 0.3)

media <- mean(datos$mpg)

datos %>% 
  ggplot(aes(x = gear, y = mpg)) + 
  geom_boxplot() +
  geom_point() +
  geom_hline(yintercept = media, colour = "red", linetype = "dashed")

