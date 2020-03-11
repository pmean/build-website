# prelims.R. This program was written by Steve Simon on 2019-06-11.

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

# file locations

text_root <- "text"
blog_root <- "../web/md/posts"
arch_root <- "../web/md/archive"
summ_root <- "../web/summ"
link_root <- "../web/links"
html_blog <- "../web/site/posts"
html_arch <- "../web/site/archive"

# Test file locations
if (v) {
  cat("\n\n***Testing file locations***\n")
  text_root %>% list.files %>% length %b% "files found in text_root.\n" %>% cat
  blog_root %>% list.files %>% length %b% "files found in blog_root.\n" %>% cat
  arch_root %>% list.files %>% length %b% "files found in arch_root.\n" %>% cat
  summ_root %>% list.files %>% length %b% "files found in summ_root.\n" %>% cat
  link_root %>% list.files %>% length %b% "files found in link_root.\n" %>% cat
}


# general functions

# This function reads through a set of directories
# and stores files of a particular pattern in a
# character vector for later use.

build_file_list <- function(dir_root, file_pattern, v=TRUE) {
  file_list <- NULL
  yr_list <- list.dirs(dir_root, recursive=FALSE)
  for (i_yr in yr_list) {
    if (v) {"\nYear =" %b% i_yr %>% cat}
    mo_list <- list.dirs(path=i_yr, recursive=FALSE)
    for (i_mo in sort(mo_list)) {
      if (v) {"\n  Month =" %b% i_mo %>% cat}
      new_files <- list.files(i_mo, pattern=file_pattern)
      if (length(new_files)==0) {
        if (v) " has no files of the form" %b% file_pattern %>% cat
        next
      }
      if (v) " has" %b% str_c(new_files, collapse=", ") %>% cat
      file_list <- append(file_list, i_mo %s% new_files)
    }
  }
  return(file_list)
}

build_yr_list <- function(dir_root, file_pattern, v=TRUE) {
  file_list <- NULL
  yr_list <- list.dirs(dir_root, recursive=FALSE)
  for (i_yr in yr_list) {
    if (v) {"\nYear =" %b% i_yr %>% cat}
    new_files <- list.files(i_yr, pattern=file_pattern)
    if (length(new_files)==0) {
      if (v) " has no files of the form" %b% file_pattern %>% cat
      next
    }
    if (v) " has" %b% str_c(new_files, collapse=", ") %>% cat
    file_list <- append(file_list, i_yr %s% new_files)
  }
  return(file_list)
}

# This function takes a topic, partial date,
# or category, and produces a link to the
# appropriate page.

build_link <- function(x, p="../archive") {
  x %>% str_split(", *") %>% unlist -> y
  p %s% y %>% 
    tolower %>% 
    str_replace_all(" ", "-") %0% ".html" -> added_dashes
  brack(y) %0% paren(added_dashes) %>%
    str_c(collapse=", \n") %>%
    return
}

# Test this function
if (v) {
  cat("\n\n***Testing build_link***\n")
  tst <- "Human side of statistics, Observational studies"
  tst %>% build_link %>% cat
}

# This function checks to see if a new
# file (f1) exists or if it is dated
# later than the original file (f0).

# is.na f0.is.newer update_all skip_flag
# TRUE                         FALSE
# FALSE TRUE                   FALSE
# FALSE FALSE       TRUE       FALSE

should_i_skip <- function(f0, f1) {
  f0.is.newer <- file.info(f0)$mtime >= file.info(f1)$mtime
  if (is.na(f0.is.newer)) return(FALSE)
  if (f0.is.newer)        return(FALSE)
  if (update_all)         return(FALSE)
  return(TRUE)
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
  tx %<>% str_subset("abstract =", negate=TRUE)
  tx <- tx[nchar(tx)>0]
  tx[1] %<>% str_remove("^.*?@") 
  tx %>%
    str_subset("^\\}", negate=TRUE) %>%
    str_remove("[=\\{].*") %>%
    tolower %>%
    remove_punctuation %>%
    str_remove("mendeley-") %>%
    str_replace("annote"       , "note"    ) %>%
    str_replace("urldate"      , "blogdate") -> field_names
  tx %>%
    str_subset("^\\}", negate=TRUE) %>%
    str_remove(".*?[=\\{]") %>%
    remove_punctuation %>%
    as.list  %>%
    set_names(field_names) -> fields
  fields$full_name <- f0
  fields$modified <- str_sub(file.info(f0)$mtime, 1, 10)
  f0 %>%
    str_remove("^.*/") %>%
    str_remove(fixed(".bib")) -> fields$name
  return(fields)
}

