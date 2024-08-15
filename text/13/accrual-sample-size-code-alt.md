---
title: "R code for estimating the sample size of a clinical trial with a fixed duration"
source: http://www.pmean.com/13/secondary.html
author: Steve Simon
date: 2013-07-29
categories:
- Blog post
tags:
- Accrual problems
- Bayesian statistics
output: html_document
page_update: partial
---

Please note that I have not had a chance to test the code on this updated page.

Here is the R code for a simple Bayesian model for patient accrual. It estimates the sample size of a clinical trial for a fixed duration using information from a prior distribution and/or information from an interim review of accrual in the actual study. There is similar R code for [estimating the duration of a clinical trial with a fixed sample size](link to duration.html to be added later).

The model is described in detail in

Gajewski BJ, Simon SD, Carlson S. \"Predicting accrual in clinical trials with Bayesian posterior predictive distributions\" Statistics in Medicine (2008): 27(13); 2328-2340. DOI: 10.1002/sim.3128 

Abstract link is at http://www3.interscience.wiley.com/journal/116837947/abstract

This code was originally presented with a poster at the Joint Statistical meetings in 2007. Here is a [PDF version of the original poster](../00files/JSM2007.pdf) and here is a [web page summarizing that poster](../08/ExponentialAccrual.html).

The R code for producing the Bayesian predictive distribution for the sample size given a fixed duration is shown below. This simulation could easily be done in most other reasonable statistical software packages or even in a spreadsheet.

```
accrual.plot <- function(n,T,P,m,tm,B=1000,nmax=2*n,sample.paths=0) {
  # 
  # Code written by Steve Simon and licensed under the Creative Commons 
  # Attribution 3.0 United States License. You can copy, distribute,
  # transmit, and adapt this program as long as you attribute this work 
  # properly. Inclusion of this comment section is sufficient attribution.
  #
  # n is the target sample size
  # T is the target completion time
  # P is the prior certainty (0 <= P <= 1)
  # m is the sample observed to date
  # tm is the time to date
  # B is the number of simulated accrual times
  # nmax is the upper limit on the sample size axis of the graph
  #
  # set P to zero for a non-informative prior
  # set m and tm to zero if no data has been accumulated yet.

  k <- n*P+m
  V <- T*P+tm
  theta <- 1/rgamma(B,shape=k,rate=V)
  simulated.duration <- matrix(NA,nrow=nmax-m,ncol=B)
  for (i in 1:B) {
     wait <- rexp(nmax-m,1/theta[i])
     simulated.duration[,i] <- tm+cumsum(wait)
  }
  tlist <- seq(tm,T,length=100)

  accrual.count <- function(x,t) {m+sum(x<=t)}

  simulated.accrual <- matrix(NA,nrow=100,ncol=B)
  for (i in 1:100) {
    time <- tlist[i]
    simulated.accrual[i,] <- apply(simulated.duration,2,
      accrual.count,t=time)
  }
  lcl <- apply(simulated.accrual,1,quantile,probs=0.025)
  mid <- apply(simulated.accrual,1,quantile,probs=0.500)
  ucl <- apply(simulated.accrual,1,quantile,probs=0.975)
  layout(matrix(c(2,2,2,1),nrow=1))
  par(mar=c(4.1,0.1,0.1,0.1))

  accrual.hist <- cut(simulated.accrual[100,],
    seq(0,nmax,length=40))
  barplot(table(accrual.hist),horiz=TRUE,
    axes=FALSE,xlab=" ",ylab=" ",space=0,
    col="white",names.arg=rep("      ",39))
  par(mar=c(4.1,4.1,0.1,0.1))
  plot(c(0,T),c(0,nmax),xlab="Time",
    ylab="Number of patients",type="n")
  polygon(c(tlist,rev(tlist)),c(lcl,rev(ucl)),
    density=-1,col="gray",border=NA)
  lines(tlist,mid,col="white")
  segments(0,0,tm,m)
  while (sample.paths>0) {
    lines(tlist,simulated.accrual[,sample.paths])
    sample.paths <- sample.paths-1
  }
  pctiles <- matrix(NA,nrow=2,ncol=3)
  dimnames(pctiles) <- list(c("Waiting time",
    "Trial accrual"),c("2.5%","50%","97.5%"))
    pctiles[1,] <- 1/qgamma(c(0.975,0.5,0.025),shape=k,rate=V)
    pctiles[2,1] <- lcl[100]
    pctiles[2,2] <- mid[100]
    pctiles[2,3] <- ucl[100]
    list(pct=pctiles,sa=simulated.accrual) }
```

The function calls that produced the three figures shown above are

`d0 <- accrual.plot(n=350,T=3,P=0.5,m= 0,tm= 0,nmax=500)     d1 <- accrual.plot(n=350,T=3,P=0, m=41,tm=239/365,nmax=500)     d2 <- accrual.plot(n=350,T=3,P=0.5,m=41,tm=239/365,nmax=500)`

**Example**: To illustrate the proposed method, consider an unnamed current phase III clinical trial (randomized, double-blind, and placebo-controlled) used to examine the efficacy and safety of a dietary supplement. This study was planned and accrual started prior to our development of these methods, but still serves to illustrate how this approach would work. The current protocol requires n=350 subjects, with balanced randomization to either treatment or placebo control. In the previous study, investigators were able to recruit, from a similar population, 350 subjects across 3 years.

At the design phase of the study it was felt that the previous clinical trial offered strong prior information. Setting P=0.5 results in k=175 and V=1.5 years. This corresponds to a prior mean of V/(k-1)=0.0086 years (3.1 days). This means that the researcher expects to see a new patient every third day, on average.

With this prior distribution, the researcher can predict the trial sample size and account for uncertainty in the specification of the parameters and uncertainty due to the random nature of the exponential accrual model.

![](../04/images/Expone10.gif){width="396" height="351"}

The figure above shows the Bayesian predictive distribution based only on the prior distribution. The gray region represents the range between the 2.5 and 97.5 percentiles. The white line in the middle of this region represents the 50th percentile. The call to produce this plot is

`d0 <- accrual.plot(n=350,T=3,P=0.5,m= 0,tm= 0,nmax=500)`

The median estimated sample size is 349 and the 2.5 and 9.5 percentiles are 291 and 413.

![](../04/images/Expone11.gif){width="396" height="351"}

The figure above shows how the projected sample size changes after 239 days and 41 patients. The call to produce this plot is

`d1 <- accrual.plot(n=350,T=3,P=0, m=41,tm=239/365,nmax=500)`

The median is much lower now (274), and the 2.5 and 97.5 percentiles (233 and 321 respectively) are both well below the original expectation of recruiting 350 patients.

![](../04/images/Expone12.gif){width="396" height="351"}

A Bayesian predictive sample size ignoring the prior information is shown above. The call to produce this plot is

`d2 <- accrual.plot(n=350,T=3,P=0.5,m=41,tm=239/365,nmax=500)`

The median sample size is 188, which is a simple linear projection of the data. The 2.5 and 97.5 percentiles are 143 and 241, respectively.

**Future work**: We are looking at several improvements to the software.

+ Develop a graphical user interface in R.
+ Incorporate closed form solutions in place of the simulations.
+ Rewrite as a stand-alone application in R.

When these enhancements become available, I will link to them from this page.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/13/samplesize.html
[sim2]: http://www.pmean.com
