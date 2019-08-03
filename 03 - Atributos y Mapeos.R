library(tidyverse)

datos <- mtcars

datos <- datos %>% 
  mutate_at(vars(c("cyl", "vs", "am", "gear", "carb")), factor) 

glimpse(datos)

# Gráficos que consideran dos variables continuas

  ## Gráfico de dispersión o puntos bivariados

ggplot(datos, aes(x = mpg, y = hp, col = gear, label = hp)) + 
  geom_point() +
  geom_text(vjust = 1.5)

# Gráficos que consideran dos variables (discreta y continua)

  ## Gráfico de barras con geom_col

ggplot(datos, aes(x = gear, y = mpg, fill = cyl)) +
  geom_col()

  ## Gráfico de caja o de bigotes

ggplot(datos, aes(x = factor(gear), y = mpg, fill = gear)) +
  geom_boxplot(fill = "white") + 
  geom_violin(alpha = 0.2)

# Gráficos que considran una variable continua

## Gráfico de densidad

ggplot(datos, aes(x = mpg, fill = gear)) + 
  geom_density(alpha = 0.3)
