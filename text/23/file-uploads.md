---
title: Using R to automate file uploads
source: "New"
author: Steve Simon
date: 2023-10-03
categories:
- Blog post
tags:
- R software
output: html_document
page_update: complete
---

I am trying to automate some tasks that will streamline my workload. One of those tasks is uploading files to my website. I am just starting to explore how this can be done. Here is a brief summary of what I have found so far.

<!---more--->

There is an R library, [RCurl][rcu1], that uses [libcurl][lib1], a free program for doing a variety of web tasks.

What you can do with RCurl is so big that finding a place to jump in is difficult. There is a [nice overview page][ome1] at the [Omega Project website][ome0].

It looks like the [ftpUpload function][ftp1] is what I want, but I probably have to set up some other information first like the URL I want to upload to and password information.

[ftp1]: https://search.r-project.org/CRAN/refmans/RCurl/html/ftpUpload.html
[lib1]: https://curl.se/libcurl/
[ome0]: https://www.omegahat.net/
[ome1]: https://www.omegahat.net/RCurl/
[rcu1]: https://cran.r-project.org/web/packages/RCurl/index.html