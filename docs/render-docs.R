# load packages ----------------------------------------------------------------

library(fs)
library(tidyverse)
library(rmarkdown)
library(xaringan)

# non-xaringan -----------------------------------------------------------------
rmds <- dir_info(recurse = 3, glob = "docs/*.Rmd") %>% 
  filter(!str_detect(path, "slides")) %>%
  pull(path)
walk(rmds, render)

# xaringan ---------------------------------------------------------------------

tictoc::tic()
xaringans <- dir_info(recurse = 3, glob = "docs/*.Rmd") %>% 
  filter(str_detect(path, "slides")) %>%
  filter(!str_detect(path, "setup")) %>% 
  filter(str_detect(path, "01-welcome")) %>% 
  filter(!str_detect(path, "22")) %>% 
  pull(path)
walk(xaringans, render)

tictoc::toc()
