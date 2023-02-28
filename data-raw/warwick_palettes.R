## code to prepare `warwick_palettes` dataset goes here

library(palettes)

# Discrete palettes

warwick_palettes_discrete <- pal_palette(
  primary = c("#552D62", "#9A1310", "#004071", "#393A3B"),
  secondary = c("#886C91", "#B85A58", "#4D79A2", "#747576")
)

usethis::use_data(warwick_palettes_discrete, overwrite = TRUE)

# Sequential palettes

warwick_palettes_sequential <- pal_palette(
  aubergine = c("#552D62",
                "#664272",
                "#775781",
                "#886C91",
                "#9981A1",
                "#AA96B1",
                "#CCC0D0",
                "#DDD5E0",
                "#EEEAEF")
)

usethis::use_data(warwick_palettes_sequential, overwrite = TRUE)

# All palettes

warwick_palettes <- c(
  warwick_palettes_discrete,
  warwick_palettes_sequential
)

usethis::use_data(warwick_palettes, overwrite = TRUE)
