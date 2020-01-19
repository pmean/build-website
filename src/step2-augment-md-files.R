#  step2-augment-md-files.R
## written by Steve Simon
## created 2019-12-21

## Step 2-1. Preliminaries

source(file="src/prelims.R", echo=FALSE)

if (!exists("update_all")) update_all <- TRUE
if (!exists("verbose"   )) verbose    <- TRUE


## Step 2-2. Find the .md files

file_list <- build_file_list(text_root, "*.md")

for (i_file in file_list) {
  i_file %>% str_remove("^.*/") %>% str_replace("md$|Rmd$", "txt") -> j_file
  if (should_i_skip(i_file, link_root %s% j_file)) {
    "\nSkipping" %b% i_file %>% cat
    next
  }
  if (verbose) {"\n" %0% i_file %>% cat}
  tx <- read_lines(i_file)
  i_file %>% str_remove("^.*/") -> j_file
  file.copy(i_file, blog_root %s% j_file)
  read_lines(i_file)          %>%
    parse_yaml(i_file)        %>% 
    flag_unused_yaml_fields   %>% 
    modify_yaml_fields        %>% 
    write_tail                %>%
    write_links               %>%
    write_summ                -> fields
}

