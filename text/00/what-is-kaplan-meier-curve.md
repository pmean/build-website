---
title: What is the Kaplan Meier curve?
source: http://www.pmean.com/00/kaplan.html
author: Steve Simon
date: 2000-06-27
categories:
- Blog post
tags:
- Ask Professor Mean
- Survival analysis
output: html_document
page_update: partial
---

*Dear Professor Mean, When I read my medical journals, I keep on coming across terms like Kaplan-Meier Product Limit estimate or Kaplan-Meier survival curve. What do these terms mean and when are they used?*

<!---More--->

Dear Reader,

Often we want to measure how long it takes for something to occur. The most common (and the most morbid) example is how long it takes for someone to die. For this outcome, we want to estimate the fraction of patients who survive for at least one month, at least three months, etc. This estimate is known as a survival curve.

The term survival is sometimes misleading, because we can use it for other less severe outcomes like how long until a cancer relapse, or how long until an infection occurs. Sometimes it can even be used for a positive outcome, like how long it takes for a couple to conceive. But for the rest of this example, we'll keep things simple by assuming that the outcome is time until death.

Estimating a survival curve is often complicated by the uncooperative way in which research subjects sometimes behave. For example, some subjects decide to leave a study part of the way through. Others refuse to die before the study ends. We label these uncooperative subjects as censored observations. They survived for at least three months, but then we lost touch with them. Or they survived at least three years, but then we had to terminate the study.

**Short explanation**

The Kaplan-Meier estimate is a simple way of computing the survival curve in spite of all these troublesome research subjects. It involves computing the number of people who died at a certain time point, divided by the number of people who were still in the study at that time. We multiply these probabilities by any earlier computed probabilities, which is one reason this is called a "product limit estimate."

The Kaplan-Meier survival curve is often illustrated graphically. It looks like a poorly designed staircase, with vertical steps downward at the time of death of each individual subject.

Often we will compare curves for two different groups of subjects. For example, what is the survival pattern for subjects on a standard therapy compared to a newer therapy. We can look for gaps in these curves in a horizontal or vertical direction. A vertical gap means that at a specific time point, one group had a greater fraction of subjects surviving. A horizontal gap means that it took longer for one group to experience a certain fraction of deaths.

**More details**

To compute a survival curve, you need to note the time of occurrence of events (e.g., failures, deaths). It is possible for two or more events to occur at the same time, in which case the number of distinct times is less than the number of deaths or failures. You need to place the t's in order from smallest to largest. That is,

$t_1 < t_2 <  t_3 < ...$

You also need to define the starting point of the study,

$t_0=0$

The basic computations for the Kaplan-Meier survival curve rely on the computation of conditional survival probabilities. In particular, the probability

$P[T > t_i | T > t_{i-1}]$

which can be interpreted as the probability of your surviving to a specific time, given that you survived to the previous time. This probability is easy to calculate if you know the number of deaths or failures at a specific time and if you know the number of patients at risk at that same time.

A more difficult (but more important) probability is the unconditional probability of survival,

$P[T > t_i]$

which represents the simple probability of survival to a specific time. You can use a relationship between this unconditional probability and the conditional probability:

$P[T > t_i]$

$\ =\ P[T > t_i | T > t_{i-1}]$

$\qquad \times \  P[T > t_{i-1}]$

At first glance, this does not seem to help, because the right hand
side of the equation still includes an unconditional probability. But
you can apply this approach again to get

$P[T > t_i]$

$\ =\ P[T > t_i | T > t_{i-1}]$

$\qquad \times \  P[T > t_{i-1} | T > t_{i-2}]$

$\qquad \times \  P[T > t_{i-2}]$

and you can continue along these lines to get

$P[T > t_i]$

$\ =\ P[T > t_i | T > t_{i-1}]$

$\qquad \times \  P[T > t_{i-1} | T > t_{i-2}]$

$\qquad \times \  P[T > t_{i-2} | T > t_{i-3}]$

$\qquad \times \  ... \ \times\  P[T > t_0]$

This last probability represents the probability of surviving at the start of the study. Unless we intentionally recruit dead subjects, this probability has to be 1. Therefore, the unconditional probability is equal to the cumulative product of conditional probabilities.

At each time point, you should count $d_i$, the number of deaths at time $t_i$ and $c_i$, the number of censored values at time $t_i$.

Armed with this information, you can now compute a Kaplan-Meier survival curve. First you need to calculate the number of patients at risk,

$n_i=n_{i-1}-c_i-d_i$

In other words, the number at risk at any specific time point is just the number at risk at the previous time point, minus the number of deaths/failures and the number of censored observations. For convenience, you should define $n_0$ as the number of patients in the study, $c_0$ as the number of censored observations prior to the first death, and $d_0$ as the number of deaths at the start of the study, which is always zero.

Next you extimate the conditional probability of survival:

$P[T > t_i | T > t_{i-1}]=1-\frac{d_i}{n_i}$

Finally, the unconditional probability of survival is simply the cumulative product of the conditional probabilities:

