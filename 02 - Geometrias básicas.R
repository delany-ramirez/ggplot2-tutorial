library(tidyverse)

mtcars

glimpse(mtcars)

# Gráficos que considran una variable continua

  ## Histograma de frecuencia

ggplot(mtcars, aes(x = mpg)) + 
  geom_histogram(binwidth = 0.5)

  ## Gráfico de densidad

ggplot(mtcars, aes(x = mpg)) + 
  geom_density()

  ## Gráfico de puntos

ggplot(mtcars, aes(x = mpg)) + 
  geom_dotplot()

  ## Polígono de frecuencia

ggplot(mtcars, aes(x = mpg)) + 
  geom_freqpoly()


# Gráficos que considran una variable discreta

  ## Gráfico de barra

ggplot(mtcars, aes(x = factor(gear))) + 
  geom_bar()

# Gráficos que consideran dos variables continuas

  ## Gráfico de dispersión o puntos bivariados

ggplot(mtcars, aes(x = mpg, y = hp)) + 
  geom_point()

  ## Gráfico de dispersión con alteración aleatoria (jitter)

ggplot(mtcars, aes(x = mpg, y = hp)) + 
  geom_jitter()

  ## Gráfico de Alfombra, manta, tapete (rug)

ggplot(mtcars, aes(x = mpg, y = hp)) + 
  geom_rug()


# Gráficos que consideran dos variables (discreta y continua)

  ## Gráfico de barras con geom_col

ggplot(mtcars, aes(x = factor(gear), y = mpg)) +
  geom_col()

  ## Gráfico de caja o de bigotes

ggplot(mtcars, aes(x = factor(gear), y = mpg)) +
  geom_boxplot()

  ## Gráfico de violin

ggplot(mtcars, aes(x = factor(gear), y = mpg)) +
  geom_violin()


