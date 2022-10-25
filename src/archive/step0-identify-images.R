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

bib_list <- build_file_list("text", "*.bib")

bib_list %>% 
  str_remove("/01") %>%
  str_remove("/02") %>% 
  str_remove("/03") %>% 
  str_remove("/04") %>% 
  str_remove("/05") %>% 
  str_remove("/06") %>% 
  str_remove("/07") %>% 
  str_remove("/08") %>% 
  str_remove("/09") %>% 
  str_remove("/10") %>% 
  str_remove("/11") %>% 
  str_remove("/12") -> new_files

file.copy(bib_list, new_files)


bib_list %>% 
  str_subset("text/19") %>%
  str_remove(".*/") %>%
  str_remove(fixed(".bib")) -> bib_19

old_files <- "text../web/images"    %s% bib_19 %d% "png"
new_files <- "../web/images/19" %s% bib_19 %d% "png"
file.copy(old_files, new_files)


old_files <- "../web/images"    %s% bib_19 %d% "png"
new_files <- "../web/images/19" %s% bib_19 %d% "png"
file.copy(old_files, new_files)

bib_list %>% 
  str_subset("text/20") %>%
  str_remove(".*/")  %>%
  str_remove(fixed(".bib")) -> bib_20

old_files <- "../web/images"    %s% bib_20 %d% "png"
new_files <- "../web/images/20" %s% bib_20 %d% "png"

file.copy(old_files, new_files)



# Save everything.

save.image("data/step0.RData")
