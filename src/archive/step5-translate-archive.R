#  step5-translate-archive.R
## written by Steve Simon
## created 2019-01-18

## Step 0. Preliminaries

source(file="src/prelims.R", echo=FALSE)

file_list <- list.files(path=arch_root, pattern="*.md")
v <- FALSE
update_all <- FALSE
file_list <- c(file_list, build_file_list(blog_root, "*.Rmd", v=FALSE))

skipped_files <- NULL
for (i_file in file_list) {
  i_file %>%
    str_remove("^.*/") %>%
    str_replace("md$|Rmd$", "html") -> j_file
  if (v) {
    file.info(arch_root %s% i_file)$mtime %C% i_file %>% br %>% cat
    file.info(html_arch %s% j_file)$mtime %C% i_file %>% br %>% cat
  }
  if (should_i_skip(arch_root %s% i_file, html_arch %s% j_file)) {
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
  if (verbose) {
    "\nConverting" %b% k %b% "of" %b% n %b% "files" %C% i_file %>% br %>% cat
  }
  render(arch_root %s% i_file, output_dir=html_arch)
}

