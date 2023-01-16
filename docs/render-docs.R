# load packages ----------------------------------------------------------------

library(fs)
library(tidyverse)
library(rmarkdown)
library(xaringan)

# non-xaringan -----------------------------------------------------------------
# rmds <- dir_info(recurse = 3, glob = "docs/*.Rmd") %>%
#   filter(!str_detect(path, "slides")) %>%
#   pull(path)
# walk(rmds, render)

# xaringan ---------------------------------------------------------------------

# tictoc::tic()

xaringans <- dir_info(recurse = 3, glob = "docs/*.Rmd") %>%
  filter(str_detect(path, "slides")) %>%
  filter(!str_detect(path, "setup")) %>%
  # set filter to match the changed files
  filter(str_detect(path,
    # comment/un-comment here to update the slide(s):
    # "01-hello-world.Rmd"
    # "01-welcome.Rmd"
    # "02-toolkit"
    # "01-data-viz"
    # "02-ggplot2"
    # "04-viz-cat"
    # "05-tidy-data",
    # "06-grammar-wrangle"
    # "07-single-df"
    # "08-multi-df"
    # "10-data-types"
    # "12-data-import"
    # "02-fitting-interpreting-models"
  )) %>%
  filter(!str_detect(path, "22")) %>%
  pull(path)
xaringans
walk(xaringans, render)

# tictoc::toc()
