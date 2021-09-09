library(tidyverse)
# Build the Site ----------------------------------------------------------
setwd(here::here())

# clean previous html files except "footer.html"
list.files(pattern = "*.html",all.files = TRUE, full.names = TRUE, recursive = TRUE)[-1] %>% file.remove()

# list all Rmd files
Rmd_files <- list.files(pattern = "*.Rmd",all.files = TRUE, full.names = TRUE, recursive = TRUE)

# Render Rmd file by file
for(f in Rmd_files) {
  rmarkdown::render(f)
}
