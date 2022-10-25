#  step2-augment-md-files.R
## written by Steve Simon
## created 2019-12-21

## Step 2-1. Preliminaries

source(file="src/prelims.R", echo=FALSE)

if (!exists("update_all")) update_all <- TRUE
if (!exists("verbose"   )) verbose    <- TRUE


## Step 2-2. Find the .md files

file_list <- build_yr_list(text_root, "*.md", v=FALSE)
file_list <- c(file_list, build_yr_list(text_root, "*.Rmd", v=FALSE))

v=FALSE
skipped_files <- NULL
for (i_file in file_list) {
  i_file %>%
    str_remove("^.*/") -> j_file
  if (should_i_skip(i_file, blog_root %s% j_file)) {
    skipped_files <- c(skipped_files, i_file)
    if (v) "\nSkipping" %b% j_file %>% cat
  }
}
"\n\nSkipping" %b% length(skipped_files) %b% "files.\n\n" %>% cat
file_list <- setdiff(file_list, skipped_files)
"\n\nThere are" %b% length(file_list) %b% "files remaining to be worked on.\n\n" %>% cat

for (i_file in file_list) {
  if (verbose) {"\n" %0% i_file %>% cat}
  tx <- read_lines(i_file)
  i_file %>% str_remove("^.*/") -> j_file
  file.copy(i_file, blog_root %s% j_file, overwrite=TRUE)
  read_lines(i_file)          %>%
    parse_yaml(i_file)        %>% 
    flag_unused_yaml_fields   %>% 
    modify_yaml_fields        %>% 
    write_tail                %>%
    write_links               %>%
    write_summ                -> fields
}

"\n\nSkipping" 
file_list <- setdiff(file_list, skipped_files)
"\n\nSuccessfully processed" %b% 
  length(file_list) %b% 
  "files after skipping"%b% 
  length(skipped_files) %b% 
  "files.\n\n" %>% cat

