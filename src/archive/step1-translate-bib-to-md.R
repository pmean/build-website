# step1-translate-bib-to-md.R
# written by Steve Simon
# created 2019-06-28

# This program finds all the bibtex files
# (extension .bib) in r1 and converts them
# to markdown format (extension .md) and
# stores them in md/r3.

source(file="src/prelims.R")
if (!exists("v")) v <- TRUE
if (!exists("update_all")) update_all <- TRUE

text_root <- "text"

file_list <- build_yr_list(text_root, "\\.ris", v=FALSE)

for (i_file in file_list) {
  tx <- readLines(i_file)
  cat(tx, sep="\n")
  new_tx <- parse_ris(tx)
  new_file <- str_replace(i_file, "\\.ris$", ".bib")
  writeLines(new_tx, new_file)
}


file_list1 <- build_yr_list(text_root, "\\.bib", v=FALSE)
file_list2 <- build_yr_list(text_root %s% "zotero", "\\.bib", v=FALSE)

file_list <- c(file_list2, file_list1)

skipped_files <- NULL
for (i_file in file_list) {
  i_file %>%
    str_remove("^.*/") %>%
    str_replace("bib$", "md") -> j_file
  if (should_i_skip(i_file, blog_root %s% j_file)) {
    skipped_files <- c(skipped_files, i_file)
    if (v) "\nSkipping" %b% j_file %>% cat
  }
}
"\n\nSkipping" %b% length(skipped_files) %b% "files.\n\n" %>% cat
file_list <- setdiff(file_list, skipped_files)
"\n\nThere are" %b% length(file_list) %b% "files remaining to be worked on.\n\n" %>% cat

n <- length(file_list)
k <- 0
for (i_file in file_list) {
  k <- k+1
  if (v) "\nWorking on" %b% k %b% "of" %b% "files" %C% i_file %>% cat
  
  read_lines(i_file)       %>%
    parse_bibtex(i_file)   %>%
    flag_unused_bib_fields %>%
    modify_bib_fields      %>% 
    write_body             %>%
    write_tail             %>%
    write_links            %>%
    write_summ             -> fields
}
