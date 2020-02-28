# step0-split-zotero-files.R
# written by Steve Simon
# created 2020-02-26

# This program takes files downloaded from
# Zotero and splits them into individual
# entries.

source(file="src/standard_functions.R")

old_path <- "../web"
new_path <- "../web-backup-" %0% Sys.Date()
dir_list <- c(
  "links",
  "md",
  "md/archive",
  "md/posts",
  "site",
  "site/archive",
  "site/posts",
  "summ"
)
max_count <- 5

if (!dir.exists(new_path)) dir.create(new_path)
grand_total <- 0
for (i_dir in dir_list) {
  if (!dir.exists(new_path %s% i_dir)) dir.create(new_path %s% i_dir)
  file_list <- list.files(old_path %s% i_dir, pattern="html$|md$|txt$")
  "\n\nWorking on directory" %s% old_path %s% i_dir %>% cat
  count <- 0
  for (i_file in file_list) {
    count <- count+1
    if (count <= max_count) "\n  Backing up" %b% old_path %s% i_dir %s% i_file %>% cat
    if (count == max_count) cat("\n    Each dot is an additional 100 files ")
    if (count >  max_count & count %% 100 == 0) cat(".")
    file.copy(old_path %s% i_dir %s% i_file, new_path %s% i_dir %s% i_file, overwrite=TRUE)
    file.remove(old_path %s% i_dir %s% i_file)
  } 
  "\n  Completed backup of" %b% format(length(file_list), big.mark=",") %b% "files." %>% cat
  grand_total <- grand_total + length(file_list)
}
"\nAll files backed up. Total count is" %b% format(grand_total, big.mark=",") %b% "files." %>% cat
