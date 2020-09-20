---
title: Dumping data from R to a text file
author: Steve Simon
date: 2005-06-27
categories:
- Blog post
tags:
- Data management
output: html_document
---
> In the prenatal liver study, I needed to give some of the normalized
> gene expression levels to a researcher in a form he could use. The
> data he needed was in a data frame with 94 rows and 16 columns
> (folate.signal). But unfortunately, the names of the rows
> (gene.symbol) and columns (liver.names) were stored in separate
> objects. Here\'s one way to match the values back up.
>
> First, there are duplicates in the gene.symbol list, so to create new
> names, use the makeUnique function found in the limma library. Then
> change folate.signal from a data frame to a matrix. Use the dimnames
> function to add the row and column names to the matrix. Finally, use
> the write.table function to create a text file.
>
> > `gene.unique <- makeUnique(paste(gene.symbol," "))             folate.matrix <- as.matrix(folate.signal)             dimnames(folate.matrix) <- list(gene.unique,liver.names)             write.table(folate.matrix,"x:/sleeder/folate.txt")`

You can find an [earlier version](http://www.pmean.com/05/DumpingData.html) of this page on my [original website](http://www.pmean.com/original_site.html).
