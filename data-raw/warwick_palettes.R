## code to prepare `warwick_palettes` dataset goes here

library(palettes)

# Discrete palettes

warwick_palettes_discrete <- pal_palette(
  primary = c("#3C1053", "#6DCDB8", "#CB333B", "#F1BE48", "#E87722", "#00A9CE")
)

usethis::use_data(warwick_palettes_discrete, overwrite = TRUE)

# Sequential palettes

warwick_palettes_sequential <- pal_palette(
  aubergine = pal_ramp(pal_colour(c("#3C1053", "#C5B7CB")), n = 8, space = "rgb"),
  teal = pal_ramp(pal_colour(c("#6DCDB8", "#D3F0EB")), n = 8, space = "rgb"),
  ruby = pal_ramp(pal_colour(c("#CB333B", "#EEC3C3")), n = 8, space = "rgb"),
)

usethis::use_data(warwick_palettes_sequential, overwrite = TRUE)

# Divergent palettes

#59346d

warwick_palettes_divergent <- pal_palette(
  aubergine_ruby = unique(c(pal_ramp(pal_colour(c("#634075", "#ffffff")), n = 5, space = "rgb"),
                     pal_ramp(pal_colour(c("#ffffff", "#CB333B")), n = 5, space = "rgb"))),
  aubergine_teal = unique(c(pal_ramp(pal_colour(c("#775887", "#ffffff")), n = 5, space = "rgb"),
                            pal_ramp(pal_colour(c("#ffffff", "#6DCDB8")), n = 5, space = "rgb")))
)

usethis::use_data(warwick_palettes_divergent, overwrite = TRUE)

# All palettes

warwick_palettes <- c(
  warwick_palettes_discrete,
  warwick_palettes_sequential,
  warwick_palettes_divergent
)

usethis::use_data(warwick_palettes, overwrite = TRUE)
