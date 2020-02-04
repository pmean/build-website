# step0-identify-images.R
# written by Steve Simon
# created 2020-02-02

# This program identifies the images in
# each markdown file.

if (!exists("v")) v <- TRUE

source(file="src/prelims.R")
for (i_yr in c("99", zpad(0:20))) {
  for (i_mo in zpad(1:12)) {
    file_list <- list.files(path="text" %s% i_yr %s% i_mo)
    new_path <- "text" %s% i_yr
    for (i_file in file_list) {
      i_path <- "text" %s% i_yr %s% i_mo
      if (v) "\n" %0% i_path %s% i_file %0% ": " %>% cat
      image_list <- pull_images(i_path %s% i_file, v=FALSE)
      n_images <- length(image_list)
      if (n_images==0) next
      move_images(i_yr, i_mo, i_file, image_list)
    }
  }
}

# Save everything.

save.image("data/step0.RData")
