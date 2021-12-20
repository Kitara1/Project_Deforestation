#############################################
## The following loads the needed packages ##
#############################################
# load the required packages
packages <- c(
  "here", # for the project's organization
  "tidyverse", "lubridate", "dplyr", "DT", # for wrangling
  "reshape2", "ggrepel", "gghighlight", "patchwork", "maps", "tmap", "scales", "leaflet", "sf", "sp", "spData", "highcharter", # for plotting
  "cowplot", "googleway", "ggplot2", "corrplot", "standardize", "plm", "psych", "VIF", "olsrr", "gplots", "plotly", "coefplot",
  "rnaturalearth", "rnaturalearthdata", "kableExtra", "jtools", "vtable", "Hmisc", "MASS",
  "knitr", "kableExtra", "bookdown", "rmarkdown", "ggstance" # for the report
)

purrr::walk(packages, library, character.only = TRUE)


######################################################
## The following sets a few option for nice reports ##
######################################################

# general options
options(
  digits = 3,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())

# knitr options
opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  fig.height = 8,
  out.width = "70%",
  fig.align = "center",
  fig.width = 6,
  fig.asp = 0.618,
  fig.show = "hold",
  message = FALSE,
  echo = FALSE
)
