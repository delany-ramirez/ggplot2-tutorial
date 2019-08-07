## Añadir etiquetas a los gráficos 

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

## Añadir Etiquetas (labels)

graf_ejemplo + 
  labs(title = "Gráfico de dispersión de hp vs mpg",
       subtitle = "A mayor hp se observa menor mpg",
       x = "hp \n(Caballos de fuerza)",
       y = "mpg \n(Millas por galón)",
       col = "Cantidad de cambios",
       shape = "Tiene forma en V",
       caption = "Fuente de datos: mtcars")
       
