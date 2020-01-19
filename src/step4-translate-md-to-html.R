#  step4-translate-md-to-html.R
## written by Steve Simon
## created 2019-12-21

## Step 0. Preliminaries

source(file="src/prelims.R", echo=FALSE)

file_list <- list.files(path=blog_root, pattern="*.md")

for (i_file in file_list) {
  i_file %>% str_replace("md$", "html") -> j_file
  if (should_i_skip(blog_root %s% i_file, html_blog %s% j_file)) {
    next
  }
  readLines(blog_root %s% i_file) %>%
    str_subset(regex("^Date:", ignore_case=TRUE)) %>%
    str_c(collapse="\n") -> file_date
  if (verbose) {
    "\nConverting" %b% j_file %C% file_date %>% br %>% cat
  }
  render(blog_root %s% i_file, output_dir=html_blog)
}

