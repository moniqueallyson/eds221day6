library(tidyverse)
library(palmerpenguins)

ggplot(data = penguins)


ggplot(
  data = penguins,
  mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g
  )
)



# Let's add a geometry
ggplot(
  data = penguins,
  mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g
  )
) +
  geom_point()

# Your turn: what types of figures are created by the following **geometries**

ggplot(
  data = penguins,
  mapping = aes(x = island)
) +
  geom_bar()

ggplot(
  data = penguins,
  mapping = aes(x = body_mass_g)
) + geom_histogram()

ggplot(
  data = penguins,
  mapping = aes(
    x = species,
    y = body_mass_g
  )
) +
  geom_boxplot()

# X and Y are not our only aesthetics
ggplot(
  data = penguins,
  mapping = aes(
    x = species,
    y = body_mass_g,
    fill = species
  )
) +
  geom_boxplot()

# What if fill and x refer to different columns

ggplot(
  data = penguins,
  mapping = aes(
    x = species,
    y = body_mass_g,
    fill = island
  )
) +
  geom_boxplot()

# **Scales** control how mapping appear
ggplot(
  data = penguins,
  mapping = aes(
    x = species,
   y = body_mass_g,
    fill = island
  )
) +
  geom_boxplot() +
  scale_y_continuous(
    name = "Body mass (g)",
    limits = c(2000, 7000)
)

# The shape aesthetic works on scatters
ggplot(
  data = penguins,
  mapping = aes(
    x = body_mass_g,
    y = flipper_length_mm,
    shape = species,
    color = species
  )
) +
  geom_point() +
  scale_shape_manual(
  values = c(
    Adelie = "square",
    Chinstrap = "diamond",
    Gentoo = "circle"
  )
)
