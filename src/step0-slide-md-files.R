# step0-slide-mo-files.R
# written by Steve Simon
# created 2020-02-04

# This program moves png files from one directory
# to another.

source(file="src/prelims.R")
if (!exists("verbose")) verbose <- TRUE

root_dir <- "text"

rmd1 <- build_file_list(root_dir, "*.Rmd")
rmd2 <- build_file_list(root_dir, "*.Rmd")

rmd1 %>% str_remove(".*/") -> base1
rmd2 %>% str_remove(".*/") -> base2

base1 %>%
  setdiff(base2) -> unmatched

for (i_file in unmatched) {
  rmd1 %>%
    str_which(i_file) %>% cat
}

md1 <- build_file_list(root_dir, "*.md")
md2 <- build_file_list(root_dir, "*.md")

md1 %>% str_remove(".*/") -> base1
md2 %>% str_remove(".*/") -> base2

base1 %>%
  setdiff(base2) -> unmatched

for (i_file in unmatched) {
  md1 %>%
    str_which(i_file) %>% cat
}

bib1 <- build_file_list(root_dir, "*.bib")
bib2 <- build_file_list(root_dir, "*.bib")

bib1 %>% str_remove(".*/") -> base1
bib2 %>% str_remove(".*/") -> base2

base1 %>%
  setdiff(base2) -> unmatched

for (i_file in unmatched) {
  bib1 %>%
    str_which(i_file) %>% cat
}
