---
title: Odds ratio versus relative risk
author: Steve Simon
date: 2001-01-09
categories:
- Blog post
tags:
- Being updated
- Measuring benefit and risk
output: html_document
page_update: partial
---

*Dear Professor Mean: There is some confusion about the use of the odds ratio versus the relative risk. Can you explain the difference between these two numbers?*

Dear Reader,

Both the odds ratio and the relative risk compare the likelihood of an event between two groups. Consider the following data on survival of passengers on the Titanic. There were **462 female passengers: 308 survived and 154 died**. There were **851 male passengers: 142 survived and 709 died** (see table below).

```
  ------------ ----------- ---------- -----------
                 Alive       Dead       Total  
     Female        308        154         462  
      Male         142        709         851  
     Total         450        863        1,313  
  ------------ ----------- ---------- -----------
```

Clearly, a male passenger on the Titanic was more likely to die than a female passenger. But how much more likely? You can compute the odds ratio or the relative risk to answer this question.

The odds ratio compares the relative odds of death in each group. For females, the odds were exactly **2 to 1 against dying (154/308=0.5)**. For males, the odds were almost **5 to 1 in favor of death (709/142=4.993)**. The odds ratio is **9.986 (4.993/0.5)**. There is a **ten fold greater odds of death for males than for females**.

The relative risk (sometimes called the risk ratio) compares the probability of death in each group rather than the odds. For females, the probability of death is **33% (154/462=0.3333)**. For males, the probability is **83% (709/851=0.8331)**. The relative risk of death is **2.5 (0.8331/0.3333)**. There is a **2.5 greater probability of death for males than for females**.

There is quite a difference. Both measurements show that men were more likely to die. But the odds ratio implies that men are much worse off than the relative risk. Which number is a fairer comparison?

There are three issues here: The relative risk measures events in a way that is **interpretable and consistent with the way people really think**. The relative risk, though, **cannot always be computed** in a research design. Also, the relative risk can sometimes lead to **ambiguous and confusing situations**. But first, we need to remember that fractions are funny.

## Fractions are funny

Suppose you invested money in a stock. On the first day, the value of the stock **decreased by 20%**. On the second day it **increased by 20%**. You would think that you have broken even, but that's not true.

Take the value of the stock and multiply by 0.8 to get the price after the first day. Then multiply by 1.2 to get the price after the second day. The successive multiplications do not cancel out because 0.8 * 1.2 = 0.96. A 20% decrease followed by a 20% increase leaves you slightly worse off.

It turns out that **to counteract a 20% decrease, you need a 25% increase**. That is because **0.8 and 1.25 are reciprocal**. This is easier to see if you express them as simple fractions: **4/5 and 5/4 are reciprocal fractions**. Listed below is a table of common reciprocal fractions.

```
  ---------------- ----------------
     0.8 (4/5)        1.25 (5/4)  
     0.75 (3/4)       1.33 (4/3)  
     0.67 (2/3)       1.50 (3/2)  
     0.50 (1/2)       2.00 (2/1)  
  ---------------- ----------------
```

Sometimes when we are comparing two groups, we'll put the first group in the numerator and the other in the denominator. Sometimes we will reverse ourselves and put the second group in the numerator. The numbers may look quite different (e.g., 0.67 and 1.5) but as long as you remember what the reciprocal fraction is, you shouldn't get too confused.

For example, we computed **2.5 as the relative risk** in the example above. In this calculation we divided the male probability by the female probability. If we had divided the female probability by the male probability, we would have gotten a **relative risk of 0.4**. This is fine because **0.4 (2/5) and 2.5 (5/2) are reciprocal fractions**.

## Interpretability

The most commonly cited advantage of the relative risk over the odds ratio is that the former is the more natural interpretation.

The relative risk comes closer to what most people think of when they compare the relative likelihood of events. Suppose there are two groups, one with a **25% chance of mortality** and the other with a **50% chance of mortality**. Most people would say that the latter group has it twice as bad. But the **odds ratio is 3**, which seems too big. The latter odds are **even (1 to 1)** and the former odds are **3 to 1 against**.

Even more extreme examples are possible. A change from **25% to 75% mortality** represents a **relative risk of 3**, but an **odds ratio of 9**.

A change from **10% to 90% mortality** represents a **relative risk of 9** but an **odds ratio of 81**.

There are some additional issues about interpretability that are beyond the scope of this paper. In particular, **both the odds ratio and the relative risk are computed by division and are relative measures**. In contrast, absolute measures, computed as a difference rather than a ratio, produce estimates with quite different interpretations (Fahey et al 1995, Naylor et al 1992).

## Designs that rule out the use of the relative risk

Some research designs, particularly the **case-control design**, prevent you from computing a relative risk. A case-control design involves the selection of research subjects on the basis of the outcome measurement rather than on the basis of the exposure.

