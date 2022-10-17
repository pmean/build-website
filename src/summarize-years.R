# clean_files.R. This program was written by Steve Simon on 2020-05-24.

suppressMessages(suppressWarnings(library(glue     )))
suppressMessages(suppressWarnings(library(tidyverse)))

summarize_years <- function(path, site) {
  list.files(path, pattern="md$") %>%
    str_replace("\\.Rmd", "") %>%
    str_replace("\\.md", "") -> f
  glue("+ [{f}](http://{site}/{f})")
}

yr <- "05"
old <- "blog.pmean.com"
old <- "www.pmean.com/05"

glue("text/{yr}") %>%
  list.files(pattern="md$") %>%
  length -> k

header <- 

glue('
  ---
  title: Pages written in 20{yr}
  author: Steve Simon
  date: 20{yr}-12-31
  categories:
  - Blog post
  tags:
  - Website details
  output: html_document
  ---

  [2003 (21 pages)](http://new.pmean.com/2003/) |
  [2007 (161 pages)](http://new.pmean.com/2007/) |
  [2011 (58 pages)](http://new.pmean.com/2011/) |
  [2015 (55 pages)](http://new.pmean.com/2015/) | 
  [2016 (99 pages)](http://new.pmean.com/2016/) | 
  [2019 (65 pages)](http://new.pmean.com/2019/)

  New website ({k} files)
  
  
')

header %>%
  append(summarize_years(glue("text/{yr}"), "new.pmean.com")) %>%
  append("\nOld website\n") %>%
  append(summarize_years(glue("text/{yr}"), old)) -> tx

write_lines(tx, glue("text/{yr}/20{yr}.md"))
