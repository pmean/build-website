# sweep_files.R. This program was written by Steve Simon on 2020-05-24.
#
# This program removes non .md and .Rmd files from the text folder.

suppressMessages(suppressWarnings(library(base64enc)))
suppressMessages(suppressWarnings(library(curl     )))
suppressMessages(suppressWarnings(library(knitr    )))
suppressMessages(suppressWarnings(library(lubridate)))
suppressMessages(suppressWarnings(library(magrittr )))
suppressMessages(suppressWarnings(library(readr    )))
suppressMessages(suppressWarnings(library(rmarkdown)))
suppressMessages(suppressWarnings(library(stringr  )))
suppressMessages(suppressWarnings(library(tidyverse)))

source(file="src/standard_functions.R")

v <- TRUE

sweep_files <- function(
    dir_root="text", 
    subdir_list=c("99", zpad(0:21), "no"),
    file_pattern="*\\.md$", 
    verbose=TRUE) {
  if (!exists("ok_to_move")) ok_to_move <- FALSE 
  k <- 0
  for (subdir in subdir_list) {
    list.files(dir_root %s% subdir) %>%
      str_subset(file_pattern, negate=TRUE) -> file_list
    "\nSearching through" %b% 
      dir_root %s% 
      subdir -> message
    if (verbose) cat(message)
    for (i_file in file_list) {
      k <- k+1
      "\n\n" %0% i_file %>% br %>% cat
      }
  }
  "\n\nTotal files" %b% 
    ifelse(ok_to_move, "moved", "to be moved") %b%
    k %>% cat
}

verbose <- TRUE
verbose <- FALSE
ok_to_move <- TRUE
ok_to_move <- FALSE
sweep_files(
  dir_root="text", 
  file_pattern="md$",
  subdir_list=zpad(c(99, 0:21))
)