# Test this function

if (v) {
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

c(
  "^TY", "type",   
  "^A1", "Primary Authors",
  "^A2", "Secondary Authors",
  "^A3", "Tertiary Authors",
  "^A4", "Subsidiary Authors",
  "^AB", "abstract",
  "^AD", "Author Address",
  "^AN", "Accession Number",
  "^AU", "Author",
  "^AV", "Location in Archives",
  "^BT", "Secondary title",
  "^C1", "Custom 1",
  "^C2", "Custom 2",
  "^C3", "Custom 3",
  "^C4", "Custom 4",
  "^C5", "Custom 5",
  "^C6", "Custom 6",
  "^C7", "Custom 7",
  "^C8", "Custom 8",
  "^CA", "Caption",
  "^CN", "Call Number",
  "^CP", "cp",
  "^CT", "Title of unpublished reference",
  "^CY", "Place Published",
  "^DA", "date",   
  "^DB", "Name of Database",
  "^DO", "doi",    
  "^DP", "Database Provider",
  "^ED", "Editor",
  "^EP", "End Page",
  "^ET", "Edition",
  "^ID", "Reference ID",
  "^IS", "issue",  
  "^J1", "journal abbreviation 1",
  "^J2", "journal abbreviation 2",
  "^JA", "journal standard abbreviation",
  "^JF", "journal full format",
  "^JO", "journal full format",
  "^KW", "Keywords",
  "^L1", "Link to PDF",
  "^L2", "Link to Full-text",
  "^L3", "Related Records",
  "^L4", "Images",
  "^LA", "Language",
  "^LB", "Label",
  "^LK", "Website Link",
  "^M1", "Number",
  "^M2", "Miscellaneous",
  "^M3", "Type of Work",
  "^N1", "Notes",
  "^N2", "Abstract",
  "^NV", "Number of Volumes",
  "^OP", "Original Publication",
  "^PB", "Publisher",
  "^PY", "year",   
  "^RI", "Reviewed Item",
  "^RN", "Research Notes",
  "^RP", "Reprint Edition",
  "^SE", "Section",
  "^SN", "isbn-issn",     
  "^SP", "start page",
  "^ST", "short title",
  "^T1", "Primary Title",
  "^T2", "Secondary Title",
  "^T3", "Tertiary Title",
  "^TA", "Translated Author",
  "^TI", "title",
  "^TT", "translated title",
  "^U1", "annote",
  "^U2", "user definable 2",
  "^U3", "user definable 3",
  "^U4", "user definable 4",
  "^U5", "user definable 5",
  "^UR", "url",    
  "^VL", "volume", 
  "^VO", "Published Standard number",
  "^Y1", "Primary Date",
  "^Y2", "Access Date"
) %>% 
  matrix(ncol=2, byrow=TRUE) -> ris_matrix
ris_matrix[ , 2] %<>% tolower %>% str_replace_all(" ", "-")

parse_ris <- function(tx) {
  tx %>%
    str_subset("^ID") %>%
    str_remove("^.*?- ") %>%
    tolower              -> id
  new_tx <- NULL
  for (i in 1:dim(ris_matrix)[1]) {
    tx %>%
      str_subset(ris_matrix[i, 1]) %>%
      str_remove("^.*?- ") %>%
      str_c(collapse=" and ") %>%
      str_c(ris_matrix[i, 2], " = {", ., "},") %>%
      append(new_tx) -> new_tx
    tx %<>% str_subset(ris_matrix[i, 1], negate=TRUE)
  }
  new_tx %<>% str_subset("\\{\\}", negate=TRUE)
  new_tx %<>% sort
  c("@article{" %0% id %0% ",", new_tx, "}") %>% return
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
  
  fields$blog_name <- blog_root %s% short_name %d% "md"
  fields$link_name <- link_root %s% short_name %d% "txt"
  fields$summ_name <- summ_root %s% short_name %d% "txt"
  
  fields$category <- "Recommendation"
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

skim_bib_files <- function(field_header, dir_root, file_pattern) {
  file_list <- build_file_list(dir_root, file_pattern)
  for (i_file in file_list) {
    tx <- read_lines(i_file)
    fields <- parse_bibtex(tx, i_file)
    if(v) i_file %C% fields[[field_header]] %>% br %>% cat
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
  fields$note <- str_c(tx[note_range], collapse="\n")
  
  fields$full_name <- f0
  f0 %>% 
    str_remove("^.*/") %>% 
    str_remove(fixed(".md")) -> fields$name
    
  fields$modified <- str_sub(file.info(f0)$mtime, 1, 10)
  fields %>% return
}

# Test this function
if (v) {
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

modify_yaml_fields <- function(fields, v=TRUE) {
  # Build full file names
  fields$full_name %>%
    str_remove(".*\\.") -> ext
  fields$full_name %>%
    str_remove("^.*/") %>%
    str_remove(fixed(".md")) %>%
    str_remove(fixed(".Rmd")) -> short_name
  fields$blog_name <- blog_root %s% short_name %d% ext
  fields$link_name <- link_root %s% short_name %d% "txt"
  fields$summ_name <- summ_root %s% short_name %d% "txt"
  
  fields$month    <- str_sub(fields$blogdate, 1, 7)
  fields$day      <- str_sub(fields$blogdate, 8, 10)
  return(fields)
}

flag_unused_yaml_fields <- function(fields, v=TRUE) {
  key_fields <- c(
    "author",
    "category",
    "source",
    "tags",
    "title"
  )
  for (f in key_fields) {
    if (is.null(fields[[f]])) fields[[f]] <- "Not found"
  }
  return(fields)
}

# This function skims through the yaml headers
# of markdown files and prints a specified
# field header.

skim_yaml_files <- function(field_header, dir_root="../source/posts", file_pattern="*.md", v=TRUE) {
  file_list <- build_file_list(dir_root, file_pattern)
  if (v) "\nScanning through" %b% length(file_list) %b% "files." %>% cat
  for (i_file in file_list) {
    tx <- read_lines(i_file)
    fields <- parse_yaml(tx, i_file)
    if(v) i_file %C% fields[[field_header]] %>% br %>% cat
    # if(is.null(fields[[field_header]])) print(fields)
  }
}

# This function skims through the text of
# markdown files and prints lines matching
# a specified string.

pull_images <- function(i_file, v=TRUE) {
  tx <- read_lines(i_file)
  if (v) "Reading" %b% length(tx) %b% "lines. " %>% cat
  tx %>% 
    str_extract_all("!\\[.*?\\]\\(.*?\\)") %>% 
    unlist  %>%
    str_remove("!.*/") %>%
    str_remove("\\)") -> found_lines
  if (v) {found_lines %>% str_c(collapse=", ") %>% cat}
  return(found_lines)
}

move_images <- function(i_yr, i_mo, i_file, image_list, v=TRUE) {
  n_images <- length(image_list)
  i_file %>% str_remove(fixed(".md")) -> root_name
  tx <- readLines("text" %s% i_yr %s% i_mo %s% i_file)
  if (v) "Processing" %b% n_images %b% "images in" %b% length(tx) %b% "lines of text." %>% cat
  for (j in 1:n_images) {
    i_image <- image_list[j]
    match_found <- file.exists("../web/images" %s% i_image)
    old_image_name <- ifelse(match_found, i_image, "image-not-found.png")
    old_image_name %>% str_remove(".*\\.") -> image_type
    new_image_name <- root_name %0% zpad(j) %d% image_type
    if (v) "\n  " %0% old_image_name %b% ">>" %b% new_image_name %>% cat
    if (!match_found) "." %b% i_image %b% "not found" %>% cat
    file.copy("../web/images" %s% old_image_name, "../web/images" %s% i_yr %s% new_image_name)
    tx %>% str_which(fixed(i_image)) %>% unlist -> i_line
    if (v) "." %b% str_c(i_line, collapse=";") %>% cat
    msg <- ifelse(match_found, "", i_image %b% "not found.")
    tx[i_line] <- "![" %0% msg %0% "](../../../web/images" %s% i_yr %s% new_image_name %0% ")"
  }
  writeLines(tx, "text" %s% i_yr %s% i_file)
}



skim_md_files <- function(search_string, dir_root="text", file_pattern="*.md", v=TRUE) {
  file_list <- build_file_list(dir_root, file_pattern)
  if (v) "\nScanning through" %b% length(file_list) %b% "files." %>% cat
  # file_list <- sample(file_list)
  for (i_file in file_list) {
    tx <- read_lines(i_file)
    tx %>% 
      str_extract_all(search_string) %>% 
      unlist -> found_lines
    if(v & length(found_lines > 1)) found_lines %>% str_c(collapse=", ") %>% cat
  }
  return(tx)
}

# tx <- skim_md_files("!\\[\\]\\(.*?\\)")

clean_files <- function(
    search_string, replace_string="Not yet", 
    dir_root="text/zotero", subdir_list=c("99", zpad(0:20), "no"),
    file_pattern="*.bib", v=TRUE) {
  if (!exists("ok_to_replace")) ok_to_replace <- FALSE 
  k <- 0
  for (subdir in subdir_list) {
    file_list <- list.files(dir_root %s% subdir, file_pattern)
    "\nSearching through" %b% 
      length(file_list) %b% 
      "files in" %b%
      subdir %>%
      br %>%
      cat
    for (i_file in file_list) {
      tx <- read_lines(dir_root %s% subdir %s% i_file)
      found_lines <- str_which(tx, search_string)
      if (length(found_lines)==0) next
      k <- k+1
      "\n\n" %0% i_file %>% br %>% cat
      str_c(tx[found_lines], collapse="\n") %>% cat
      if (replace_string!="Not yet") {
        tx %<>% str_replace(search_string, replace_string)
        "\n" %0% str_c(tx[found_lines], collapse="\n") %>% cat
      if (ok_to_replace) writeLines(tx, dir_root %s% subdir %s% i_file)
      }
    }
  }
  "\n\nTotal files" %b% 
    ifelse(ok_to_replace, "replaced", "to be replaced") %b%
    k %>% cat
}

# Functions for writing files

# This function writes the body of a markdown
# file associated with a bibtex recommendation.


write_body <- function(fields, v=TRUE) {
  fields$blogdate %>% str_sub(3,4) -> yr
  image_link <- "../../../images" %s% yr %s% fields$image
  if (!exists(image_link) & v) "\nFile" %b% fields$source %b% "does not have a corresponding image." %>% cat
  image_link <- ifelse(exists(image_link), "![]" %p% image_link, "")
  new_tx <-
    "---"                                     %1%
    "title: "    %q% fields$title             %1%
    "author: "   %q% fields$author            %1%
    "date: "     %q% fields$blogdate          %1%
    "category: " %q% "Recommendation"         %1%
    "tags: "     %q% fields$tags              %1%
    "source: "   %q% fields$source            %1%
    "name: "     %q% fields$name              %1%
    "output: "   %0% "html_document"          %1%
    "---"                                     %2%
    
    str_wrap(fields$note, 50)                 %2%
    
    "<!---More--->"                           %2%
    
    fields$citation                           %2%
    
    image_link                                %1%
    "\n"
  if (v) {"\n\n" %0% new_tx %>% cat}
  write_lines(new_tx, fields$blog_name)
  return(fields)  
}

# This function produces a text file to be
# put at the end of a markdown file with 
# information and links to various 
# locations (tags, categories, dates).

write_tail <- function(fields, v=TRUE) {
  tail_tx <- 
    "This" %b% build_link(fields$category)                %1%
    "was added to the website on"                         %1%
    build_link(fields$month)               %0% fields$day %1%
    "and was last modified on"                            %1%
    fields$modified                        %0% "."        %1%
    "You can find similar pages at"                       %1%
    build_link(fields$tags) %0% ".\n\n"
  if (v) "\n\n" %0% fields$source %0% "\n\n"
  if (str_detect(fields$source, "pmean")) {
    tail_tx                                     %1%
      "An earlier version of this page appears" %1%
      "[here]" %p% fields$source %0% ".\n\n"         -> tail_tx
  }
  
  if (v) {"\n\n" %0% tail_tx %>% cat}
  write_lines(tail_tx, fields$blog_name, append=TRUE)
  return(fields)
}

# This function writes the names of various
# links (tags, category, date).

write_links <- function(fields, v=TRUE) {
  fields$blogdate                            %1%
    fields$month                             %1%
    fields$category                          %1%
    str_replace_all(fields$tags, ", ", "\n") -> link_tx
  
  if (v) {"\nLinks" %1% link_tx %>% cat}
  write_lines(link_tx, fields$link_name)
  return(fields)
}

write_summ <- function(fields, v=TRUE) {
  fields$note %>% 
    str_c(collapse="\n") %>%
    str_remove("^\n") %>%
    str_remove("^\n")  -> summ_tx

  brack(fields$title %P% fields$blogdate) %0% 
    paren("../posts" %s% fields$name %0% ".html") %2% 
    summ_tx                                         -> summ_tx
  if (v) {"\n\n" %0% summ_tx %>% cat}  
  write_lines(summ_tx, fields$summ_name)
  return(fields)
}

if (v) {cat("\n\n***Completed testing***\n\n")}

