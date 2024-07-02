# stash-rmd.R
# author: Steve Simon
# date: Created 2024-06-30
# purpose: use knit to convert Rmd files to md

library(dplyr)
library(glue)
library(knitr)
library(magrittr)
library(stringr)

## Get file list

yrs <- c(paste0("0", 0:9), as.character(c(10:24, 99)))
all_files <- NULL

for (y in rev(yrs)) {
  f0 <- "text"
  fn <- list.files(glue("{f0}/{y}"))
  if (length(fn)==0) next
  data.frame(y, fn) %>%
    bind_rows(all_files) -> all_files
}
count(all_files, y)

## Split files by extension

all_files %>%
  mutate(ext=str_remove(fn, ".*\\.")) %>%
  mutate(fn=str_remove(fn, "\\..*")) -> all_files
count(all_files, ext)

## Define directories for copying

b0 <- "C:/Users"
b1 <- str_subset(list.files(b0), "steve|simons")
b2 <- "Dropbox/professional"
b3 <- "fun stuff/update-website/rmd"
b4 <- glue("{b0}/{b1}/{b2}/{b3}")

## Knit and copy Rmd files

all_files %>%
  filter(ext == "Rmd") %>%
  mutate(a=glue("{f0}/{y}/{fn}.Rmd")) %>%
  mutate(b=glue("{b4}/{fn}.md")) %>%
  select(a, b) -> Rmd
head(Rmd)
n <- nrow(Rmd)
for (i in 1:n) {
  knit(input=Rmd$a[i], output=Rmd$b[i])
}
