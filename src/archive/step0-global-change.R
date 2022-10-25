# step0-global-change.R
# written by Steve Simon
# created 2020-02-05

# This program finds files and
# makes changes from one string
# to another.

source(file="src/prelims.R")
if (!exists("v")) v <- TRUE

file_list <- build_yr_list("text", "*.md", v=FALSE)

if (v) "\nProcessing" %b% length(file_list) %b% "files.\n\n" %>% cat

process_changes <- function(i_file, s0, s1, dry_run=TRUE) {
  tx <- readLines(i_file)
  tx %>% 
    str_c(collapse="\n") %>%
    str_replace_all(s0, s1) %>%
    str_split("\n") %>%
    unlist -> new_tx
  n_changed <- which(tx != new_tx)
  if (length(n_changed)==0) return(tx)
  i_file    %>% br    %>% cat
  for (i in n_changed) {
    tx[i]     %>% br    %>% cat
    new_tx[i] %>% br(2) %>% cat
  }
  if (!dry_run) writeLines(new_tx, i_file)
  return(new_tx)  
}

for (i_file in file_list) {
  d <- FALSE
  new_tx <- process_changes(i_file, fixed('\n> '), "\n", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('[\\['), "[", dry_run=d) 
  new_tx <- process_changes(i_file, fixed(']\\]'), "]", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\['), "[", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\]'), "]", dry_run=d)
  new_tx <- process_changes(i_file, fixed('\\*'), "*", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\"'), '"', dry_run=d) 
  new_tx <- process_changes(i_file, fixed("\\'"), "'", dry_run=d) 
  new_tx <- process_changes(i_file, fixed(' '), ' ', dry_run=d) 
  new_tx <- process_changes(i_file, fixed('Â'), ' ', dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\$'), "$", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\@'), "@", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\\n'), "\n", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\^'), "^", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\.'), ".", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\<'), "<", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\>'), ">", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\|'), "|", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\-'), "-", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\_'), "_", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\~'), "~", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\#'), "#", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\  '), "  ", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\('), "(", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('\\)'), ")", dry_run=d) 
  new_tx <- process_changes(i_file, fixed(':\\'), ":/", dry_run=d) 
  new_tx <- process_changes(i_file, fixed('/\\'), "/", dry_run=d) 
  d <- TRUE
  new_tx <- process_changes(i_file, fixed('\\'), "", dry_run=d) 
}
