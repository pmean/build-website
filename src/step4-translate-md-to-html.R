#  step4-translate-md-to-html.R
## written by Steve Simon
## created 2019-12-21

## Step 0. Preliminaries

source(file="src/prelims.R", echo=FALSE)

wb_root <- "../web"

file_root <- wb_root %s% "md/blog"
file_list <- list.files(path=file_root, pattern="*.md")
html_root <- wb_root %s% "site/blog"

for (i_file in file_list) {
  i_file %>% str_replace("md$", "html") -> j_file
  if (check_dates(file_root %s% i_file, html_root %s% j_file)) {
    next
  }
  readLines(bl_root %s% i_file) %>%
    str_subset(regex("^Date:", ignore_case=TRUE)) %>%
    str_c(collapse="\n") -> file_date
  if (verbose) {
    "\nConverting" %b% j_file %C% file_date %>% br %>% cat
  }
  render(bl_root %s% i_file, output_dir=html_root)
}

