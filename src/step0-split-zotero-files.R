# step0-split-zotero-files.R
# written by Steve Simon
# created 2020-02-26

# This program takes files downloaded from
# Zotero and splits them into individual
# entries.

source(file="src/prelims.R")
if (!exists("verbose")) verbose <- TRUE

root_dir <- "text/zotero"

bib_files <- list.files(root_dir, pattern="\\.bib")

nam_all <- NULL
dat_all <- NULL
src_all <- NULL
lin_all <- NULL
for (i_file in bib_files) {
  tx <- readLines(root_dir %s% i_file)
  blank_lines <- str_which(tx, "^@")
  n <- length(blank_lines)
  blank_lines[n+1] <- length(tx)+1
  for (i in 1:n) {
    tx1 <- tx[blank_lines[i]:(blank_lines[i+1]-1)]
    tx1 %>%
      str_subset("\\stitle = ") %>%
      str_remove("\\stitle = ") %>%
      str_split(" ") %>% 
      unlist %>%
      tolower %>% 
      str_remove_all("[^a-z]") %>%
      str_subset(".....") %>%
      data_frame %>%
      slice(1:3) %>%
      unlist %>%
      str_c(collapse="-") -> nam
    tx1 %>%
      str_subset("\\surldate = ") %>%
      str_remove("\\surldate = ") %>%
      str_split(" ") %>% 
      unlist %>%
      str_remove_all("[^0-9\\-]") -> dat
    if (length(nam)==0) nam <- "no-name"
    if (length(dat)==0) dat <- "no-date"
    nam_all <- c(nam_all, nam[1])
    duplicate_count <- sum(nam_all==nam[1])
    new_name <- nam[1]
    if (duplicate_count > 1) new_name <- paste(new_name, duplicate_count, sep="-")
    yr <- str_sub(dat[1], 3, 4)
    if (dat[1]=="no-date") yr <- "no"
    fn <- "text/zotero" %s% yr %s% new_name %d% "bib"
    print(fn)
    writeLines(tx1, fn)
    dat_all <- c(dat_all, dat[1])
    src_all <- c(src_all, i_file)
    lin_all <- c(lin_all, blank_lines[i])
  }
}

