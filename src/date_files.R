# copy_files.R. This program was written by Steve Simon on 2020-08-19.

suppressMessages(suppressWarnings(library(lubridate)))
suppressMessages(suppressWarnings(library(tidyverse)))

source(file="src/standard_functions.R")

v <- TRUE

get_dates <- function(text_path="text/") {
  subdir_list <- c(99, paste0("0", 0:9), 10:22)
  file_times <- NULL
  for (i in subdir_list) {
    sub_path <- paste0(text_path, i)
    file_names <- list.files(path=sub_path, pattern="md$")
    full_name <- paste0(sub_path, "/", file_names)
    file.info(full_name) %>% 
      data.frame %>%
      bind_rows(., file_times) -> file_times
  }
  file_times %>%
    data.frame %>%
    rownames_to_column("yr") %>%
    select(yr, mtime) %>%
    mutate(yr=str_sub(yr, 6, 7)) %>%
    mutate(mtime=str_sub(mtime, 1, 10)) %>%
    mutate(mtime=ymd(mtime)) %>%
    return
}
all_dates <- get_dates()
all_dates %>% count(mtime)
glimpse(all_dates)
all_dates %>% count(mtime)