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

## Gráfico de Caja con puntos sobrexpuestos

datos %>% 
  ggplot(aes(x = gear, y = mpg)) + 
  geom_boxplot() +
  geom_point() 

## Gráfico de Puntos con Caja transparente sobrexpuesta

datos %>% 
  ggplot(aes(x = gear, y = mpg)) + 
  geom_point() +
  geom_boxplot(alpha = 0.3)

## Cálculo de la media de mpg

media <- mean(datos$mpg)


## Gráfico de Caja con puntos sobrexpuestos y línea de media de mpg

datos %>% 
  ggplot(aes(x = gear, y = mpg)) + 
  geom_boxplot() +
  geom_point() +
  geom_hline(yintercept = media, colour = "red", linetype = "dashed")

