# step1-translate-bib-to-md.R
# written by Steve Simon
# created 2019-06-28

# This program finds all the bibtex files
# (extension .bib) in r1 and converts them
# to markdown format (extension .md) and
# stores them in md/r3.

source(file="src/prelims.R")
if (!exists("verbose")) verbose <- TRUE
if (!exists("update_all")) update_all <- TRUE

file_list <- build_file_list(text_root, "*.bib")

for (i_file in file_list) {
  i_file %>%
    str_remove("^.*/") %>%
    str_replace("bib$", "md") -> j_file
  new_path <- "../web/md/blog"
  if (should_i_skip(i_file, blog_root %s% j_file)) {
    "\nSkipping" %b% j_file %>% cat
    next
  }
  if (verbose) "\nWorking on" %b% i_file %>% cat
  
  read_lines(i_file)       %>%
    parse_bibtex(i_file)   %>%
    flag_unused_bib_fields %>%
    modify_bib_fields      %>% 
    write_body             %>%
    write_tail             %>%
    write_links            %>%
    write_summ             -> fields
}

