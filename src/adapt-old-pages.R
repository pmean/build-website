# adapt-old-pages.R. This program was written by Steve Simon on 2021-01-03.

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

clean_title <- function(old_text) {
  old_text %>%
    str_subset("title>") -> found_lines
  if (length(found_lines)==0) {next}
  found_lines %>%
    str_trim %>%
    str_remove(fixed("<title>")) %>%
    str_remove(fixed("</title>")) %>%
    str_remove(fixed("Stats: ")) %>%
    str_remove(fixed("StATS: ")) %>%
    str_remove(fixed("P.Mean: ")) %>%
    str_remove(fixed("PMean: ")) %>%
    str_remove(fixed("P.Mean:&nbsp ")) %>%
    str_remove(fixed("P.Mean &gt;&gt;")) %>%
    paste(collapse=" ") %>%
    str_squish %>%
    return
}

make_new_text <- function(old_text) {
  body_start <- str_which(old_text, fixed("<body>"))
  body_end <- str_which(old_text, fixed("</body>"))
  old_text[body_start:(body_end-1)] %>%
    str_remove(fixed("<body>")) %>%
    paste0(collapse="\n") %>%
    return
}

adapt_old <- function(yr) {
  old_path %0% 
    yr %>%
    list.files %>%
    str_subset(fixed(".htm")) -> old_files
  for (f in old_files) {
    old_text <- readLines(old_path %s% yr %s% f, warn=FALSE)
    old_text %>%
      str_detect(fixed("This page has moved to  a")) %>%
      any -> exclude_this_file
    if (exclude_this_file) {next}
    old_text %>% clean_title -> text_title
    old_text %>% make_new_text -> new_text
    f %>%
      str_remove(fixed(".html")) %>%
      str_remove(fixed(".htm")) -> f_root
    old_text <-
      "<html>" %2% 
      "<head>" %1%
      "<title>" %0% text_title %0% "</title>" %1%
      "</head>" %2%
      "<body>" %2%
      "<h4>" %0% text_title %0% "</h4>" %2%
      "<p>This page has moved to a " %0% 
      '<a href="http://new.pmean.com/' %0%
      f_root %0% '/">new website</a></p>.' %2% 
      new_text %2%
      "</body>" %2%
      "</html>" -> new_page
    writeLines(new_page, con=old_path %s% yr %s% f)
  }
}
# for (yr in c(zpad(0:16), "99", "08a", "12a")) {
for (yr in c(zpad(14))) {
  cat("\n\n", yr, "\n\n", sep="")
  new_page <- adapt_old(yr)  
}
