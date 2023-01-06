# yearly-archive.R. This program was written by Steve Simon on 2021-01-02.

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

old_path <- "c:/users/steve/dropbox/professional/fun stuff/update-website/"
new_path <- "text/"
archive_new <- function(yr) {  
  new_path %0% 
    yr %>%
    list.files %>%
    str_subset("md$") %>%
    str_replace(fixed(".Rmd"), "") %>%
    str_replace(fixed(".md"), "") -> new_files
  cat("\n\nNew website (")
  cat(length(new_files))
  cat(" files)\n\n")
  "+ [" %0% 
    new_files %0%
    "](http://new.pmean.com/" %0%
    new_files %0%
    "/)" %>%
    cat(sep="\n")
}
archive_old <- function(yr) {
  old_path %0% 
    yr %>%
    list.files -> old_files
  cat("\n\nOld website\n\n")
  "+ [" %0% 
    old_files %>%
    str_replace(fixed(".html"), "") %>%
    str_replace(fixed(".htm"), "") %0%
    "](http://www.pmean.com/" %0%
    yr %0%
    "/" %0%
    old_files %0%
    ")" %>%
    cat(sep="\n")
}

yrs <- c("2003", "2007", "2011", "2015", "2019", "2021")
paste0(brack(yrs), paren("http://new.pmean.com/" %0% yrs %0% "/"), collapse=" |\n") %>% cat
cat("\n\n")
archive_new("22")