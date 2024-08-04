---
title: "Minimum standards for a github repository"
author: "Steve Simon"
source: "http://blog.pmean.com/github-standards/"
date: "2016-05-31"
categories: Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

Using a github repository is new to me, and I need to document some things that may be obvious to more experienced programmers. Here are, as far as I understand it, the minimal documentation standards for a github repository.

<!---More--->

The first thing you need is a name for your repository. All my repositories (so far) are public, so I want a reasonably descriptive name. The githum site playfully suggests names like "furry-parakeet" and I will stick by that convention. Most of my repositories (so far) are two or three simple words connected with dashes (understanding-lasso, sparse-matrices).

If you use github, they will tell you that every repository should have three files:

1.  .gitignore
2.  README.md
3.  LICENSE

I'm not thrilled about including the third file because it has no extension, but it's a mistake for a beginner like me to deviate from well established standards.

The .gitignore file tells git that there are certain types of files that might exist on your local computer but which are not needed or wanted in the repository. This is important, because you�don't want a repository that is excessively cluttered. Here are the files that I put in .gitignore.

- .Rproj.user. This is a subdirectory associated with RStudio. The files in it are set up by RStudio itself. Any outsider using RStudio will have these files, so they don't need (or want) your copy.

- .RHistory. This file is great for when you need to recapture something that you wrote a long time ago. But it is big and unwieldy and unnecessary if your code works.

- \*.RData. Files ending in this extension represent things in R that you decided to save for later use. You could include these files, but I prefer not to. I want my R code or my R markdown code to create these files automatically as part of running the program. If there is something that you cannot easily create in your program, such as a model data set, try to download that file as part of your R code, or give instructions on how others can download it in the README.md file. If all else fails, you would be better off to store your data set in a format that is human readable (like json or csv). No one likes [buying a pig in a poke](https://en.wikipedia.org/wiki/Pig_in_a_poke).

- \*.RProj. Your visitors will get files with this extension when they use RStudio on their own system, so there is no need for you to include your copy.

Many people who peruse your github repository will look for and expect to see a README.md file. What should go in this file? It depends, but the general recommendation is to give genereal instructions on what your visitors need to have in order to use the code in your repository. Here's a draft [boilerplate](https://en.wikipedia.org/wiki/Boilerplate_(text)) of what I have written, though I expect I will change this to the special needs and requirements of an individual repository.

This is a single file stand-alone application using R Markdown.

It was run and tested using RStudio and the knitr package.

Use the file with the .Rmd extension as input, or examine the file with the .html extension to see what the output is like.

This application does not need any special files beyond the ones listed above.

You need to decide what license you want for your repository. If you are making your code publicly available, you are already committed to a high level of sharing, so you should consider a fairly liberal license. I decided on the Creative Commons Public Domain license. It's a bit more liberal than what I have for the rest of my blog and web site, but I'm fine with that.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/github-standards/
[sim2]: http://blog.pmean.com
