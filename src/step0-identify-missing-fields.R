# step0-identify-missing-fields.R
# written by Steve Simon
# created 2020-02-04

# This program reads files and identifies those
# that have missing fields.

suppressMessages(suppressWarnings(library(knitr    )))
suppressMessages(suppressWarnings(library(lubridate)))
suppressMessages(suppressWarnings(library(magrittr )))
suppressMessages(suppressWarnings(library(readr    )))
suppressMessages(suppressWarnings(library(rmarkdown)))
suppressMessages(suppressWarnings(library(stringr  )))
suppressMessages(suppressWarnings(library(tidyverse)))

year_list <- "20"
for (i_year in year_list) {
  list.files(path=paste0("text/", i_year), pattern="*.md", full.names=TRUE) -> file_list
  for (i_file in file_list) {
    file_text <- readLines(i_file)
    if(any(str_detect(file_text, "urldate"))) next
    cat("\n")
    cat(i_file)
    cat(" ")
    i_file %>%
      file.info %>%
      pull(ctime) %>% 
      str_sub(1, 10) %>%
      cat
  }
}
