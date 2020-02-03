# step0-sort-md-files.R
# written by Steve Simon
# created 2020-01-17

# This program finds all the markdown files
# (extension .bib) in a directory structure
# and sorts them into a new directory by month.

source(file="src/prelims.R")
if (!exists("verbose")) verbose <- TRUE
if (!exists("update_all")) update_all <- TRUE

root_dir <- "../source/b3"
file_list <- list.files(root_dir, "*.md")
if (verbose) "Processing" %b% length(file_list) %b% "files.\n\n" %>% cat
field_header <- "blogdate"
for (i_file in file_list) {
  tx <- readLines(root_dir %s% i_file)
  j_file <- str_remove(i_file, fixed(".md"))
  fields <- parse_yaml(tx, i_file)
  tx %>% str_which("data:image") -> image_line
  if (length(image_line)==0) next
  yr <- str_sub(fields$blogdate, 3, 4)
  mo <- str_sub(fields$blogdate, 6, 7)
  n_lines <- length(image_line)
  if(verbose) "\n" %0% i_file %>% cat
  for (i_line in 1:n_lines) {
    i <- image_line[i_line]
    tx[i] %>%
      str_extract("/.*;") %>%
      str_remove("^/") %>%
      str_remove(";$") -> image_format
    n_bytes <- nchar(tx[i])
    png_file <- "../../../images" %s% j_file %0% zpad(i_line) %d% image_format 
    if (verbose) "," %b% png_file %>% cat
    tx[i] %>%
      str_remove("^.*;base64,") %>%
      str_remove("\\)$") %>%
      base64decode %>%
      write_file(png_file)
    "![]" %0% paren(png_file) %>% br(2) -> tx[i] 
  }
  new_file <- "../update" %s% yr %s% mo %s% i_file

  tx %<>% str_replace(fixed("Category: Recommended", ignore_case=TRUE), "category: Recommendation")
  
  if(verbose) "\n" %0% root_dir %s% i_file %C% new_file %>% br %>% cat
  writeLines(tx, new_file)
  # if (file.exists(new_file)) file.remove(root_dir %s% i_file)
}

