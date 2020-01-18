# prelims.R. This program was written by Steve Simon on 2019-06-11.

default_path <- "../data"

suppressMessages(suppressWarnings(library(base64enc)))
suppressMessages(suppressWarnings(library(curl     )))
suppressMessages(suppressWarnings(library(knitr    )))
suppressMessages(suppressWarnings(library(lubridate)))
suppressMessages(suppressWarnings(library(magrittr )))
suppressMessages(suppressWarnings(library(readr    )))
suppressMessages(suppressWarnings(library(rmarkdown)))
suppressMessages(suppressWarnings(library(stringr  )))
suppressMessages(suppressWarnings(library(tidyverse)))

verbose <- TRUE

# general functions

source(file="src/standard_functions.R")

# This function reads through a set of directories
# and stores files of a particular pattern in a
# character vector for later use.

build_file_list <- function(dir_root, file_pattern) {
  file_list <- NULL
  yr_list <- list.dirs(dir_root, recursive=FALSE)
  for (i_yr in yr_list) {
    if (verbose) {"\nYear =" %b% i_yr %>% cat}
    mo_list <- list.dirs(path=i_yr, recursive=FALSE)
    for (i_mo in sort(mo_list)) {
      if (verbose) {"\n  Month =" %b% i_mo %>% cat}
      new_files <- list.files(i_mo, pattern=file_pattern)
      if (length(new_files)==0) {
        if (verbose) " has no files of the form" %b% file_pattern %>% cat
        next
      }
      if (verbose) " has" %b% str_c(new_files, collapse=", ") %>% cat
      file_list <- append(file_list, i_mo %s% new_files)
    }
  }
  return(file_list)
}

# This function takes a topic, partial date,
# or category, and produces a link to the
# appropriate page.

build_link <- function(x, p="../archive") {
  x %>% str_split(", ") %>% unlist -> y
  p %s% y %>% 
    tolower %>% 
    str_replace_all(" ", "-") %0% ".html" -> added_dashes
  brack(y) %0% paren(added_dashes) %>%
    str_c(collapse=", \n") %>%
    return
}

# Test this function
if (verbose) {
  cat("\n\n***Testing build_link***\n")
  tst <- "Human side of statistics, Observational studies"
  tst %>% build_link %>% cat
}

# This function checks to see if a new
# file (f1) exists or if it is dated
# later than the original file (f0).

check_dates <- function(f0, f1) {
  t0 <- file.info(f0)$mtime
  t1 <- file.info(f1)$mtime
  skip_flag <- !is.na(t1) & (t1-t0 > 0) & !update_all
  if (skip_flag) {
    if (verbose) {"\n    Skipping  " %b% f1 %>% cat}
  }
  return(skip_flag)
}

# This function takes an entry from a bibtex
# file or a yaml header and removes unneeded
# punctuation (commas, quote marks, etc.)

remove_punctuation <- function(x) {
  x %>%
    str_trim                   %>%
    str_remove_all(fixed('"')) %>%
    str_remove_all(fixed("{")) %>%
    str_remove_all(fixed("}")) %>%
    str_remove    (",$"      ) %>%
    str_remove    ("^@"      ) %>%
    str_trim                   %>%
    return
}

# bib specific functions

# This function reads a bibtex file and creates
# an organized list of the information from 
# this file.

parse_bibtex <- function(tx, f0) {
  # Note: Some of the bib files have unprintable
  # junk characters at the very start.
  tx <- tx[nchar(tx)>0]
  tx[1] %<>% str_remove("^.*?@") 
  tx %>%
    str_subset("^\\}", negate=TRUE) %>%
    str_remove("[=\\{].*") %>%
    tolower %>%
    remove_punctuation %>%
    str_remove("mendeley-") %>%
    str_replace("annote"       , "note"    ) %>%
    str_replace("urldate"      , "blogdate") %>%
    str_replace("misc"         , "name"    ) %>%
    str_replace("inproceedings", "name"    ) %>%
    str_replace("book"         , "name"    ) %>%
    str_replace("article"      , "name"    ) -> field_names
  tx %>%
    str_subset("^\\}", negate=TRUE) %>%
    str_remove(".*?[=\\{]") %>%
    remove_punctuation %>%
    as.list  %>%
    set_names(field_names) -> fields
  fields$full_name <- f0
  fields$modified <- str_sub(file.info(f0)$mtime, 1, 10)
  return(fields)
}

# Test this function

