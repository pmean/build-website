# step1-translate-bib-to-md.R
# written by Steve Simon
# created 2019-06-28

# This program finds all the bibtex files
# (extension .bib) in r1 and converts them
# to markdown format (extension .md) and
# stores them in md/r3.

# Step 1-1. Preliminaries

source(file="src/prelims.R")
if (!exists("verbose")) verbose <- TRUE
if (!exists("update_all")) update_all <- TRUE

# Step 1-2. Find the .bib files

write_everything <- function(f0) {
  f0 %>%
    str_remove("^.*/") %>%
    str_replace("bib$", "md") -> new_name
  new_path <- "../web/md/blog"
  f1 <- new_path %s% new_name
  if (check_dates(f0, f1)) return("Skipping" %b% f1)
  if (verbose)   {"\n    Working on" %b% f1 %>% cat}
  
  read_lines(f0) %>%
    parse_bibtex(f0)       %>%
    flag_unused_bib_fields %>%
    modify_bib_fields      %>% 
    write_body %>%
    write_tail %>%
    write_links %>%
    write_summ %>%
    print
}

file_root <- "text"
file_list <- build_file_list(file_root, "*.bib")

for (i_file in file_list) {
  f <- write_everything(i_file)
}
