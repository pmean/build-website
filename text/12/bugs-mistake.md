---
title: (Being updated)
author: Steve Simon
source: http://www.pmean.com/12/amateur.html
date: 2012-05-22
categories:
- Blog post
tags:
- Being updated
output: html_document
page_update: complete
---

I am just learning how to run BUGS software. I've used WinBUGS, which is a stand-alone program for Windows, and OpenBUGS, which is an Open Source version that runs on Windows and Linux (as well as on the Macintosh with the Windows emulation package WINE). My preference, though, is to run BUGS within R using the BRugs package. I wanted to look at a simple extension of the accrual model, and I made a rather amateurish mistake that I want to document here. BUGS is not a program for the faint-hearted, and, as this lesson reinforces, you need to understand the mathematical foundations of these models if you want to use BUGS successfully.

<!---More--->

Here's the classic accrual model in BUGS

```
ac.model <- function() {
  k <- n*P
  V <- T*P
  lambda ~ dgamma(k,V)
  theta <- 1 / lambda
  for (i in 1:tm) {
    wait[i] ~ dexp(lambda)
  }
  n.rem <- n-m
  t.pred ~ dgamma(n.rem,lambda)
}
writeModel(ac.model,"SimpleAccrualModel.txt")

ac.data <- list(n=350,T=1095,P=0.5,m=41,
wait=c(0,2,26,29,1,2,11,8,0,5,10,1,4,9,12,3,
6,7,8,12,1,8,5,7,0,2,8,3,2,1,1,0,4,8,1,8,12,
0,6,1,5,9,0,0,7,1,12,1,7,1,4,7,3,8,6,8,3,0,8,
8,8,7,1,4,1,1,5,3,6,0,5,13,2,7,0,0,14,2,5,0,
5,8,0,0,1,1,13,0,2,0,4,0,1,5,0,0,2,1,1,4,2,8,
4,2,4,2,2,3,5,3,0,5,3,0,4,16,4,2,5,0,1,0,2,4,
2,0,1,4,1,8,12,1,1,2,3,0,0,4,3,2,9,4,0,1,5,0,
11,4,6,0,1,7,10,3,3,8,0,0,24,0,8,8,0,1,11,8,
0,1,15,19,0,1,1,4,2,5,9,1,0,5,16,1,3,1,8,0,1,
6,6,1,2,11,3,5,12,7,2,1,5,2,11,1,1,6,10,3,1,
2,1,0,10,8,0,3,5,1,4,1,8,1,4,1,3,3,2,0,1,0,1,
4,1,1,0,5,2,0,5,0,8,13,6,7,1,1,5,0,2,6,7,0,2,
0,5,2,0,4,1,13,8,3,3,4,0,4,0,0,23,1,4,0,2,0,
5,2,4,3,5,7,0,2,4,0,0,3,6,5,4,3,2,1,0,1,4,2,
0,0,1,5,1,0,0,4,4,5,6,6,7,2,6,0,1,1,5,7,2,4,
3,1,3,2,2,10,3,11,0,1,3,3,4,13,1,7,0,4,0,3,0,
4,2,1,3))
bugsData(ac.data,"SimpleAccrualData.txt")

ac.init <- list(list(lambda=1/3,t.pred=1000))
bugsInits(ac.init,numChains=1,"SimpleAccrualInits.txt")

modelCheck("SimpleAccrualModel.txt")
modelData("SimpleAccrualData.txt")
modelCompile()
modelInits("SimpleAccrualInits.txt")
modelUpdate(1000)
samplesSet(c("theta","t.pred"))
modelUpdate(1000)
samplesStats("*")

p <- c(0.025,0.5,0.975)
c1 <- 350-41
c2 <- 350*0.5+41
c3 <- 1095*0.5+239
1/qgamma(rev(p),c2,c3)
bpct <- qbeta(p,c1,c2)
c3*bpct/(1-bpct)
c3*c1/c2*qf(p,2*c1,2*c2)
```

Let's take apart this code section by section.

```
ac.model <- function() {
```

The BRugs program allows you to write the model statement within R. You set up a dummy function with no arguments.

```
  k <- n*P
  V <- T*P
  lambda ~ dgamma(k,V)
```

The first three lines define a gamma distribution as the prior distribution on the accrual rate.

```
  theta <- 1 / lambda
```

Just in case you are interested in monitoring the average waiting time between patients instead of monitoring the average accrual rate, you can define that parameter as well. The average waiting time and the average accrual rate are inversely related and represent two equally valid ways of parameterizing the exponential distribution.

```
  for (i in 1:tm) {
    wait[i] ~ dexp(lambda)
  }
```

There's a shortcut for the BUGS code, which involves the simple relationship that the sum of a m exponential waiting times (all with the same rate parameter) is distributed as a Gamma distribution with shape parameter k. But here you should define the distribution for each individual waiting time because it allows you to then consider some alternatives to the exponential waiting time distribution. So I specify the same exponential waiting time for each of the observed waiting times between successive patients.

```
  n.rem <- n-m
  t.pred ~ dgamma(n.rem,lambda)
}
```

Finally, get a prediction for the sum of the remaining n-m waiting times.

