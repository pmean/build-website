# copy_files.R. This program was written by Steve Simon on 2020-08-19.

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

copy_files <- function(
  old_root="text", new_root="c:/Users/simons/Documents/b04/content",
  subdir_list=c("99", zpad(0:22), "no"),
  file_pattern="md$", v=TRUE) {
  k <- 0
  for (subdir in subdir_list) {
    list.files(old_root %s% subdir) %>%
      str_subset(file_pattern) -> file_list
    "\nSearching through" %b% 
      length(file_list) %b% 
      "files in" %b%
      old_root %s% 
      subdir %>%
      br -> message
    if (verbose) cat(message)
    new_sub <- ifelse(subdir > "30", "19", "20") %0% subdir
    if (subdir=="no") new_dir <- "no"
    new_sub <- "post"
    for (i_file in file_list) {
      k <- k+1
      old_file <- old_root %s% subdir %s% i_file 
      new_file <- new_root %s% new_sub %s% i_file
      if (ok_to_copy) file.copy(old_file, new_file, overwrite=TRUE)
      "\n" %b%
        old_file %C% 
        ifelse(ok_to_copy, "copied to", "to be copied to ") %b%
        new_file %>% cat
    }
  }
  "\n\nTotal files" %b%
    ifelse(ok_to_copy, "copied:", "to be copied:") %b%
    k %>% cat
}
ok_to_copy <- TRUE
ok_to_copy <- FALSE
copy_files(file_pattern="md$")
