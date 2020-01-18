#  step2-augment-md-files.R
## written by Steve Simon
## created 2019-12-21

## Step 2-1. Preliminaries

source(file="src/prelims.R", echo=FALSE)

if (!exists("update_all")) update_all <- TRUE
if (!exists("verbose"   )) verbose    <- TRUE


## Step 2-2. Find the .md files

file_root <- "text"
md_root <- "../web/md/blog"
file_list <- build_file_list(file_root, "*.md")

write_everything <- function(i_file) {
  if (check_dates(file_root %s% i_file, md_root %s% i_file)) return("Skipping" %b% f1)
  if (verbose) {"\n" %0% i_file %>% cat}
  i_file %>% str_remove("^.*/") -> j_file
  tx <- read_lines(i_file)
  file.copy(i_file, md_root %s% j_file)
  read_lines(i_file)          %>%
    parse_yaml(i_file)        %>% 
    flag_unused_yaml_fields   %>% 
    modify_yaml_fields        %>% 
    write_tail                %>%
    write_links               %>%
    write_summ                -> fields
}

for (i_file in file_list) {
  f <- write_everything(i_file)
}

