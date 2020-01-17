# step0-move-png-files.R
# written by Steve Simon
# created 2020-01-17

# This program moves png files from one directory
# to another.

source(file="src/prelims.R")
if (!exists("verbose")) verbose <- TRUE
if (!exists("update_all")) update_all <- TRUE

root_dir <- "../update"
file_list <- build_file_list(root_dir, "*.png")
if (verbose) "Processing" %b% length(file_list) %b% "files.\n\n" %>% cat
if (any(duplicated(file_list))) "Warning: duplicate file names!!!" %>% br(2) %>% cat
for (i_file in file_list) {
  new_file <- "../images" %s% str_remove(i_file, "^.*/")
  if(verbose) i_file %C% new_file %>% br %>% cat
  # file.copy(i_file, new_file)
  # file.remove(i_file)
}

# Save everything.

save.image("data/step0x.RData")
