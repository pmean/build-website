# clean_files.R. This program was written by Steve Simon on 2020-05-24.

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

clean_files <- function(
    search_string, 
    replace_string="Not yet", 
    dir_root="text/zotero", 
    subdir_list=c("99", zpad(0:21), "no"),
    file_pattern="*.bib", 
    original_string=search_string,
    v=TRUE) {
  if (!exists("ok_to_replace")) ok_to_replace <- FALSE 
  k <- 0
  for (subdir in subdir_list) {
    list.files(dir_root %s% subdir) %>%
      str_subset(file_pattern) -> file_list
    "\nSearching through" %b% 
      length(file_list) %b% 
      "files in" %b%
      dir_root %s% 
      subdir %>%
      br -> message
    if (verbose) cat(message)
    for (i_file in file_list) {
      tx <- read_lines(dir_root %s% subdir %s% i_file)
      found_lines <- str_which(tx, search_string)
      if (length(found_lines)==0) next
      k <- k+1
      "\n\n" %0% subdir %s% i_file %>% br %>% cat
      str_c(tx[found_lines], collapse="\n") %>% cat
      if (replace_string!="Not yet") {
        tx %<>% str_replace_all(original_string, replace_string)
        "\n" %0% str_c(tx[found_lines], collapse="\n") %>% cat
      if (ok_to_replace) writeLines(tx, dir_root %s% subdir %s% i_file)
      }
    }
  }
  "\n\nTotal files" %b% 
    ifelse(ok_to_replace, "replaced", "to be replaced") %b%
    k %>% cat
}

verbose <- TRUE
verbose <- FALSE
ok_to_replace <- TRUE
ok_to_replace <- FALSE
clean_files(
  "</U",
  " ",
  dir_root="text", 
  file_pattern="md$")
