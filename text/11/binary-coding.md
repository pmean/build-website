---
title: Using a binary coding trick illustrated by a Car Talk puzzler
author: Steve Simon
date: 2011-05-21
categories:
- Blog post
tags:
- Data management
output: html_document
page_update: complete
---

I often need to see how often certain variables and combinations of those variables appear in a data set. If the variable is binary, there is a trick for doing this that is illustrated by a Car Talk puzzler.

<!---More--->

Car Talk is a program on National Public Radio where listeners call in to ask questions about car repair from two experts, Tom and Ray Magliozzi. As part of the show, they include a Puzzler. The Puzzler is a question, sometimes related to automobiles, but sometimes not. Some of the most interesting Puzzlers (to me anyway) are about Mathematics.

One Mathematical Puzzler actually relates to the coding problem described above.

+ [Car talk puzzler][car1]

The basic setup is that you have seven stacks of coins. Each stack has 100 coins in it, and all of the coins in the stack are either genuine or counterfeit. A genuine coin weights 10 grams and a counterfeit coin weights 11 grams. You could tell whether a stack of coins was counterfeit by weighing the stack. A value of 1,000 grams indicates a genuine stack of coins and a value of 1,100 grams indicates a counterfeit stack. Do this six more times and you would establish which stacks were genuine and which stacks were counterfeit. But there is a way to identify whether none, some, or all of the stacks are counterfeit and which ones they are using a single weighing.

The way you do this is to select 127 coins: 1 from the first stack, 2 from the second stack, 4 (not 3) from the third stack, 8 from the fourth stack, etc. Following this sequence of powers of two, you would get 64 (=2^7) coins from the seventh stack. Notice that 1 + 2 + 4 + 8 + 16 + 32 + 64 = 127.

If all the coins are genuine, this stack will weigh 1,270 grams. If only the first stack is counterfeit, you would be over by one gram because of the 11 gram counterfeit coin from this stack replaces the 10 gram genuine coin. Similarly if the second stack is counterfeit those two bogus coins would add two extra grams to your weight.

Notice what happens with 3 grams overweight. This occurs when only the first and second stacks are counterfeit. That's because we very carefully picked four instead of three coins from the third stack. If we had foolishly used three coins from the third stack, then three grams overweight could represent either the first and second stacks only being counterfeit or the third stack only being counterfeit. Likewise, we chose 8 coins for the fourth stack because the maximum amount of excess weight among the 1 + 2 + 4 coins in the first, second, and third stacks is 7.

The amount of excess weight tells you which stacks are counterfeit by a binary representation of that number. For example 66 is represented by 1000010 in binary and this tells you that the seventh stack (64 coins) and the second stack (2 coins) are the only counterfeit coins.

How does this help in Statistics? I had a project with five exclusion factors: cancer, trauma, iv drug abuse, certain neurological conditions, and acute lower back pain.

So I created a new variable:

```
COMPUTE cod=(can=1)*16+(trm=1)*8+(ivd=1)*4+(neu=1)*2+(lbp)*1.
```

The variables can, trm, etc. were coded as 1 if the exclusionary criteria were met and 0 if they were not.

If none of the exclusionary criteria were met for a particular patient, you would see a value of 0. This is similar to having seven stacks of genuine coins. A value of 16 means an exclusion only because of cancer, 8 means an exclusion only because of trauma, etc. Here are the frequencies for the newly created variable.

```
 0 45020
 1  2095
 2   293
 3    90
 4    70
 5     6
 6     2
 8  8426
 9   754
10    94
11    30
12    30
14     1
16  5037
17   361
18    63
19    11
20     7
21     1
24  1077
25   126
26    17
27     3
28     1
```

Notice that 45,020 patients have no exclusions. There are 15,921 cases with one and only one exclusionary criteria: 2,095 for acute lower back pain (1), 293 for neurological problems (2), 70 for iv drug abuse (4), 8,426 for trauma (8), and 5,037 for cancer (16).

Certain codes correspond to exactly two exclusions (3=1+2, 5=1+4, 6=2+4, 9=1+8, 10=2+8, 12=4+8, 17=1+16, 18=2+16, 20=4+16, 24=8+16). There are 90 + 6 + 2 + 754 + 94 + 30 + 361 + 63 + 7 + 1,077 = 2,484 of these cases, with the most common combination of exclusion criteria being cancer and trauma (1,077 cases corresponding to the value of 24).

Only a handful of cases have three exclusionary criteria (11=1+2+8, 14=2+4+8, 19=1+2+16, 21=1+4+16, 25=1+8+16, 26=2+8+16, and 28=4+8+16) corresponding to 30 + 1 + 11 + 1 + 126 + 1 = 187 cases. The most common of these combinations is cancer, trauma, and acute lower back pain.

The only combination of exclusionary factors occuring four times is cancer, trauma, neurological problems, and acute lower back pain (27=1+2+8+16). No patients had all five exclusionary criteria, which would have coded as 31.

This is rather difficult for the average person to follow, so here is a relabeling of the exclusion reasons

```
 none  (0) 45020
    b  (1)  2095
   n   (2)   293
   nb  (3)    90
  i    (4)    70
  i b  (5)     6
  in   (6)     2
 t     (8)  8426
 t  b  (9)   754
 t n  (10)    94
 t nb (11)    30
 ti   (12)    30
 tib  (14)     1
c     (16)  5037
c   b (17)   361
c  n  (18)    63
c  nb (19)    11
c i   (20)     7
c i b (21)     1
ct    (24)  1077
ct  n (25)   126
ct b  (26)    17
ct bn (27)     3
cti   (28)     1
```

Note that b=acute lower back pain, n=neurologic problems, i=iv drug abuse, t=trauma, and c=cancer.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[car1]: https://www.cartalk.com/radio/puzzler/search-bogus-coins

[sim1]: http://www.pmean.com/11/BinaryCoding.html
[sim2]: http://www.pmean.com/original_site.html 
