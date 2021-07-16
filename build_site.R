
library(tidyverse)
# Build the Site ----------------------------------------------------------
setwd(here::here())

list.files(pattern = "*.html",all.files = TRUE, full.names = TRUE, recursive = TRUE)[-1] %>% file.remove()

Rmd_files <- list.files(pattern = "*.Rmd",all.files = TRUE, full.names = TRUE, recursive = TRUE)

for(f in Rmd_files) {
  rmarkdown::render(f)
}
