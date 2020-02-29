---
title: Kaplan Meier
author: Steve Simon
source: http://www.pmean.com/00/kaplan.html
date: 2000-06-27
category: Blog post
tags: Survival analysis
output: html_document
---

*Dear Professor Mean, When I read my medical journals, I keep on coming
across terms like Kaplan-Meier Product Limit estimate or
Kaplan-Meier survival curve. What do these terms mean and when are
they used?*

<!---More--->

Often we want to measure how long it takes for something to occur. The
most common (and the most morbid) example is how long it takes for
someone to die. For this outcome, we want to estimate the fraction of
patients who survive for at least one month, at least three months,
etc. This estimate is known as a survival curve.

The term survival is sometimes misleading, because we can use it for
other less severe outcomes like how long until a cancer relapse, or
how long until an infection occurs. Sometimes it can even be used for
a positive outcome, like how long it takes for a couple to conceive.
But for the rest of this example, we'll keep things simple by
assuming that the outcome is time until death.

Estimating a survival curve is often complicated by the uncooperative
way in which research subjects sometimes behave. For example, some
subjects decide to leave a study part of the way through. Others
refuse to die before the study ends. We label these uncooperative
subjects as censored observations. They survived for at least three
months, but then we lost touch with them. Or they survived at least
three years, but then we had to terminate the study.

**Short explanation**

The Kaplan-Meier estimate is a simple way of computing the survival
curve in spite of all these troublesome research subjects. It involves
computing the number of people who died at a certain time point,
divided by the number of people who were still in the study at that
time. We multiply these probabilities by any earlier computed
probabilities, which is one reason this is called a "product limit
estimate."

The Kaplan-Meier survival curve is often illustrated graphically. It
looks like a poorly designed staircase, with vertical steps downward
at the time of death of each individual subject.

Often we will compare curves for two different groups of subjects. For
example, what is the survival pattern for subjects on a standard
therapy compared to a newer therapy. We can look for gaps in these
curves in a horizontal or vertical direction. A vertical gap means
that at a specific time point, one group had a greater fraction of
subjects surviving. A horizontal gap means that it took longer for one
group to experience a certain fraction of deaths.

**More details**

To compute a survival curve, you need to note the time of occurrence
of events (e.g., failures, deaths)

![wpe48.gif (1798 bytes)](http://www.pmean.com/images/01/kaplan11.gif){width="268"
height="56"}

It is possible for two or more events to occur at the same time, in
which case the number of distinct times is less than the number of
deaths or failures. You need to place the t's in order from smallest
to largest. That is,

![wpe49.gif (1048 bytes)](http://www.pmean.com/images/01/kaplan12.gif){width="123"
height="32"}

You also need to define the starting point of the study,

![wpe4A.gif (950 bytes)](http://www.pmean.com/images/01/kaplan13.gif){width="51"
height="32"}

The basic computations for the Kaplan-Meier survival curve rely on the
computation of conditional survival probabilities. In particular, the
probability

![wpe4B.gif (1200 bytes)](http://www.pmean.com/images/01/kaplan14.gif){width="152"
height="39"}

which can be interpreted as the probability of your surviving to a
specific time, given that you survived to the previous time. This
probability is easy to calculate if you know the number of deaths or
failures at a specific time and if you know the number of patients at
risk at that same time.

A more difficult (but more important) probability is the unconditional
probability of survival,

![wpe4C.gif (1052 bytes)](http://www.pmean.com/images/01/kaplan15.gif){width="83"
height="35"}

which represents the simple probability of survival to a specific
time. You can use a relationship between this unconditional
probability and the conditional probability:

![wpe4D.gif (1666 bytes)](http://www.pmean.com/images/01/kaplan16.gif){width="176"
height="109"}

At first glance, this does not seem to help, because the right hand
side of the equation still includes an unconditional probability. But
we can apply this approach again to get

![wpe4E.gif (2010 bytes)](http://www.pmean.com/images/01/kaplan17.gif){width="187"
height="148"}

