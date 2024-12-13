# clean_files.R. This program was written by Steve Simon on 2020-05-24.

suppressMessages(suppressWarnings(library(base64enc)))
suppressMessages(suppressWarnings(library(curl     )))
suppressMessages(suppressWarnings(library(glue     )))
suppressMessages(suppressWarnings(library(knitr    )))
suppressMessages(suppressWarnings(library(lubridate)))
suppressMessages(suppressWarnings(library(magrittr )))
suppressMessages(suppressWarnings(library(readr    )))
suppressMessages(suppressWarnings(library(rmarkdown)))
suppressMessages(suppressWarnings(library(stringr  )))
suppressMessages(suppressWarnings(library(tidyverse)))

source(file="src/standard_functions.R")

# I had some trouble with write_lines until
# I used the option "lazy=FALSE" in the
# previous read_lines function. See
# https://community.rstudio.com/t/error-cannot-
#   open-file-for-writing-write-csv/111125
# Also note readr 2.1.0 comments at
# https://cran.r-project.org/web/packages/
#    readr/news/news.html

clean_files <- function(
    old, 
    new="Not yet", 
    dir_root="text", 
    subdir_list=c("99", zpad(0:23)),
    file_pattern="*\\.md$") {
  if (!exists("ok_to_replace")) ok_to_replace <- FALSE 
  k1 <- 0
  k2 <- 0
  for (subdir in subdir_list) {
    cat(glue("\n\n{subdir}"))
    glue("{dir_root}/{subdir}") %>%
      list.files %>%
      str_subset(file_pattern) -> file_list
    glue(
      "\nSearching through ",
      "{length(file_list)} ",
      "files in {dir_root}/",
      "{subdir}\n\n") -> message
    if (verbose) cat(message)
    for (i_file in file_list) {
      k1 <- k1+1
      fn <- glue("{dir_root}/{subdir}/{i_file}")
      tx <- read_lines(fn, lazy=FALSE)
      tf <- str_subset(tx, old)
      if (length(tf)==0) next
      k2 <- k2+1
      cat("\n\n")
      cat(glue("===> {fn}"))
      cat("\n")
      if (new != "Not yet") {
        ty <- str_replace_all(tf, old, new)
        tf <- paste(tf, ty, sep="\n")
      }
      cat(paste0(tf, collapse="\n\n"))
      if (ok_to_replace) {
        tx %>%
          str_replace_all(old, new) %>%
          write_lines(fn)
      }
    }
  }
  glue(
    "\n\nTotal files ",
    "{ifelse(ok_to_replace, '', 'to be ')}",
    "replaced = {k2} out of ",
    "{k1} files searched.") %>% cat
}

verbose <- TRUE
verbose <- FALSE
ok_to_replace <- TRUE
ok_to_replace <- FALSE

clean_files(
  "- [Dd]atasets$",
  dir_root="text", 
  file_pattern="md$")
