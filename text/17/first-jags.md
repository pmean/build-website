---
title: "How to run your first Bayesian analysis using jags software in R"
author: "Steve Simon"
source: "http://blog.pmean.com/first-jags/"
date: "2017-01-28"
categories: Blog post
tags:
- Bayesian statistics
- Incomplete page
output: html_document
page_update: complete
---

Someone wanted to know how to run a Bayesian data analysis for a two group longitudinal study. There are several ways you can do this, but I had to confess I did not have an immediate answer. So I took some time to figure out how to do this using jags software inside of R. I’ve done a fair amount of stuff in jags, but not anything close to a longitudinal design. The general principle is to start with something easy and work your way slowly up to the final analysis.

You can find the code and some supporting text files on [my github site][sim3].  

I usually start with a very simple Bayesian analysis because if something is awry, I’ll notice it faster with a simple example. The code below implements a simple beta-binomial model.

Make sure that you have [jags installed][jags1] on your computer as well as the [rjags package][jags2].

### Beta-binomial example

Assume you have a beta prior distribution with alpha=4 and beta=16. You collect 60 observations and observe 18 successes and 42 failures.

You don’t really need jags for this. The posterior distribution is beta with alpha=4+18=22 and beta=16+42=58. The posterior mean is 0.275 and the posterior standard deviation is 0.05.

```
library("rjags")
## Loading required package: coda
## Linked to JAGS 4.2.0
## Loaded modules: basemod,bugs
fnm <- "jags_beta_binomial.txt"
mon <- c("pi")

out <- list(description="jags output")

dat <- list(a=4, b=16, x=18, n=60)
mod <- jags.model(fnm, data=dat, quiet=TRUE)
out$bb1 <- 
  coda.samples(mod, variable.names=mon, n.iter=1000, by=1000, progress.bar=NULL)
summary(out$bb1)
```

```
## 
## Iterations = 1:1000
## Thinning interval = 1 
## Number of chains = 1 
## Sample size per chain = 1000 
## 
## 1. Empirical mean and standard deviation for each variable,
##    plus standard error of the mean:
## 
##           Mean             SD       Naive SE Time-series SE 
##       0.273157       0.049814       0.001575       0.001575 
## 
## 2. Quantiles for each variable:
## 
##   2.5%    25%    50%    75%  97.5% 
## 0.1811 0.2367 0.2718 0.3086 0.3698
```

### Example from BUGS manual

Now, try to run one of the examples in the BUGS manuals that is reasonably close to your problem. For our problem, the [very first example in volume 1][bugs1] works well.

I had to fix two things to get this example to run properly in jags. First, I had to remove some lines of code that used functions like post.p.value. Second, I have to transpose the matrix of data. But with these changes it ran just fine.

```
dat <- list(x = c(8.0, 15.0, 22.0, 29.0, 36.0), xbar = 22, N = 30, T = 5,   
      Y = structure(
         .Data = c(151, 199, 246, 283, 320,
                     145, 199, 249, 293, 354,
                     147, 214, 263, 312, 328,
                     155, 200, 237, 272, 297,
                     135, 188, 230, 280, 323,
                     159, 210, 252, 298, 331,
                     141, 189, 231, 275, 305,
                     159, 201, 248, 297, 338,
                     177, 236, 285, 350, 376,
                     134, 182, 220, 260, 296,
                     160, 208, 261, 313, 352,
                     143, 188, 220, 273, 314,
                     154, 200, 244, 289, 325,
                     171, 221, 270, 326, 358,
                     163, 216, 242, 281, 312,
                     160, 207, 248, 288, 324,
                     142, 187, 234, 280, 316,
                     156, 203, 243, 283, 317,
                     157, 212, 259, 307, 336,
                     152, 203, 246, 286, 321,
                     154, 205, 253, 298, 334,
                     139, 190, 225, 267, 302,
                     146, 191, 229, 272, 302,
                     157, 211, 250, 285, 323,
                     132, 185, 237, 286, 331,
                     160, 207, 257, 303, 345,
                     169, 216, 261, 295, 333,
                     157, 205, 248, 289, 316,
                     137, 180, 219, 258, 291,
                     153, 200, 244, 286, 324),
                  .Dim = c(5,30))) 

dat$Y <- t(dat$Y)
init <- list(alpha = c(250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250,
                  250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250),
      beta = c(6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
                  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6),         
      alpha.c = 150, beta.c = 10,
      tau.c = 1, alpha.tau = 1, beta.tau = 1) 

fnm <- "jags_rats.txt"
mon <- c("alpha0", "beta.c", "sigma")

mod <- jags.model(fnm, dat, init, quiet=TRUE)
out$rats <- 
  coda.samples(mod, variable.names=mon, n.iter=1000, by=1000, progress.bar=NULL)
summary(out$rats)
```

