---
title: "Which R package should I use?"
author: "Steve Simon"
source: "http://blog.pmean.com/which-r-package/"
date: "2016-05-10"
categories: Blog post
tags:
- R software
output: html_document
page_update: complete
---

Working with R is great in that if anything has been done in Statistics, there is an R package that will do it. The problem is that sometimes there are four packages that will do it. So when this happens what do you do? I want to outline what I did recently when I needed to find a package to calculate Cronbach's alpha.

<!---More--->

I found at least four packages that will calculate Cronbach's alpha:

+ [coefficientalpha][p1])
+ [CTT][p2]
+ [psy][p3]
+ [psych][p4]

[p1]: http://cran.r-project.org/web/packages/coefficientalpha
[p2]: http://cran.r-project.org/web/packages/CTT
[p3]: https://cran.r-project.org/web/packages/psy/
[p4]: https://cran.r-project.org/web/packages/psych/

There are probably others--I didn't feel the need to make an exhaustive search. My first step was to look at the PDF files of each package. Did I recognize any of the names? Well, no, but that is often a crucial factor. If a package is written by someone with a solid reputation in the research community, that's a pretty good sign. I also looked at where the authors were located. One package's author had a gmail address (not a good sign), but the others were at well known organizations.

The author of the psych package references a [personality project website][p5] that he had developed and a book that he had written. Again these were good signs.

[p5]: http://personality-project.org/index.html

Then I looked at the R functions in each package that might calculate Cronbach's alpha. They all looked pretty easy to use. I was a bit concerned because some of the functions could compute a competing statistic like omega hierarchical. It's a thing to note (some people think that there are better choices out there than alpha) but I also didn't want to fuss with a bunch of different options today.

I did look to see what other things that each package did. If I'm going to invest the time learning a new package, it would be nice if that package did other things that I might need at a later date. The psych package seemed to hold out a bit of promise here.

One thing that I noticed was that a couple of the packages had artificial data sets included in the package. One had only artificial data sets, another had a real data set along with the artificial data set. There is some value, at times, to look at artificial data, but if a package owner did not take the time to use real data sets in the final package, that's a sign to me that they did not invest as much time in the package as others did.

Then I remembered the [crantastic web site][p6]. This is a site created by Hadley Wickham and Bjorn Meland that offers user submitted reviews of the various packages along with links to the package and a revision history. Many packages in crantastic do not have any reviews yet, and that by itself is revealing. If no one has reviewed the package, that's an indication that the package is not used a lot by others. That could still be okay, but it is a warning sign. I should note that almost everytime I go to crantastic, I find that the package I'm interested in has not been reviewed by anyone yet. Maybe I need to start writing some reviews.

[p6]: http://crantastic.org/

The psych package had two reviews, but there were none for the other three packages. That by itself is a sign that I might want to consider psych. The other thing I noticed right away was the version history. One package had not been updated in the past six years. I do factor something like that in, but for a statistic like Cronbach's alpha, which has been around since 1951, that's not a fatal flaw. Another package had the latest release version 0.3.3. Often (but not always) a leading zero in release numbers is an indication that the package is not ready for prime time.

What was impressive about the psych package, though, is that there were 44 previous versions. This is not a package that was written and then forgotten about.

So there were a bunch of small things, each one not significant by itself, but in combination, they encouraged me to investigate the psych package first. Now I hesitate to criticize the other packages on something as trivial as the version number or the use of a gmail address. All of these are subjective nitpicks, and if I had ended up using one of the other packages (and I still might), I would probably end up satisfied with the results. In fact, if there are several packages, there's nothing wrong with trying two or three of them and making sure that you get the same result.

Still, you have to use some criteria for picking a package, so I thought I'd share the criteria that I used here.

Addendum (2018-03-27): If you don't know ANY package that will do what you want, you might want to consult the [CRAN Task Views page][p7] which lists packages in broad categories like Finance, Genetics, or Time Series. These lists are VERY detailed, and it is unlikely to leave out any package that even remotely fits into the category.

[p7]: https://cran.r-project.org/web/views/

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/which-r-package/
[sim2]: http://blog.pmean.com
