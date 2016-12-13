library(rprojroot)

root <- find_root(is_rstudio_project)
rm(list = ls())

source("src/0_input.R")
