## Añadir facets a los gráficos 

library(tidyverse)

datos <- mtcars

datos <- datos %>% 
  mutate_at(vars(c("cyl", "vs", "am", "gear", "carb")), factor) 

glimpse(datos)

## Gráfico Inicial

graf_ejemplo <- datos %>% 
  ggplot(aes(x = hp, y = mpg, col = gear, shape = vs)) + 
  geom_point(size = 2)

graf_ejemplo

## Añadir Facets

graf_ejemplo +
  facet_wrap(~ cyl, nrow = 2, scales = "free_y") + 
  labs(title = "Caballos de fuerza vs millas por galón por cilindros")