and we can continue along these lines to get

![wpe4F.gif (2366 bytes)](http://www.pmean.com/images/01/kaplan18.gif){width="189"
height="187"}

This last probability represents the probability of surviving at the
start of the study. Unless we intentionally recruit dead subjects,
this probability has to be 1. Therefore, the unconditional probability
is equal to the cumulative product of conditional probabilities.

At each time point, you should count

![wpe50.gif (1613 bytes)](http://www.pmean.com/images/01/kaplan21.gif){width="212"
height="63"}

You should also count

![wpe51.gif (2124 bytes)](http://www.pmean.com/images/01/kaplan22.gif){width="243"
height="95"}

Armed with this information, you can now compute a Kaplan-Meier
survival curve. First you need to calculate the number of patients at
risk,

![wpe52.gif (1120 bytes)](http://www.pmean.com/images/01/kaplan23.gif){width="166"
height="32"}

In other words, the number at risk at any specific time point is just
the number at risk at the previous time point, minus the number of
deaths/failures and the number of censored observations. For
convenience, we define

![wpe53.gif (2872 bytes)](http://www.pmean.com/images/01/kaplan24.gif){width="250"
height="190"}

Next you compute the conditional probability of survival:

![wpe56.gif (1402 bytes)](http://www.pmean.com/images/01/kaplan25.gif){width="228"
height="60"}

Finally, the unconditional probability of survival is simply the
cumulative product of the conditional probabilities:

![wpe57.gif (1542 bytes)](http://www.pmean.com/images/01/kaplan26.gif){width="208"
height="71"}

**Example**

The following example is from Chadha et al (2000). The authors studied
a sample of 36 pediatric patients undergoing acute peritoneal dialysis
through Cook Catheters. They wished to examine how long these
catheters performed properly. They noted the date of complication
(either occlusion, leakage, exit-site infection, or peritonitis).

  ----- -------------------- ------------------
   Day   Catheters removed\   Catheters failed
             prior to\       
              failure        

    1            8                   2

    2            2                   2

    3            1                   1

    4            1                   1

    5            5                   3

    6            <U+00A0>                   2

    7            <U+00A0>                   1

   10            <U+00A0>                   2

   12            <U+00A0>                   2

   13            <U+00A0>                   1
  ----- -------------------- ------------------

If you wanted to estimate the probability that a catheter will survive
its first day, that's easy. There were 34 catheters, 2 did not
survive the first day, 15 failed on days 2-13. For 17 of the
catheters, we did not know when they would have failed, but we do know
that they all survived at least one day.

So the probability of surviving the first day is 32/34 = 94%.

But how would we estimate the probability of surviving two days? four
days? ten days?

This is tricky, because the censored observations provide information
up to the day of censoring, but cannot tell us anything more about
surviving beyond that day. What we need to do is compute the number of
catheters at risk on each day. This is the number of catheters that
would be at risk for failure on that day. It would exclude any
catheters that failed on previous days and it would exclude any
catheters that were censored on previous days.

  ----- -------------------- ------------------ ------------
   Day   Catheters removed\   Catheters failed   Catheters\
             prior to\                            at risk
              failure                           

    1            8                   2               34

    2            2                   2           34-8-2=24

    3            1                   1           24-2-2=20

    4            1                   1           20-1-1=18

    5            5                   3           18-1-1=16

    6            <U+00A0>                   2            16-5-3=8

    7            <U+00A0>                   1             8-2=6

   10            <U+00A0>                   2             6-1=5

   12            <U+00A0>                   2             5-2=3

   13            <U+00A0>                   1             3-2=1
  ----- -------------------- ------------------ ------------

We then need to compute the conditional probability of surviving at
each time point given that the catheter survived the previous time
point. This conditional probability would be

