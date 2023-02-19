# This program looks for key links in the old webpages

# Preliminaries
suppressMessages(suppressWarnings(library(glue)))
suppressMessages(suppressWarnings(library(magrittr)))
suppressMessages(suppressWarnings(library(readr)))
suppressMessages(suppressWarnings(library(stringr)))

# pad single digits with leading zero
zpad <- function(x) {
  ifelse(nchar(x)==1, paste0("0", x), x)
}

sub_dir_list <- c("99", zpad(0:12), "12a", zpad(13:18))

path <- "c:/Users/Steve/Dropbox/professional/fun stuff/update-website"

key_text <- "<p>This page is moving to a <a href="
alt_text <- "<p>This page is being phased out."
n_files <- 0
n_unlinked <- 0
for (sub_dir in sub_dir_list) {
  # List all html files in a specific folder
  full_path <- glue("{path}/{sub_dir}/") 
  full_path %>%
    list.files %>%
    str_subset("html$") -> html_list
  i_files <- length(html_list)
  i_unlinked <- 0
  for (fn in html_list) {
    # Read text from html files
    file_text <- read_lines(glue("{full_path}/{fn}"))
    # Search for key phrase
    alt_line <- str_subset(file_text, alt_text)
    if (length(alt_line) > 0) {next}
    key_line <- str_subset(file_text, key_text)
    if (length(key_line) > 0) {next}
    # List files without key phrase
    i_unlinked <- i_unlinked + 1
    print(glue("{sub_dir}/{fn} has no link to new page"))
  }
  print(glue("{sub_dir} has {i_files} files. {i_unlinked} are unlinked."))
  n_files <- n_files + i_files
  n_unlinked <- n_unlinked + i_unlinked
}
print(glue("All directories have a total of  {n_files} files. {n_unlinked} are unlinked."))
      