```
## 
## Iterations = 1:1000
## Thinning interval = 1 
## Number of chains = 1 
## Sample size per chain = 1000 
## 
## 1. Empirical mean and standard deviation for each variable,
##    plus standard error of the mean:
## 
##           Mean     SD Naive SE Time-series SE
## alpha0 106.283 3.5884 0.113476       0.125482
## beta.c   6.196 0.1072 0.003391       0.004276
## sigma    6.108 0.6291 0.019893       0.033978
## 
## 2. Quantiles for each variable:
## 
##          2.5%     25%     50%     75%   97.5%
## alpha0 99.495 104.008 106.248 108.670 113.344
## beta.c  5.996   6.128   6.193   6.268   6.399
## sigma   5.205   5.735   6.060   6.402   7.227
```

### Adapt to your data

Now let’s see if we can modify this example to fit our particular setting.

Our longitudinal setting has two measurements: pre and post. So strip the last three columns from the matrix Y. There is one within subject factor, time, which is represents by X1. There is a between subjects factor, treatment group, which is represented by X2. Let’s pretend for now that that the first twenty observations represent your treatment group and the last ten observations represent your control group.

```
dat <- list(X1 = c(0, 1), X2 = rep(0:1, c(20, 10)), N = 30, T = 2, 
      Y = structure(
         .Data = c(151, 199,
                     145, 199,
                     147, 214,
                     155, 200,
                     135, 188,
                     159, 210,
                     141, 189,
                     159, 201,
                     177, 236,
                     134, 182,
                     160, 208,
                     143, 188,
                     154, 200,
                     171, 221,
                     163, 216,
                     160, 207,
                     142, 187,
                     156, 203,
                     157, 212,
                     152, 203,
                     154, 205,
                     139, 190,
                     146, 191,
                     157, 211,
                     132, 185,
                     160, 207,
                     169, 216,
                     157, 205,
                     137, 180,
                     153, 200),
                  .Dim = c(2,30))) 

dat$Y <- t(dat$Y)
init <- list(alpha = rep(150, 30), beta1 = rep(50, 30),
      beta1.c = 50, beta1.tau=1,
      beta2 = 20, beta3 = 5,
      alpha.c = 150,
      tau.c = 1, alpha.tau = 1) 

fnm <- "jags_lon.txt"
mon <- c("alpha.c", "beta1.c", "beta2", "beta3")

mod <- jags.model(fnm, dat, init, quiet=TRUE)
out$lon <- 
  coda.samples(mod, variable.names=mon, n.iter=1000, by=1000, progress.bar=NULL)
summary(out$lon)
```

```
## 
## Iterations = 1:1000
## Thinning interval = 1 
## Number of chains = 1 
## Sample size per chain = 1000 
## 
## 1. Empirical mean and standard deviation for each variable,
##    plus standard error of the mean:
## 
##            Mean    SD Naive SE Time-series SE
## alpha.c 154.095 2.576  0.08145         0.4494
## beta1.c  50.186 1.136  0.03593         0.1414
## beta2    -5.756 4.172  0.13193         1.4509
## beta3    -1.593 1.723  0.05447         0.5767
## 
## 2. Quantiles for each variable:
## 
##            2.5%     25%      50%      75%    97.5%
## alpha.c 148.583 152.538 154.2840 155.7871 158.7248
## beta1.c  47.995  49.452  50.1588  50.9269  52.4221
## beta2    -8.877  -7.483  -7.1730  -6.8746   9.7413
## beta3    -5.556  -2.352  -0.9216  -0.6312   0.9299
```

Okay, so far, so good. Your next step would be to put your own data in place of the data from the example. I won’t show that here because I don’t have your data. But I hope you can try the general outline suggested here.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/first-jags/
[sim2]: http://blog.pmean.com

[bugs1]: http://www.openbugs.net/Examples/Rats.html
[jags1]: http://sourceforge.net/projects/mcmc-jags/files/
[jags2]: https://cran.r-project.org/web/packages/rjags/index.html
[sim3]: https://github.com/pmean/bayesian-longitudinal
