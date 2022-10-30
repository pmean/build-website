#  step4-translate-md-to-html.R
## written by Steve Simon
## created 2019-12-21

## Step 0. Preliminaries

source(file="src/prelims.R", echo=FALSE)

v <- FALSE
file_list <- list.files(path=blog_root, pattern="*.md")
file_list <- c(file_list, build_file_list(blog_root, "*.Rmd", v=FALSE))

skipped_files <- NULL
for (i_file in file_list) {
  i_file %>%
    str_remove("^.*/") %>%
    str_replace(fixed(".Rmd"), ".html") %>%
    str_replace(fixed(".md" ), ".html") -> j_file
  if (v) {
    file.info(blog_root %s% i_file)$mtime %C% i_file %>% br %>% cat
    file.info(html_blog %s% j_file)$mtime %C% i_file %>% br %>% cat
  }
  if (should_i_skip(blog_root %s% i_file, html_blog %s% j_file)) {
    skipped_files <- c(skipped_files, i_file)
  }
}
"\n\nSkipping" %b% length(skipped_files) %b% "files.\n\n" %>% cat
file_list <- setdiff(file_list, skipped_files)
"\n\nThere are" %b% length(file_list) %b% "files remaining to be worked on.\n\n" %>% cat

file_list <- sample(file_list)
n <- length(file_list)
k <- 0
for (i_file in file_list) {
  k <- k+1
  readLines(blog_root %s% i_file) %>%
    str_subset(regex("^Date:", ignore_case=TRUE)) %>%
    str_c(collapse="\n") -> file_date
  if (verbose) {
    "\nConverting" %b% k %b% "of" %b% n %C% i_file %C% file_date %>% br(2) %>% cat
  }
  render(blog_root %s% i_file, output_dir=html_blog)
}

