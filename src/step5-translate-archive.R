#  step5-translate-archive.R
## written by Steve Simon
## created 2019-01-18

## Step 0. Preliminaries

source(file="src/prelims.R", echo=FALSE)

file_list <- list.files(path=arch_root, pattern="*.md")

for (i_file in file_list) {
  i_file %>% str_replace("md$", "html") -> j_file
  if (check_dates(arch_root %s% i_file, html_arch %s% j_file)) next
  if (verbose) {
    "\nConverting" %b% j_file %>% br %>% cat
  }
  render(arch_root %s% i_file, output_dir=html_arch)
}

