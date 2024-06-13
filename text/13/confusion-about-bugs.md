---
title: Confusion about BUGS
source: http://www.pmean.com/13/confusion.html
author: Steve Simon
date: 2013-09-03
categories:
- Blog post
tags:
- Broken link
- Bayesian statistics
- R software
output: html_document
page_update: complete
---

Note 2024-05-28: This page notes some of the problems with obsolescence of software, but some of the links that document the obsolescence are themselves obsolete. You may still find some of the historical perspective from this page to be helpful.

<!---More--->

I dabble in various Bayesian statistical models, but the problem is that I get interested and start something, but then I get distracted and months or even years pass by before I look at this again. That makes it hard for me to make progress. One reason is that I have to relearn everything. That's not the biggest problem, though. I find when I return to the problem, that the world has changed around me. That appears to be true for a recent effort to run BUGS code that I had originally written in April 2012.

I should note up front that it is a bit unfair to complain about this. All of the programs I mention below are open source and are developed through the largely uncompensated contributions of very smart people. There is a shortage of labor for these efforts, and it takes a rare combination of statistical and programming skills that I, quite frankly, lack.

I had developed [some code in BUGS to fit a simple exponential accrual model][sim3] and I wanted to re-run the code and then try some simple extensions. I can run BUGS as a stand-alone program, but I prefer to run BUGS within R. I normally use the BRugs package for this.

Problem #1 is that my version of R changed. I was running 2.12.1, I think, and now I'm running 3.2.1. Now when you upgrade R, you do not automatically include all of the user contributed packages that were installed under the old version. You can set up R to automate this, but I find that it is better to start with a fresh slate and then re-install only those user contributed packages that I find I am still using on a "just-in-time" basis.. It's an easy way to sweep out all the deadwood.

So I have to re-install BRugs. It looks fine, but when I try to run the command

`library("BRugs")`

I get the following cryptic error message.

`Error : .onLoad failed in loadNamespace() for 'BRugs'`

Well, I sort of remember some problems between BUGS and R. There are several versions of BUGS, and the WinBUGS version, since it runs only under Windows, creates issues for user contributed packages. There's another version OpenBUGS, that does not have this problem, but it has some difficulty with the 64 bit version of Windows or maybe the 64 bit version of R. Don't hold me to this, this is how I remember things and I may have some of the details wrong.

Time to visit Google. You may wish to note that BRugs will pick up a lot of links for the dog breed, Brug, a cross between the Brussles Griffon and the Pug. So it helps to search for an extra term as well, like "Bayesian".

There's not that much out there about running BUGS within R. There's a page by Brad Carlin(broken link) that warns you that you need version 2.11 of R, not the latest version. It's not hard to run several different versions of R, but I have a strong dislike already for this. There's also a [page by Andrew Gelman][gel1], but it was last updated on 2008-01-27 (note: on 2024-05-27, the link now suggests the use of Stan instead of BUGS). The [CRAN Task View page on Bayesian inference][cra1] has a nice section titled "Packages that link R to other sampling engines" but it just lists all the options without any information about which option works best. The Vanderbilt Biostatistics wiki has a page titled "Bayesian Data Analysis With OpenBUGS, BRugs, and JAGS"(broken link) but this page also just seems to list all the available resources without any guidance. The [March 2006 issue of R News][rne1] does have some guidance (jump to the Making BUGS Open article on page 12, but again, this advice is very dated.

There is a [nice philosophical piece about the strengths and weaknesses of BUGS][gel2] written by Andrew Gelman, but it doesn't address any implementation issues.

I was particularly worried about using an obsolete version of OpenBUGS. The main page of the OpenBUGS site repeatedly refused to open for me,

`Unable to start another process`

but that might be a problem with the Internet connection on my end. I'm struggling with Amazon Web Services today as well.

Anyway, when you get to the new OpenBUGS site(broken link) and remember that you don't want to visit the old site(broken link), you'll see that the latest version (as of 2013-09-03, of course) is version 3.2.2. I'm currently running version 3.2.1, which was created on 2011-03-18. That didn't seem too old back in April 2012, but it seems positively ancient today. Even worse is WinBUGS, which has not been updated since 2008, it seems.

So here's where I start to worry. I have several versions of OpenBUGS to work with and several versions of R to work with, and there is at least one hint that certain versions don't work well together. Add to that the confusion about whether I should be running the 32-bit or 64-bit version of R, whether I should use the user contributed package BRugs or R2OpenBUGS, and it makes me very hesitant.

Even more pages made we wary of BUGS in general. The BRugs package was moved from CRAN to CRANextras. I didn't know what "CRANextras" was, so I had to research it. CRANextras represent things that don't qulify for CRAN but which are still nice to have around. In particular, it looks like contributed packages that work only under Windows would fit here. Question 5.1.2 from the R FAQ has a nice explanation (note 2024-05-28: this points to a different question; for some details on CRANextras, see this [Yihui Xie blog post][xie1]).

Some CRAN packages that do not build out of the box on Windows, require additional software, or are shipping third party libraries for Windows cannot be made available on CRAN in form of a Windows binary packages. Nevertheless, some of these packages are available at the [CRAN extras repository][rip1] kindly provided by Brian D. Ripley. Note that this repository is a default repository for recent versions of R for Windows.

So I'm really sour now on running any sort of BUGS program. I may end up trying JAGS, which uses syntax identical to OpenBUGS and WinBUGS. [One comment on the StackExchange list CrossValidated][sta1] is worth noting here.

>"BUGS/OpenBugs has a peculiar build system which made compiling the code difficult to impossible on some systems --- such as Linux (and IIRC OS X) where people had to resort to Windows emulation etc. Jags, on the other hand, is a completely new project written with standard GNU tools and hence portable to just about anywhere --- and therefore usable anywhere."

I'm a windows guy, through and through, but I do have a mistrust for software that runs only under Windows.

There's also a new program out called STAN(broken link) that may be worth investigating (note 2024-05-28: here is the [correct link for Stan][sta1]). I'll talk more about these options when I have a chance to investigate further.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/13/confusion.html
[sim2]: http://www.pmean.com/original_site.html
[sim3]: http://www.pmean.com/12/homogenous.html

[cra1]: https://cran.r-project.org/web/views/Bayesian.html
[gel1]: http://www.stat.columbia.edu/~gelman/bugsR/
[gel2]: http://www.stat.columbia.edu/~gelman/research/published/bugsnext2.pdf
[rip1]: https://www.stats.ox.ac.uk/pub/RWin/
[rne1]: https://www.r-project.org/doc/Rnews/Rnews_2006-1.pdf
[sta1]: https://mc-stan.org/
[xie1]: https://yihui.org/en/2018/07/cranextra-macos/
