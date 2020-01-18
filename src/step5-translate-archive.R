#  step5-translate-archive.R
## written by Steve Simon
## created 2019-01-18

## Step 0. Preliminaries

source(file="src/prelims.R", echo=FALSE)

wb_root <- "../web"

ar_root <- wb_root %s% "md/archive"
file_list <- list.files(path=ar_root, pattern="*.md")
html_root <- wb_root %s% "site/archive"

for (i_file in file_list) {
  i_file %>% str_replace("md$", "html") -> j_file
  if (check_dates(ar_root %s% i_file, html_root %s% j_file)) next
  if (verbose) {
    "\nConverting" %b% j_file %>% br %>% cat
  }
  render(ar_root %s% i_file, output_dir=html_root)
}