$P[T > t_i]=\prod\big(1-\frac{d_i}{n_i}\big)$

**Example**

The following example is from Chadha et al (2000). The authors studied a sample of 36 pediatric patients undergoing acute peritoneal dialysis through Cook Catheters. They wished to examine how long these catheters performed properly. They noted the date of complication (either occlusion, leakage, exit-site infection, or peritonitis).

```
Day Removed Failed
--- ------- ------
 1     8      2
 2     2      2
 3     1      1
 4     1      1
 5     5      3
 6     0      2
 7     0      1
10     0      2
12     0      2
13     0      1
```

If you wanted to estimate the probability that a catheter will survive its first day, that's easy. There were 34 catheters, 2 did not survive the first day, 15 failed on days 2-13. For 17 of the catheters, you did not know when they would have failed, but you do know that they all survived at least one day.

So the probability of surviving the first day is 32/34 = 94%.

But how would you estimate the probability of surviving two days? four days? ten days?

This is tricky, because the censored observations provide information up to the day of censoring, but cannot tell us anything more about surviving beyond that day. What you need to do is compute the number of catheters at risk for failure on a particular day. It would exclude any catheters that failed on previous days and it would exclude any catheters that were censored on previous days.

```
Day Removed Failed   At risk
--- ------- ------  ---------
 1     8      2            34
 2     2      2     34-8-2=24
 3     1      1     24-2-2=20
 4     1      1     20-1-1=18
 5     5      3     18-1-1=16
 6     0      2     16-5-3= 8
 7     0      1      8-0-2= 6
10     0      2      6-0-1= 5
12     0      2      5-0-2= 3
13     0      1      3-0-2= 1
```

You then need to compute the conditional probability of surviving at each time point given that the catheter survived the previous time point. This conditional probability would be 

(number at risk - number of failures)/(number at risk)

```
                              Conditional
Day Removed Failed   At risk  probability
--- ------- ------  --------- -----------
 1     8      2            34  32/34=0.94
 2     2      2     34-8-2=24  22/24=0.92
 3     1      1     24-2-2=20  19/20=0.95
 4     1      1     20-1-1=18  17/18=0.94
 5     5      3     18-1-1=16  13/16=0.81
 6     0      2     16-5-3= 8   6/ 8=0.75
 7     0      1      8-0-2= 6   5/ 6=0.83
10     0      2      6-0-1= 5   3/ 5=0.60
12     0      2      5-0-2= 3   1/ 3=0.33
13     0      1      3-0-2= 1   0/ 1=0.00
```

Then we compute the cumulative product of these probabilities. This represents the Kaplan-Meier estimate of the survival probability.

```
                              Conditional     Cumulative
Day Removed Failed   At risk  probability      product  
--- ------- ------  --------- -----------   --------------
 1     8      2            34  32/34=0.94             0.94
 2     2      2     34-8-2=24  22/24=0.92   0.94*0.92=0.86
 3     1      1     24-2-2=20  19/20=0.95   0.86*0.95=0.82
 4     1      1     20-1-1=18  17/18=0.94   0.82*0.94=0.77
 5     5      3     18-1-1=16  13/16=0.81   0.77*0.81=0.62
 6     0      2     16-5-3= 8   6/ 8=0.75   0.62*0.75=0.46
 7     0      1      8-0-2= 6   5/ 6=0.83   0.46*0.83=0.38
10     0      2      6-0-1= 5   3/ 5=0.60   0.38*0.60=0.23
12     0      2      5-0-2= 3   1/ 3=0.33   0.23*0.33=0.08
13     0      1      3-0-2= 1   0/ 1=0.00   0.08*0.00=0.00
```
   
Here is a graph of these survival probabilities.

![](http://www.pmean.com/images/00/kaplan01a.gif){width="476" height="389"}

The plot has a "stair step" pattern, because we don't know the survival probability at fractional days (such as 2.5 days) and at some integer days (such as 9 days). By convention, we estimate the survival probability for these values as equaling the survival probability of the closest value that is still smaller (the 2 day survival probability for 2.5 days, and the 7 day survival probability at 9 days).

Notice that the estimated median survival time (the time at which 50% of the catheters survived) is six days.

**Reference**

Chada V, Warady BA, Blowey DL, Simckes AM, Alon US. Tenckhoff Catheters Prove Superior to Cook Catheters in Pediatric Acute Peritoneal Dialysis *American Journal of Kidney Diseases* (2000), 35(6):1111-1116.

**Further reading**

There are many beginning level books on biostatistics that discuss the Kaplan-Meier curve, such as Woolson's book. You can find a more advanced and detailed approach in Collett's book.

+ Collett D. Modelling Survival Data in Medical Research. London England: Chapman and Hall (1994). ISBN: 0-412-44890-4.
+ Woolson RF. Statistical Methods for the Analysis of Biomedical Data. New York NY: John Wiley & Sons, Inc. (1987). ISBN: 0-471-80615-3.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/kaplan.html
[sim2]: http://www.pmean.com/original_site.html