if (verbose) {
  '@Article{falsify-research,'                           %1%
    'annote = {An article about misconduct.},'           %1%
    'Author="Fanelli, Daniele",'                         %1%
    'mendeley-tags = {Ethics in research},'              %1%
    'url = {https://fakesite.com},'                      %1%
    'urldate = {2019-05-31},'                            %1%
    'Title="{How many scientists fabricate research?}",' %1%
    'Journal="PLoS ONE",'                                %1%
    'Year="2009",'                                       %1%
    'Volume="4",'                                        %1%
    'Number="5",'                                        %1%
    'Pages="e5738",'                                     %1%
    'Month="May"'                                        %1%
    '}'                                                  %>%
    str_split("\n")                                      %>%
    unlist                                               -> tst_bib
  
  cat("\n\n***Testing parse_bibtex***\n")
  tst_bib %>% parse_bibtex("dummy-file-name.bib") %>% print
}

modify_bib_fields <- function(fields) {
  # Modify format if not found
  if (fields$format=="Not found") {
    fields$url %>%
      str_detect(regex("pdf$", ignore_case=TRUE)) %>%
      ifelse("pdf", "html") -> fields$format
  }
  fields$format <- fields$format %b% "format"
  
  # Build citation
  fields$citation <- fields$author %.% fields$title %.% "Available in " %>% str_wrap(50) %1%
    brack(fields$format) %p% fields$url %0% "."
  
  # Modify long author lists 
  n_authors <- str_count(fields$author, fixed(" and ", ignore_case=TRUE)) + 1
  if (n_authors > 2) {
    fields$author %<>% str_replace(regex(" and .*", ignore_case=TRUE), " et al")}
  
  # Modify title
  fields$title <- "Recommendation:" %b% fields$title
  
  # Build source
  fields$full_name %>% 
    str_remove("^.*?/") %>% 
    str_remove(fixed(".bib")) -> fields$source
  
  # Build image file
  fields$image <- str_remove(fields$source, "^.*/") %0% ".png"
  
  # Build full file names
  fields$full_name %>%
    str_remove("^.*/") %>%
    str_remove(fixed(".bib")) -> short_name
  fields$full_body_name <- "../web/md/blog"  %s% short_name %d% "md"
  fields$full_link_name <- "../web/links"    %s% short_name %d% "txt"
  fields$full_summ_name <- "../web/summ"     %s% short_name %d% "txt"
  
  fields$category <- "Recomendation"
  fields$month    <- str_sub(fields$blogdate, 1, 7)
  fields$day      <- str_sub(fields$blogdate, 8, 10)
  
  return(fields)
}

flag_unused_bib_fields <- function(fields) {
  key_fields <- c(
    "note",
    "author",
    "date",
    "format",
    "name",
    "tags",
    "title",
    "url",
    "blogdate"
  )
  for (f in key_fields) {
    if (is.null(fields[[f]])) fields[[f]] <- "Not found"
  }
  return(fields)
}

# This function skims through bibtex files
# and prints a specified field header.

skim_bib_files <- function(field_header, dir_root="../source/bib", file_pattern="*.bib") {
  file_list <- build_file_list(dir_root, file_pattern)
  for (i_file in file_list) {
    tx <- read_lines(i_file)
    fields <- parse_bibtex(tx, i_file)
    if(verbose) i_file %C% fields[[field_header]] %>% br %>% cat
    if(is.null(fields[[field_header]])) print(fields)
  }
}

# yaml specific functions

# This function reads a yaml header from a file
# and creates an organized list of the information
# from this file.

parse_yaml <- function(tx, f0) {
  yaml_lines <- str_which(tx, "---")
  if (length(yaml_lines) < 2) return("Two yaml dividers not found.")
  if (length(yaml_lines) == 2) {
    "\nWarning: no MORE marker found in" %b% f0 %>% br(2) %>% cat
    yaml_lines[3] <- min(length(tx), 50)
  }
  tx[2:(yaml_lines[2]-1)] %>%
    str_remove("\\:.*") %>%
    str_remove("mendeley-") %>%
    remove_punctuation %>% 
    str_replace("^date$", "blogdate") -> field_names
  tx[2:(yaml_lines[2]-1)] %>%
    str_remove(".*?\\:") %>%
    remove_punctuation %>%
    as.list  %>%
    set_names(field_names) -> fields
  note_range <- (yaml_lines[2]+1):(yaml_lines[3]-1)
  fields$note <- str_c(tx[note_range], collapse="/n")
  fields$full_name <- f0
  fields$modified <- str_sub(file.info(f0)$mtime, 1, 10)
  fields %>% return
}

