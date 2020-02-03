# step0-parse-html.R
# Written by Steve Simon
# 2020-01-20

source(file="src/prelims.R")
if (!exists("v")) v <- TRUE
if (!exists("update_all")) update_all <- TRUE

parse_old_web <- function(
  search_string, replace_string="Not yet", 
  dir_root="../web/old_web", n_max=9999) {
  if (!exists("ok_to_replace")) ok_to_replace <- FALSE  
  file_list <- dir_root %s% list.files(dir_root, "*.md")
  "\nSearching through" %b% length(file_list) %b% "files.\n\n" %>% cat
  n_matches <- 0
  n_files <- 0
  matched_files <- NULL
  n_max <- min(n_max, length(file_list))
  for (i_file in file_list[1:n_max]) {
    tx <- read_lines(i_file)
    found_lines <- str_which(tx, search_string)
    if (length(found_lines)==0) next
    n_matches <- n_matches + length(found_lines)
    n_files <- n_files + 1
    "\n\n" %0% i_file %>% br %>% cat
    n_lines <- length(tx)
    tx[n_lines+1] <- ""
    tx[n_lines+2] <- ""
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

intersect(stats_files, pmean_files)

stats_files %>% str_replace("old_web/", "old_web/stats/") -> new_stats
head(new_stats)
for (i in 1:length(stats_files)) {
  file.copy(stats_files[i], new_stats[i])
}

pmean_files %>% str_replace("old_web/", "old_web/pmean/") -> new_pmean
head(new_pmean)
for (i in 1:length(pmean_files)) {
  file.copy(pmean_files[i], new_pmean[i])
}

"../web/old_web" %s% oldwb_files %>%
  setdiff(stats_files) %>%
  setdiff(pmean_files) -> other_files

length(other_files)
other_files %>% str_replace("old_web/", "old_web/other/") -> new_other
head(new_other)
for (i in 1:length(other_files)) {
  file.copy(other_files[i], new_other[i])
}

stats_files <- parse_old_web(
  fixed("[Category: "),
  dir_root="../web/old_web/stats", n_max=5)

stats_path <- "../web/old_web/stats"
stats_files <- list.files(stats_path, "*.md")
for (i_file in stats_files) {
  tx <- readLines(stats_path %s% i_file)
  tx <- str_remove(tx, fixed("(../OldWebsite.html)"))
  str_c(tx[1:5], collapse=" ") %>% 
    str_extract("\\[StATS\\].*?\\)") -> title_and_date
  title_and_date %>%
    str_remove_all(fixed("*")) %>%
    # str_remove("^.*?\\)") %>%
    str_remove("\\(.*?$") %>%
    str_remove(fixed("[StATS]")) %>%
    str_remove(fixed(":"))       %>%
    str_trim              -> md_title
  "\n" %0% i_file %0% ": " %>% cat
  title_and_date          %>%
    str_remove("^.*\\(")  %>%
    str_remove("\\)")     %>%
    str_remove("created ") %>% 
    str_remove("Created ") %>%
    str_remove("$by ")     %>%
    str_remove(", updated.*") -> md_date
  if (is.na(md_date)) md_date <- "No date"
  str_c(tx, collapse=" ") %>% 
    str_extract_all("\\[Category:.*?\\]") %>%
    unlist %>%
    str_remove(fixed("[Category: ")) %>%
    str_remove(fixed("]")) %>%
    str_c(collapse=", ") -> md_tags
  if (!is.na(mdy(md_date, quiet=TRUE))) {md_date %<>% mdy %>% as.character}
  if (str_detect(md_date, "^[0-9]{4}-[0-9]{2}-[0-9]{2}")) {md_date %<>% str_sub(1, 10)}
  cat(md_date)
  yy <- str_sub(md_date, 3, 4)
  mm <- str_sub(md_date, 6, 7)
  md_source <- "http://www.pmean.com" %s% yy %s% str_replace(i_file, "md$", "html")
  "---"                             %1%
    "title:"    %b% md_title        %1%
    "author:"   %b% "Steve Simon"   %1%
    "source:"   %b% md_source       %1%
    "date:"     %b% md_date         %1%
    "category:" %b% "Blog post"     %1%
    "tags:"     %b% md_tags         %1%
    "output:"   %b% "html_document" %1%
  "---"                             -> new_header
  
  blank_lines <- str_which(tx, "^$")
  n_lines <- length(tx)
  blank_lines %<>% setdiff(n_lines)
  last_blank <- max(blank_lines)
  new_tx <- c(new_header, "", "<!---More--->", "", tx)
  if (length(blank_lines >= 2)) {tx <- c(tx, ""); blank_lines <- c(1, n_lines)}
  new_tx <- c(
    new_header,
    tx[blank_lines[1]:blank_lines[2]],
    "<!---More--->",
    tx[blank_lines[2]:last_blank], 
    "<!---Do not use",
    tx[1:blank_lines[1]],
    tx[(last_blank+1):n_lines],
    "--->",
    "")
  new_path <- "text"
  "," %b% new_path %s% yy %s% mm %s% i_file %>% cat
  writeLines(new_tx, new_path %s% yy %s% mm %s% i_file)
}



