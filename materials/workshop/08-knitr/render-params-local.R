
# Basic render ------------------------------------------------------------

library(tidyverse)
library(palmerpenguins)
library(quarto)

# Here we can generate a specific RMarkdown doc
# with code rather than the render button

quarto::quarto_render(
  "08-knitr/penguin-params.qmd"
)

# See the document
rstudioapi::viewer("08-knitr/penguin-params.html")

# now we can render it with a specific species (chinstrap)
quarto::quarto_render(
  "08-knitr/penguin-params.qmd",
  execute_params = list(species = "Chinstrap"),
  output_file = "choose-chinstrap.html"
)

# see the new chinstrap report
rstudioapi::viewer("choose-chinstrap.html")


# Multi-render ------------------------------------------------------------

# here we write a small function to generate multiple 
# different reports based on changing a parameter
render_fun <- function(penguin){
  quarto::quarto_render(
    "08-knitr/penguin-params.qmd",
    execute_params = list(species = penguin),
    output_file = glue::glue(
      "08-knitr/{penguin}-report.html"
    )
  )
}


# Loop and render ---------------------------------------------------------

# find the distinct species names
penguin_names <- 
  distinct(penguins, species) %>% 
  pull() %>% 
  as.character() 

# equivalent to this base-R code
unique(penguins$species) %>%
  as.character()

penguin_names

# we can then use purrr to iterate across those 3 names 
# and generate 3 new reports! All without having to change
# anything else!

penguin_names %>% 
  purrr::walk(render_fun)

# we can then see if all 3 reports were generated
output_files <- fs::dir_ls("08-knitr/", glob = "*report.html")

# then compare the time now to the time the files were generated
# should be within a few seconds as long as you 
# run this code quickly after the above output_files
tibble(files = output_files) %>% 
  mutate(
    file_info = file.info(files),
    now = Sys.time()
  ) %>% 
  unpack(file_info) %>% 
  select(files, mtime, now)
