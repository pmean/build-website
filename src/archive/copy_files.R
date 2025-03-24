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

copy_files <- function(
  old_path="text", 
  new_path="../qblog",
  old_dir_list=c("99", zpad(0:24), "tags"),
  file_pattern="md$",
  qc=FALSE) {

  k <- 0
  comprehensive_list <- NULL
  for (old_dir in old_dir_list) {
    list.files(old_path %s% old_dir) %>%
      str_subset(file_pattern) -> file_list
    
    str_glue(
      "\nSearching through {length(file_list)}",  
      " files in {old_path}/{old_dir}\n")  -> message
    
    cat(message)
    cat("\n")
    
    new_dir <- "posts"
    for (i_file in file_list) {
      verb <- ifelse(ok_to_copy,"copied", "to be copied")
      k <- k+1
      old_file <- str_glue("{old_path}/{old_dir}/{i_file}") 
      new_file <- str_glue("{new_path}/{new_dir}/{i_file}")
      if (ok_to_copy) file.copy(old_file, new_file, overwrite=TRUE)
      str_glue("\n{old_file}{verb} copied to {new_file}\n") -> message
      if (qc) cat(message, "\n")
    }
  }
  str_glue("\n\nTotal files {verb}: {k}") %>% cat
}
ok_to_copy <- TRUE
ok_to_copy <- FALSE
copy_files(file_pattern="md$")
