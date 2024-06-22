---
title: BUGS is more than just one program
author: Steve Simon
date: 2010-11-19
categories:
- Blog post
tags:
- Bayesian statistics
- Being updated
output: html_document
page_update: partial
---

I am working on some Bayesian models that use a program called BUGS. BUGS stands for Bayesian Inference Using Gibbs Sampling. There are several ways you can run BUGS, and it is worthwhile to note why there are multiple programs.

<!---More--->

The granddaddy of all the BUGS programs is WinBUGS. It was developed by a team at MRC Biostatistics Unit, Cambridge. By the name, you can probably guess that WinBUGS is a Windows implementation of BUGS, though Linux users can run WinBUGS if they have a Windows emulation package called Wine installed on their computer. WinBUGS is free, but not open source. The current version of WinBUGS is 1.4.3, which was released in 2007. No further development is being done for WinBUGS, but the current version will be maintained for the foreseeable future. The main page for WinBUGS is
 * http://www.mrc-bsu.cam.ac.uk/bugs/winbugs/contents.shtml

GeoBUGS is a specialized add-on for BUGS that fits spatial models. It was developed by the Department of Epidemiology and Public Health of Imperial College at St Mary's Hospital London. The main page for GeoBUGS is
 * http://www.mrc-bsu.cam.ac.uk/bugs/winbugs/geobugs.shtml

PKBugs is another specialized add-on for BUGS. This one fits pharmacokinetic models. It was developed by Dave Lunn when at the Department of Epidemiology and Public Health of Imperial College at St Mary's Hospital London. The main page for PKBugs is
 * http://www.mrc-bsu.cam.ac.uk/bugs/winbugs/pkbugs.shtml

OpenBUGS is an open source and platform independent version of BUGS. It was developed by Andrew Thomas at the Rolf Nevanlinna Institute of the University of Helsinki. The current version is 3.1.2. Many sites link to the earlier webpage for OpenBUGS
 * http://mathstat.helsinki.fi/openbugs/
but the correct page should be
 * http://www.openbugs.info/w/

There are some problems with porting OpenBUGS, so a competing program, JAGS, was developed that is more easily compiled under a variety of operating systems. It was developed and is currently being maintained by Martyn Plummer. The current version is 2.1.0. The main page for JAGS is
 * http://www-fis.iarc.fr/~martyn/software/jags/

You can run BUGS programs within R using one of two packages: BRugs or R2WinBUGS. BRugs can run both WinBUGS and OpenBUGS. Unfortunately, it does not work with the 64-bit Windows version of R, so it has been removed from the Comprehensive R Archive Network. For details, see
 * http://cran.r-project.org/bin/windows/base/rw-FAQ.html#Should-I-run-32_002dbit-or-64_002dbit-R_003f

 R2WinBUGS says it can run OpenBUGS as well as WinBUGS, but the implementation requires you to install BRugs.

I'm currently running OpenBUGS and a 64-bit version of R, so it looks like I'm unable to run it within R for the time being. Sigh. I'll get it to work, probably by installing WinBUGS. There's a note on the WinBUGS site

If installing on a 64-bit machine, you should download a zipped version of the whole file structure and unzip it into Program Files or wherever you want it.

Sigh, again. Maybe I'll install a 32 bit version of R.

Wikipedia has a nice series of brief articles about these programs:
 * http://en.wikipedia.org/wiki/WinBUGS
 * http://en.wikipedia.org/wiki/OpenBUGS
 * http://en.wikipedia.org/wiki/Just_another_Gibbs_sampler

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/10/BugsVersions.html
[sim2]: http://www.pmean.com/original_site.html
