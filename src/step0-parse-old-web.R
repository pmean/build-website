# step0-parse-html.R
# Written by Steve Simon
# 2020-01-20

parse_old_web <- function(
  search_string, replace_string="Not yet", 
  dir_root="../web/old_web", file_pattern="*.md", v=TRUE) {
  if (!exists("ok_to_replace")) ok_to_replace <- FALSE  
  file_list <- dir_root %s% list.files(dir_root, file_pattern)
  "\nSearching through" %b% length(file_list) %b% "files.\n\n" %>% cat
  n_matches <- 0
  n_files <- 0
  matched_files <- NULL
  for (i_file in file_list) {
    tx <- read_lines(i_file)
    found_lines <- str_which(tx, search_string)
    if (length(found_lines)==0) next
    n_matches <- n_matches + length(found_lines)
    n_files <- n_files + 1
    "\n\n" %0% i_file %>% br %>% cat
    str_c(tx[found_lines], tx[found_lines+1], tx[found_lines+2], sep=" ") -> ty
    ty %>%
      str_c(collapse="\n") %>% cat
    if (replace_string!="Not yet") {
      ty %<>% str_replace(search_string, replace_string)
      "\n" %0% str_c(tx[found_lines], collapse="\n") %>% cat
      if (ok_to_replace) writeLines(tx, i_file)
    }
    matched_files <- c(matched_files, i_file)
  }
  "\nFound" %b% n_matches %b% "matching lines in" %b% n_files %b% "files." %>% cat
  matched_files
}

oldwb_files <- list.files(path="../web/old_web")
stats_files <- parse_old_web(fixed("[StATS](../OldWebsite.html)"))
pmean_files <- parse_old_web(regex("\\*\\*\\[P\\.Mean"))