Consider a case-control study of prostate cancer risk and male pattern balding. The goal of this research was to examine whether men with certain hair patterns were at greater risk of prostate cancer. In that study, roughly equal numbers of prostate cancer patients and controls were selected. **Among the cancer patients, 72 out of 129 had either vertex or frontal baldness** compared to **82 out of 139 among the controls** (see table below).

```
  ------------- ------------------ -------------- -----------
                   Cancer cases       Controls       Total  
     Balding            72               82           154  
      Hairy             55               57           112  
      Total            129              139           268  
  ------------- ------------------ -------------- -----------
```

In this type of study, **you can estimate the probability of balding for cancer patients, but you can't calculate the probability of cancer for bald patients**. The prevalence of prostate cancer was **artificially inflated to almost 50%** by the nature of the case-control design.

So you would need additional information or a different type of research design to estimate the relative risk of prostate cancer for patients with different types of male pattern balding. Contrast this with data from a cohort study of male physicians (Lotufo et al 2000). In this study of the association between male pattern baldness and coronary heart disease, the researchers could estimate relative risks, since 1,446 physicians had coronary heart disease events during the 11-year follow-up period.

For example, among the **8,159 doctors with hair, 548 (6.7%) developed coronary heart disease** during the 11 years of the study. Among the **1,351 doctors with severe vertex balding, 127 (9.4%) developed coronary heart disease** (see table below). The **relative risk is 1.4 = 9.4% / 6.7%.**

```
  ------------- ------------------- ------------------- -----------
                   Heart disease          Healthy          Total  
     Balding        127 (9.4%)         1,224 (90.6%)       1,351  
      Hairy         548 (6.7%)         7,611 (93.3%)       8,159  
      Total             675                8,835           9,510  
  ------------- ------------------- ------------------- -----------
```

**You can always calculate and interpret the odds ratio in a case control study. It has a reasonable interpretation as long as the outcome event is rare** (Breslow and Day 1980, page 70). The interpretation of the odds ratio in a case-control design is, however, also dependent on how the controls were recruited (Pearce 1993).

**Another situation which calls for the use of odds ratio is covariate adjustment**. It is easy to adjust an odds ratio for confounding variables; the adjustments for a relative risk are much trickier.

In a study on the **likelihood of pregnancy among people with epilepsy** (Schupf and Ottman 1994), **232 out of 586 males with idiopathic/cryptogenic epilepsy** had fathered one or more children. In the control group, the respective counts were **79 out of 109** (see table below).

```
  -------------- --------------- ----------------- -----------
                    Children        No children       Total  
     Epilepsy       232 (40%)        354 (60%)         586  
     Control        79 (72%)         30 (28%)          109  
      Total            311              384            695  
  -------------- --------------- ----------------- -----------
```

The **simple relative risk is 0.55** and the **simple odds ratio is 0.25**. Clearly the **probability of fathering a child is strongly dependent on a variety of demographic variables, especially age** (the issue of marital status was dealt with by a separate analysis). The **control group was 8.4 years older on average (43.5 years versus 35.1)**, showing the need to adjust for this variable. With a multivariate logistic regression model that included age, education, ethnicity and sibship size, the **adjusted odds ratio for epilepsy status was 0.36**. Although this ratio was closer to 1.0 than the crude odds ratio, it was still highly significant. A comparable adjusted relative risk would be more difficult to compute (although it can be done as in Lotufo et al 2000).

## Ambiguous and confusing situations

The relative risk can sometimes produce ambiguous and confusing situations. Part of this is due to the fact that **relative measurements are often counter-intuitive**. Consider an interesting case of relative comparison that comes from a puzzle on the Car Talk radio show. You have a hundred pound sack of potatoes. Let's assume that these potatoes are 99% water. That means 99 parts water and 1 part potato. These are soggier potatoes than I am used to seeing, but it makes the problem more interesting.

If you dried out the potatoes completely, they would only weigh one pound. But let's suppose you only wanted to dry out the potatoes partially, until they were 98% water. How much would they weigh then?

The counter-intuitive answer is 50 pounds. 98% water means 49 parts water and 1 part potato. An alternative way of thinking about the problem is that in order to double the concentration of potato (from 1% to 2%), you have to remove about half of the water.

Relative risks have the same sort of counter-intuitive behavior. **A small relative change in the probability of a common event's occurrence can be associated with a large relative change in the opposite probability (the probability of the event not occurring)**.

Consider a recent study on **physician recommendations for patients with chest pain** (Schulman et al 1999). This study found that when doctors viewed videotape of hypothetical patients, **race and sex influenced their recommendations**. One of the findings was that doctors were more likely to recommend cardiac catheterization for men than for women. **326 out of 360 (90.6%) doctors** viewing the videotape of male hypothetical patients recommended cardiac catheterization, while only **305 out of 360 (84.7%)** of the doctors who viewed tapes of female hypothetical patients made this recommendation.