```
writeModel(ac.model,"SimpleAccrualModel.txt")

ac.data <- list(n=350,T=1095,P=0.5,m=41,
wait=c(0,2,26,29,1,2,11,8,0,5,10,1,4,9,12,3,
6,7,8,12,1,8,5,7,0,2,8,3,2,1,1,0,4,8,1,8,12,
0,6,1,5,9,0,0,7,1,12,1,7,1,4,7,3,8,6,8,3,0,8,
8,8,7,1,4,1,1,5,3,6,0,5,13,2,7,0,0,14,2,5,0,
5,8,0,0,1,1,13,0,2,0,4,0,1,5,0,0,2,1,1,4,2,8,
4,2,4,2,2,3,5,3,0,5,3,0,4,16,4,2,5,0,1,0,2,4,
2,0,1,4,1,8,12,1,1,2,3,0,0,4,3,2,9,4,0,1,5,0,
11,4,6,0,1,7,10,3,3,8,0,0,24,0,8,8,0,1,11,8,
0,1,15,19,0,1,1,4,2,5,9,1,0,5,16,1,3,1,8,0,1,
6,6,1,2,11,3,5,12,7,2,1,5,2,11,1,1,6,10,3,1,
2,1,0,10,8,0,3,5,1,4,1,8,1,4,1,3,3,2,0,1,0,1,
4,1,1,0,5,2,0,5,0,8,13,6,7,1,1,5,0,2,6,7,0,2,
0,5,2,0,4,1,13,8,3,3,4,0,4,0,0,23,1,4,0,2,0,
5,2,4,3,5,7,0,2,4,0,0,3,6,5,4,3,2,1,0,1,4,2,
0,0,1,5,1,0,0,4,4,5,6,6,7,2,6,0,1,1,5,7,2,4,
3,1,3,2,2,10,3,11,0,1,3,3,4,13,1,7,0,4,0,3,0,
4,2,1,3))
bugsData(ac.data,"SimpleAccrualData.txt")

ac.init <- list(list(lambda=1/3,t.pred=1000))
bugsInits(ac.init,numChains=1,"SimpleAccrualInits.txt")
```

Place the model, the data, and the initial starting values in special files.

```
modelCheck("SimpleAccrualModel.txt")
modelData("SimpleAccrualData.txt")
modelCompile()
modelInits("SimpleAccrualInits.txt")
modelUpdate(1000)
samplesSet(c("theta","t.pred"))
modelUpdate(1000)
samplesStats("*")
```

Run the various BUGS steps to check the model, link the data, etc.

```
p <- c(0.025,0.5,0.975)
c1 <- 350-41
c2 <- 350*0.5+41
c3 <- 1095*0.5+239
1/qgamma(rev(p),c2,c3)
bpct <- qbeta(p,c1,c2)
c3*bpct/(1-bpct)
c3*c1/c2*qf(p,2*c1,2*c2)
```

There is a closed form solution for the simple exponential waiting time case, and here are two ways to get those closed form solutions.

This program works just fine. But let's change things so very slightly. Let's assume a gamma distribution for waiting times rather than an exponential distribution for waiting times. If the shape parameter of the gamma distribution is greater than one, that implies that patients come like clockwork on a more regular basis than you'd expect from an exponential waiting time model. If the shape parameter is less than one, you'd see patients on a very erratic basis (feast or famine) that is much more variable than you'd expect from an exponential model.

```
ac.model <- function() {
  k <- n*P
  V <- T*P
  mean.rate ~ dgamma(k,V)
  alpha ~ dgamma(100,0.01)
  lambda <- alpha*mean.rate
  for (i in 1:m) {
    wait[i] ~ dgamma(alpha,lambda)
  }
  pp.alpha <- alpha*(n-m)
  t.pred ~ dgamma(pp.alpha,lambda)
}
```

Here's the code for the new model. You have to place a prior distribution on the mean accrual rate, which is not the same for different shape parameters. You also need to place a prior distribution on the shape parameter. The shape parameter for the post predictive distribution is no longer n-m but rather alpha*(n-m). Otherwise things look almost identical to the earlier program.

It seems simple enough. But when you run this program (or many different variations of this program), it crashes. I thought it was a problem with BUGS, so I downloaded a competing program, JAGS, and a package to run JAGS from within R (rjags). That program ran the exponential accrual model just fine. Like BUGS, though, it failed to run for the gamma accrual model. But at least it gave an error message rather than crashing.

```
Error in jags.model("NewGammaAccrualModel.txt", data = ac.data, inits = ilist, : Error in node wait[1] Observed node inconsistent with unobserved parents at initialization
```

If you look at the first waiting value, it is zero because two patients were recruited on the first day of the study. Strictly speaking, you can't use a gamma distribution (or an exponential distribution for that matter) for waiting times when the waiting times are discrete. But hey, it seems like a reasonable enough approximation. It works just fine for the exponential distribution. But if you look carefully at the density function of the gamma distribution,

### Gamma distribution

you will see that it is undefined at x=0 when the shape parameter (alpha) is less than one. It produces a negative exponent for x and you get in trouble with your computer when you try to raise zero to a negative power. You need the density function evaluated at each waiting time to compute the likelihood function.

Now, how could you confirm that it is the zero waiting times that cause problems with the gamma waiting time model? Simply add a small constant like 0.001 to every data value, and you'll get the program to work.

I can try to blame BUGS for crashing rather than giving a coherent error message, but that is shifting the blame away from myself. You can't run a program like BUGS without thinking long and hard about the mathematical details of your problem. I should have thought through the problem more carefully before throwing data into BUGS.

### Health Warning from the BUGS website

And you can't say I wasn't warned! This is a screen shot from the main page of the BUGS website.

I'm not thrilled about adding arbitrary constants to my data sets, so I'm going to look at some alternative formulations for this problem. I've got several ideas that I'd like to try. You could insist that the researcher collect the time down to the exact second that someone is recruited to a trial, but this is impractical.

As I develop alternatives to the problem with zero waiting times, I will post those details on my website.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/12/amateur.html
[sim2]: http://www.pmean.com/original_site.html
