---
title: Dumping data from R to a text file
author: Steve Simon
source: http://www.pmean.com/05/DumpingData.html
date: 2005-06-27
category: Blog post
tags: Data management
output: html_document
---
**[StATS]:** **Dumping data from R to a text file
(June 27, 2005)**. [Category: Data
management](../category/DataManagement.html)

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

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
<!---More--->
for pages similar to this one at
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Dumping data from R to a text file
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

