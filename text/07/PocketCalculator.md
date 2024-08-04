---
title: Using a pocket calculator to compute a standard deviation
author: Steve Simon
source: http://www.pmean.com/07/PocketCalculator.html
date: 2007-03-01
categories:
- Blog post
tags:
- Descriptive statistics
output: html_document
page_update: complete
---

Most of the time, I let a computer program like SPSS compute quantities for me, but every now and then, I want to calculate a few simple statistics without the benefit of SPSS. This might involve using paper and pencil or using a pocket calculator. You should do this also, as it greatly increases your confidence level in what SPSS produces. Let me illustrate how you would calculate a standard deviation using a pocket calculator.

Your pocket calculator must have a square root key. A memory key (M+) is helpful. Here's a picture of a nice pocket calculator with both features from [www.keysan.com](http://www.keysan.com).

![](http://www.pmean.com/new-images/07/PocketCalculator01.jpg)

Suppose you wanted to calculate the standard deviation of the following four numbers: 12, 10, 11, and 13.

First you need to clear out memory. For some calculators, the simple process of recalling the value from memory (usually the button labeled MR or MRC) will clear memory. For other calculators, you have to press the recall from memory button twice. For still others you will have to press the clear memory button (usually labeled CM or MC). Each calculator is a bit different.

Now enter each data value in succession and press the M+ button.

```
12 M+
10 M+
11 M+
13 M+
```

Press the recall memory button to get 46   and clear memory. Square this number to get 2116 and divide by the sample size (in this case, 4) to get 529. Write this number down. Now enter each data value again, square it, and add it to memory. For most calculators, the sequence

```
12 X M+
10 X M+
11 X M+
13 X M+
```

will suffice because the calculator will finish the squaring operation before adding to memory. For other calculators, you will have to press the equals button before adding to memory.

```
12 X = M+
10 X = M+
11 X = M+
13 X = M+`
```

Press the recall memory button to get 534. Subtract the number you wrote down earlier to get 5. Divide by n-1 (in this case, 3) to get 1.6666667. This quantity is the sample variance. Press the square root button to get the sample standard deviation of 1.290994.

As a quick double check of the accuracy of your calculations compute the range of the data (largest value minus the smallest value). The range is usually 4 to 6 times larger than the standard deviation . In this example the range is 3, which is a bit less than 4 times 1.3, but that's still acceptable. Don't worry about it unless the standard deviation is larger than the range (a mathematical impossibility) or smaller than the range by an order of magnitude or more (possible but only in extreme circumstances).

Repetition is the best teacher, so the first few times you do this, run through the steps twice. Getting the same number twice will make you more comfortable with the entire process.

Try to calculate the standard deviation of the following data:

```
2.1, 2.5, 1.1, 5.3, and 2.2.
```

You should get 1.57734 for the standard deviation. If you didn't get this value, check some of the intermediate calculations. The sum of the five values is 13.2, and when you square this and divide by 5 (not 4!), you will get 34.848. When you square these values and add them, you will get 44.8. The difference between the two numbers is 9.952 and when you divide by n-1 you will get a variance of 2.488. The square root of this quantity, 1.57734, is the standard deviation. Note that the range (5.3 - 1.1 = 4.2) is a bit less than 4 times the standard deviation, but still acceptable.

**On your own**

Show that the standard deviation of

```
442, 218, and 333
```

is 112.0134.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/PocketCalculator.html
[sim2]: http://www.pmean.com
