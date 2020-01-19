#  update-all-files.R
## written by Steve Simon
## created 2020-01-02

rm(list=ls()); update_all <- TRUE; source(file="src/step1-translate-bib-to-md.R")
rm(list=ls()); update_all <- TRUE; source(file="src/step2-augment-md-files.R")
rm(list=ls()); update_all <- TRUE; source(file="src/step3-build-archive-files.R")
rm(list=ls()); update_all <- TRUE; source(file="src/step4-translate-md-to-html.R")
rm(list=ls()); update_all <- TRUE; source(file="src/step5-translate-archive.R")

rm(list=ls()); update_all <- FALSE; source(file="src/step1-translate-bib-to-md.R")
rm(list=ls()); update_all <- FALSE; source(file="src/step2-augment-md-files.R")
rm(list=ls()); update_all <- FALSE; source(file="src/step3-build-archive-files.R")
rm(list=ls()); update_all <- FALSE; source(file="src/step4-translate-md-to-html.R")
rm(list=ls()); update_all <- FALSE; source(file="src/step5-translate-archive.R")
