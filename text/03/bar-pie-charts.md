---
title: Pitch the pie! Ban the bar!
author: Steve Simon
source: http://www.pmean.com/03/barpie.html
date: 2003-06-05
categories:
- Blog post
tags:
- Descriptive statistics
- Graphical display
output: html_document
page_update: complete
---

*This is an outline of a speech that I gave to Bluejacket Toastmasters on June 5, 2003.*

I work a lot with numbers and I've found that there is usually a good way to display those numbers and a bad way. Here's an example.*

![](http://www.pmean.com/new-images/03/pie.gif){width="184" height="69"}

It's a pie chart with bright bold colors and a deep 3-D effect. Is this a good way to display the data? WRONG! You should pitch the pie.

Here's another example.

![](http://www.pmean.com/new-images/03/bar.gif){width="205" height="135"}

It's a bar chart with big bold purple bars. Is this a good way to display the data? WRONG AGAIN! You should ban the bar.

These charts are useful once in a while, but most of the time all you need is the numbers themselves. You don't have to surround them in a cloak of fancy colors and graphic effects. The numbers by themselves are often all that you need.

But you can't just toss the numbers onto a sheet of paper and hope that it will work out well. You have to plan things. There are two things that can help:

1.  a little bit of rounding, and
2.  a little bit of re-ordering.

#### Costs of pet ownership example

Shown below is a table loosely adapted from a web page on pet care. I've taken a few liberties with some of the numbers to simplify this discussion, but the numbers are fairly close to the values on that web page.

|                    |            |        |              |         |
|-------------------:|-----------:|-------:|-------------:|--------:|
|                    | Amphibians |  Birds |         Cats |    Dogs |
|   Initial Cost$^1$ |     113.41 | 354.17 |       298.70 |  341.92 |
|    Food/Treats$^2$ |      48.99 | 295.31 |        97.74 |  246.94 |
| Vet Bills/Meds$^2$ |      48.70 | 354.39 |       193.08 |  317.24 |
|    Misc. Costs$^2$ |      41.11 | 116.06 |        64.19 |  211.57 |
|                    |            |        |              |         |
|                    |    Ferrets |   Fish | Hermit Crabs | Lizards |
|   Initial Cost$^1$ |     96.58  | 104.74 |        89.57 |  103.84 |
|    Food/Treats$^2$ |    101.86  |  58.68 |        32.79 |  296.84 |
| Vet Bills/Meds$^2$ |    150.86  |  43.60 |        21.72 |  348.00 |
|    Misc. Costs$^2$ |     60.10  | 103.28 |         7.97 |   92.78 |
|                    |            |        |              |         |
|                    |   Rodents  | Snakes |   Tarantulas |         |
|   Initial Cost$^1$ |     53.16  | 97.31  |       101.11 |         |
|    Food/Treats$^2$ |     52.54  | 295.93 |        48.43 |         |
| Vet Bills/Meds$^2$ |     52.00  | 153.83 |        23.68 |         |
|    Misc. Costs$^2$ |     61.56  | 70.06  |        43.32 |         |
  
$^1$ includes items like cost of the pet, initial shots, litter box,
collar, aquarium, etc.

$^2$ yearly cost. This cost will vary based on the size of the pet.

The initial cost would include the cost of the pet, litter box for a cat, collar and leash for a dog, aquarium for fish, and so forth. These are also averages and would not apply to someone who gets diamond studded collars for their pets. Also the average food cost for a small Yorkie is not going to compare the average food cost for a big Siberian Husky.Look at this table and tell me what patterns you see. A few patterns might appear

- snakes and lizards are more expensive than I would have thought.
- hermit crabs and rodents are fairly inexpensive.

But it takes a lot of squinting and staring to discover these patterns.

This table needs some work. The first thing is to do some rounding.

#### Rounding

Rounding is important because it reduces the strain on your brain. You don't have to work so hard to uncover patterns in the data. When you look at a table of numbers, the first thing you often do is to make comparisons. These comparisons often involve an implicit subtraction.

For example, you might wonder to yourself "*How much difference is there between the average vet bills for a dog and for a cat?*"

The respective numbers are

```
317.24
193.08
```

Take some time to subtract here. This would tell you how much you would save on yearly vet bills if you got a cat instead of a dog.

Let's see, four minus eight is ummm, borrow the one, ow, ow, ow, my brain hurts.

You can simplify life by rounding the data to one or two significant figures. Here are the rounded costs

```
320
190
```

If I asked you to subtract those two numbers, you should be able to tell me the answer quickly and painlessly--130. My wife, an avid dog lover, would tell you that dogs are worth every penny!

When you round, you lose a little bit in precision. In this example, we're off by about six dollars or so. But the small loss in precision is more than made up for by the big gain in comprehension.

People I work with often don't like to round their numbers. It took a lot of effort to get that 317.24, by golly, and I don't want to throw any of that away.

Sometimes they will round their numbers but not enough. "*Why can't I keep a third digit?*" they ask. It turns out that the third digit will give you brain pain.

There's a reason for this. Inside your brain is a spot for short term memory storage. It can usually hold about four pieces of information without a problem. Anything more causes an overload and slows things down.

A pair of two digit numbers will fit into short term memory very easily, but a pair of three digit numbers will not.In the vet costs example, rounding to three significant figures means rounding to the nearest dollar rather than to the nearest ten spot. This leads to the following subtraction.

```
317
193
```

Ow, ow, ow, my brain hurts again.

#### Re-ordering

When you arrange these numbers, try to anticipate the possible comparisons and then place the numbers close to one another. You have a choice here. You can orient the numbers horizontally,

```
320 190
```

by placing them within the same row. You could also orient the numbers vertically,

```
320
190
```

by placing them in the same column.

Which orientation is best for subtracting?

The vertical orientation appears far more natural for doing a subtraction. Also be sure to place the larger number above the smaller one. If you had the smaller one on top

```
190
320
```

it doesn't work as well.

Try to sort your numbers from high to low. If you have more than one column of numbers, use the first column, use the last column, or use the average of all the columns. It doesn't matter too much. A few of your numbers might not be in perfect order, but these deviations are actually interesting, as you will see in the example below.

Sorting by one of the columns will do a lot for your data, and if almost always better than the usual approach of alphabetizing by labels.

Have you ever seen a list of numbers for each of the fifty states. It's almost always alphabetical, but most of the time this places states next to one another that have almost nothing in common. Alaska is always between Alabama and Arkansas. Wisconsin is always between West Virginia and Wyoming. There is nothing to recommend this approach.

Sure you can find your own state quickly, but then can you find other states that are similar to your state?

A better approach would be to sort the states by some criteria. List the states with the largest square miles at the top (Alaska, Texas, California) and put the states with the smallest square miles at the bottom (Connecticut, Delaware, Rhode Island).

Or list the states with the most people at the top (California, Texas, New York) and with the fewest people at the bottom (Alaska, Vermont, Wyoming).

#### Costs of pet ownership example, reworked

Here is the same table reworked. I rounded each value, and re-oriented the table so that the costs for each type of pet fell into the same column. I also sorted the numbers based on the initial cost.

|              | Initial Cost$^1$ | Food/Treats$^2$ | Vet Bills/Meds$^2$ |      Misc.Costs$^2$ |
|-------------:|-----------------:|----------------:|-------------------:|--------------------:|
|        Birds |              350 |             300 |                350 |                 120 |
|         Dogs |              340 |             250 |                320 |                 210 |
|         Cats |              300 |             100 |                190 |                  60 |
|   Amphibians |              110 |              50 |                 50 |                  40 |
|         Fish |              100 |              60 |                 40 |                 100 |
|      Lizards |              100 |             300 |                350 |                  90 |
|   Tarantulas |              100 |              50 |                 20 |                  40 |
|       Snakes |              100 |             300 |                150 |                  70 |
|      Ferrets |              100 |             100 |                150 |                  60 |
| Hermit Crabs |               90 |              30 |                 20 |                  10 |
|      Rodents |               50 |              50 |                 50 |                  60 |

$^1$ includes items like cost of the pet, initial shots, litter box,
collar, aquarium, etc.

$^2$ yearly cost. This cost will vary based on the size of the pet.

This table is a lot easier to look at. You might notice a few new patterns that weren't so obvious before.

- Birds, dogs, and cats all have about the same initial cost, but cats have far smaller yearly costs.
- Lizards and snakes may not cost a lot at first, but they are expensive to feed.
- Fish don't cost that much to buy and to feed, but have a lot of miscellaneous costs, probably due to aquarium upkeep.

You will probably notice other interesting patterns.

#### Summary

If you are displaying numbers, pitch the pie and ban the bar. Most of the time you are better off displaying the numbers themselves. Just be sure to do a little bit of rounding and re-ordering first.

#### References

All of the ideas described above were championed by A.S.C. Ehrenberg three decades ago. You can find more details in his book, A Primer in Data Reduction.

The web site where I got the numbers from is

Steph Bairey. How Much Does it Cost to Own a Pet? 

But my link to that article no longer works. Here is a similar article in [html format][bai1].

Note: The numbers on the web page were already rounded, so I had to "unround" them for this example by adding a small random amount to each value. I also replaced some of the zero values by a slightly larger number and made some other minor adjustments. The costs reflected in my tables, however, are very close to the ones on the web.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[bai1]: http://www.practical-pet-care.com/article_view.php?ver=22
[sim1]: http://www.pmean.com/03/barpie.html
[sim2]: http://www.pmean.com/original_site.html