(number at risk - number of failures)/(number at risk)

  ----- -------------------- ------------------ ------------ --------------
   Day   Catheters removed\   Catheters failed   Catheters\   Conditional\
             prior to\                            at risk     probability
              failure                                        

    1            8                   2               34          32/34\
                                                                 =0.94

    2            2                   2           34-8-2=24       22/24\
                                                                 =0.92

    3            1                   1           24-2-2=20       19/20\
                                                                 =0.95

    4            1                   1           20-1-1=18       17/18\
                                                                 =0.94

    5            5                   3           18-1-1=16       13/16\
                                                                 =0.81

    6            <U+00A0>                   2            16-5-3=8        6/8\
                                                                 =0.75

    7            <U+00A0>                   1             8-2=6          5/6\
                                                                 =0.83

   10            <U+00A0>                   2             6-1=5          3/5\
                                                                 =0.60

   12            <U+00A0>                   2             5-2=3          1/3\
                                                                 =0.33

   13            <U+00A0>                   1             3-2=1          0/1\
                                                                 =0.00
  ----- -------------------- ------------------ ------------ --------------

Then we compute the cumulative product of these probabilities. This
represents the Kaplan-Meier estimate of the survival probability.

  ----- -------------------- ------------------ ------------ -------------- -------------
   Day   Catheters removed\   Catheters failed   Catheters\   Conditional\   Cumulative\
             prior to\                            at risk     probability      product
              failure                                                       

    1            8                   2               34          32/34\         0.94
                                                                 =0.94      

    2            2                   2           34-8-2=24       22/24\      0.94*0.92\
                                                                 =0.92          =0.86

    3            1                   1           24-2-2=20       19/20\      0.86*0.95\
                                                                 =0.95          =0.82

    4            1                   1           20-1-1=18       17/18\      0.82*0.94\
                                                                 =0.94          =0.77

    5            5                   3           18-1-1=16       13/16\      0.77*0.81\
                                                                 =0.81          =0.62

    6            <U+00A0>                   2            16-5-3=8        6/8\       0.62*0.75\
                                                                 =0.75          =0.46

    7            <U+00A0>                   1             8-2=6          5/6\       0.46*0.83\
                                                                 =0.83          =0.38

   10            <U+00A0>                   2             6-1=5          3/5\       0.38*0.60\
                                                                 =0.60          =0.23

   12            <U+00A0>                   2             5-2=3          1/3\       0.23*0.33\
                                                                 =0.33          =0.08

   13            <U+00A0>                   1             3-2=1          0/1\       0.08*0.00\
                                                                 =0.00          =0.00
  ----- -------------------- ------------------ ------------ -------------- -------------

Here is a graph of these survival probabilities.<U+00A0>

![](http://www.pmean.com/images/01/kaplan01a.gif){width="476" height="389"}

The plot has a "stair step" pattern, because we don't know the
survival probability at fractional days (such as 2.5 days) and at
some integer days (such as 9 days). By convention, we estimate the
survival probability for these values as equaling the survival
probability of the closest value that is still smaller (the 2 day
survival probability for 2.5 days, and the 7 day survival
probability at 9 days).

Notice that the estimated median survival time (the time at which
50% of the catheters survived) is six days.

**Tenckhoff Catheters Prove Superior to Cook Catheters in Pediatric
Acute Peritoneal Dialysis.** Chadha V. American Journal of Kidney
Diseases 2000:35(6);1111-1116.

**Reference**

**Tenckhoff Catheters Prove Superior to Cook Catheters in Pediatric
Acute Peritoneal Dialysis**.\
Chada V, Warady BA, Blowey DL, Simckes AM, Alon US.\
*American Journal of Kidney Diseases* (2000), 35(6):1111-1116.

**Further reading**

There are many beginning level books on biostatistics that discuss the
Kaplan-Meier curve, such as Woolson's book. You can find a more
advanced and detailed approach in Collett's book.

1.  **Modelling Survival Data in Medical Research.** Collett D. London
    England: Chapman and Hall (1994). ISBN: 0-412-44890-4.
2.  **Statistical Methods for the Analysis of Biomedical Data.** Woolson
    RF. New York NY: John Wiley & Sons, Inc. (1987). ISBN:
    0-471-80615-3.