# Test this function
if (verbose) {
  tst <- c(
    "---",
    "author: \"Steve Simon\"", 
    "date: \"2015-01-15\"", 
    "category: Statistics",
    "tags: \"Human side of statistics, Observational studies\"",
    "---",
    "Short text description",
    "<---more--->",
    "Additional text")
  cat("\n\n***Testing parse_yaml***\n")
  tst %>% parse_yaml("dummy-file-name.txt") %>% print
}

# This function updates information in yaml
# fields.

modify_yaml_fields <- function(f) {
  # Build full file names
  fields$full_tail_name <- str_replace(fields$full_post_name, "md$|Rmd$", "tail")
  fields$full_link_name <- str_replace(fields$full_post_name, "md$|Rmd$", "link")
  fields$full_summ_name <- str_replace(fields$full_post_name, "md$|Rmd$", "summ")
  
  fields$month    <- str_sub(fields$date, 1, 7)
  fields$day      <- str_sub(fields$date, 8, 10)
  
  fields$blogdate <- fields$date
  
  return(f)
}

flag_unused_yaml_fields <- function(fields, f0) {
  key_fields <- c(
    "author",
    "category",
    "date",
    "tags",
    "title"
  )
  field_names <- names(fields)
  unused_fields <- setdiff(key_fields, field_names)
  if (verbose) {"\nUnused fields:" %b% str_c(unused_fields, collapse=", ") %>% cat}
  for (i_field in unused_fields) {
    fields[[i_field]] <- "Not found"
  }
  return(fields)
}

# This function skims through the yaml headers
# of markdown files and prints a specified
# field header.

skim_yaml_files <- function(field_header, dir_root="../source/posts", file_pattern="*.md") {
  file_list <- build_file_list(dir_root, file_pattern)
  for (i_file in file_list) {
    tx <- read_lines(i_file)
    fields <- parse_yaml(tx, i_file)
    if(verbose) i_file %C% fields[[field_header]] %>% br %>% cat
    if(is.null(fields[[field_header]])) print(fields)
  }
}

# Functions for writing files

# This function writes the body of a markdown
# file associated with a bibtex recommendation.

write_body <- function(fields) {
  new_tx <-
    "---"                                  %1%
    "title: "    %q% fields$title          %1%
    "author: "   %q% fields$author         %1%
    "date: "     %q% fields$blogdate       %1%
    "category: " %q% "Recommendation"      %1%
    "tags: "     %q% fields$tags           %1%
    "source: "   %q% fields$source         %1%
    "name: "     %q% fields$name           %1%
    "output: "   %0% "html_document"       %1%
    "---"                                  %2%
    
    str_wrap(fields$note, 50)              %2%
    
    "<---More--->"                         %2%
    
    fields$citation                        %2%
    
    "![]"        %p% fields$image          %1%
    "\n"
  if (verbose) {"\n\n" %0% new_tx %>% cat}
  write_lines(new_tx, fields$full_body_name)
  return(fields)  
}

# This function produces a text file to be
# put at the end of a markdown file with 
# information and links to various 
# locations (tags, categories, dates).

write_tail <- function(fields) {
  tail_tx <- 
    "This" %b% build_link(fields$category)                %1%
    "was added to the website on"                         %1%
    build_link(fields$month)               %0% fields$day %1%
    "and was last modified on"                            %1%
    fields$modified                        %0% "."        %1%
    "You can find similar pages at"                       %1%
    build_link(fields$tags) %0% ".\n\n"
  
  if (str_detect(fields$source, "pmean")) {
    tail_tx                                     %1%
      "An earlier version of this page appears" %1%
      "[here]" %p% fields$source %0% ".\n\n"         -> tail_tx
  }
  
  if (verbose) {"\n\n" %0% tail_tx %>% cat}
  write_lines(tail_tx, fields$full_body_name, append=TRUE)
  return(fields)
}

# This function writes the names of various
# links (tags, category, date).

write_links <- function(fields) {
  fields$blogdate                            %1%
    fields$month                             %1%
    fields$category                          %1%
    str_replace_all(fields$tags, ", ", "\n") -> link_tx
  
  if (verbose) {"\nLinks" %1% link_tx %>% cat}
  write_lines(link_tx, fields$full_link_name)
  return(fields)
}

write_summ <- function(fields) {
  fields$note %>% 
    str_c(collapse="\n") %>%
    str_remove("^\n") %>%
    str_remove("^\n")  -> summ_tx

  brack(fields$title) %0% 
    paren("../blog" %s% fields$name %0% ".html") %b% 
    summ_tx %1% 
    "\n"                                         -> summ_tx
  if (verbose) {"\n\n" %0% summ_tx %>% cat}  
  write_lines(summ_tx, fields$full_summ_name)
  return(fields)
}

if (verbose) {cat("\n\n***Completed testing***\n\n")}