```
  -------------------- ---------------- ----------------- -----------
                           No cath            Cath           Total  
      Male patient        34 (9.4%)        326 (90.6%)        360  
     Female patient       55 (15.3%)       305 (84.7%)        360  
         Total                89               631            720  
  -------------------- ---------------- ----------------- -----------
```

The **odds ratio is either 0.57 or 1.74**, depending on which group you place in the numerator. The authors reported the odds ratio in the original paper and concluded that physicians make different recommendations for male patients than for female patients.

A **critique of this study** (Schwarz et al 1999) noted among other things that the odds ratio overstated the effect, and that the **relative risk was only 0.93 (reciprocal 1.07)**. In this study, however, it is not entirely clear that 0.93 is the appropriate risk ratio. Since 0.93 is so much closer to 1 and 0.57, the critics claimed that the odds ratio overstated the tendency for physicians to make different recommendations for male and female patients.

Although the relative change from 90.6% to 84.7% is modest, consider the opposite perspective. The rates for recommending a less aggressive intervention than catheterization was **15.3% for doctors viewing the female patients** and **9.4% for doctors viewing the male patients**, a **relative risk of 1.63 (reciprocal 0.61)**.

This is the same thing that we just saw in the Car Talk puzzler: a small relative change in the water content implies a large relative change in the potato content. In the physician recommendation study, a small relative change in the probability of a recommendation in favor of catheterization corresponds to a large relative change in the probability of recommending against catheterization.

Thus, **for every problem, there are two possible ways to compute relative risk**. Sometimes, it is obvious which relative risk is appropriate. For the Titanic passengers, the appropriate risk is for death rather than survival. But what about a breast feeding study. Are we trying to measure **how much an intervention increases the probability of breast feeding success** or are we trying to see **how much the intervention decreases the probability of breast feeding failure**? For example, Deeks 1998 expresses concern about an odds ratio calculation in a study aimed at increasing the duration of breast feeding. At three months, **32/51 (63%) of the mothers in the treatment group** had stopped breast feeding compared to **52/57 (91%) in the control group**.

```
  --------------- ------------------ ---------------- -----------
                     Continued bf       Stopped bf       Total  
     Treatment        19 (37.3%)        32 (62.7%)        51  
      Control          5 (8.8%)         52 (91.2%)        57  
       Total              24                84            108  
  --------------- ------------------ ---------------- -----------
```

While the **relative risk of 0.69 (reciprocal 1.45)** for this data is much less extreme than the **odds ratio of 0.16 (reciprocal 6.2)**, one has to wonder why Deeks chose to compare probabilities of breast feeding failures rather than successes. The **rate of successful breast feeding at three months was 4.2 times higher in the treatment group than the control group**. This is still not as extreme as the odds ratio; the **odds ratio for successful breast feeding is 6.25**, which is simply the inverse of the odds ratio for breast feeding failure.

**One advantage of the odds ratio is that it is not dependent on whether we focus on the event's occurrence or its failure to occur**. If the odds ratio for an event deviates substantially from 1.0, the odds ratio for the event's failure to occur will also deviate substantially from 1.0, though in the opposite direction.

## Summary

Both the odds ratio and the relative risk compare the relative likelihood of an event occurring between two distinct groups. The relative risk is **easier to interpret and consistent with the general intuition**. Some designs, however, **prevent the calculation of the relative risk**. Also there is **some ambiguity as to which relative risk you are comparing.** When you are reading research that summarizes the data using odds ratios, or relative risks, you need to be aware of the limitations of both of these measures.

## Bibliography

**When can odds ratios mislead? Odds ratios should be used only in case-control studies and logistic regression analyses [letter].** Deeks J. British Medical Journal 1998:317(7166);1155-6; discussion 1156-7.

**Evidence-based purchasing: understanding results of clinical trials and systematic reviews.** Fahey T, Griffiths S and Peters TJ. British Medical Journal 1995:311(7012);1056-9; discussion 1059-60.

**Interpretation and Choice of Effect Measures in Epidemiologic Analyses.** Greenland S. American Journal of Epidemiology 1987:125(5);761-767.

**Male Pattern Baldness and Coronary Heart Disease: The Physician's Health Study.** Lotufo PA. Archives of Internal Medicine 2000:160(165-171.

**Measured Enthusiasm: Does the Method of Reporting Trial Results Alter Perceptions of Therapeutic Effectiveness?** Naylor C, Chen E and Strauss B. American College of Physicians 1992:117(11);916-21.

**What Does the Odds Ratio Estimate in a Case-Control Study?** Pearce N. Int J Epidemiol 1993:22(6);1189-92.

**Likelihood of Pregnancy in Individuals with Idiopathic/Cryptogenic Epilepsy: Social and Biologic Influences.** Schupf N. Epilepsia 1994:35(4);750-756.

**A Haircut in Horse Town: And Other Great Car Talk Puzzlers.** (1999) Tom Magliozzi, Ray Magliozzi, Douglas Berman. New York NY: Berkley Publishing Group.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/01/oddsratio.html
[sim2]: http://www.pmean.com/original_site.html

