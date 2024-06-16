---
title: Regression to the mean
source: http://www.pmean.com/00/regression.html
author: Steve Simon
date: 2000-01-27
categories:
- Blog post
tags:
- Ask Professor Mean
- Linear regression
output: html_document
page_update: partial
---

*Dear Professor Mean, In a stat course I was introduced to the term "regression to the mean". Today we administered a pretest to 4th graders. In Feb we will again test, with the same exam, to see "how much they've learned". I explained to the principal that, of course they would do better, no matter how well they were taught, that this was a classic case of regression to the mean. Am I correct, close, or way off on this?*

<!---More--->

You're half right, but Professor Mean doesn't give partial credit.

**Regression to the mean can explain how individuals behave, but it does not usually characterize how groups of individuals behave**. The one exception is when the group is selected on the basis of one of the variables.

It might help to remember the application where the concept of regression to the mean was first discovered. **Sir Francis Galton was interested in the relationship between a child's height (when the child reaches adulthood) and the height of the parents**. There are several ways to look at the data: the height of the father versus the height of the child, the height of the mother versus the height of the child, or the average height of both parents versus the height of the child.

One example, described on page 169 of Friedman, Pisani and Purves (1998), examines the relationship between the height of the father and the height of a male child. For this data, the correlation was 0.5. When you look at the prediction equation, though, the results at first seem a bit counterintuitive. **Without knowing anything else, you might expect that the best prediction for a male child's height would be the father's height**. In other words, if the father is 74 inches, your best prediction of the male child's height would also be 74 inches.

It doesn't quite work out that way, partly because **the average child's height (69 inches) was one inch greater than the average father's height (68 inches)**. That may be due to better nutrition or some other environmental factor. Both groups did have the same standard deviation, though (2.7).

![](http://www.pmean.com/images/00/rtm3.gif){width="231" height="248"}

Another surprising finding was that **the slope of the regression line was 0.5 rather than 1.0**. What does this mean? If the father's height is above average, say by six inches, the child's height would be expected to be above average, but to a lesser degree (three inches). If the father's height was below average, say by four inches, the child's height would also be expected to be below average but by only two inches.

So the rule for predicting child height is this. **Note how much the father's height deviates from the father mean of 68 inches. Cut that deviation in half. That tells you how much you would expect the child's height to deviate from the child mean of 69 inches.** For example, suppose a father's height is 72 inches. This is 4 inches above the father mean of 68. We would expect the child's height to be only 2 inches above the child mean of 69 inches. This means that 71 inches is our best prediction of the child's height.

![](http://www.pmean.com/images/00/rtm4.gif){width="320" height="320"}

This is the classic example of regression to the mean. **Tall fathers tend to have tall children, but not usually as tall as they are. Short fathers tend to have short children, but not usually as short as they are**. This doesn't ALWAYS hold true, of course. There are some tall fathers who produce even taller children; there are some short fathers who produce even shorter children. But the general tendency is for the children to have heights slightly closer to the mean than their fathers. The same general tendencies hold, by the way, when you look at the mother's height, or the average of father's and mother's height.

Now keep in mind that regression to the mean informs you about individual deviations from the group average. The children in the Galton's example as a whole were one inch taller than the fathers. Regression to the mean doesn't tell us anything about how an entire generation differs from the generation before it. What it tells us is how individuals deviate from the mean of their group.

The same thing might happen in your data set. **Suppose the average student scores 50 at the start of classes and 70 at the end of classes**. Then regression to the mean will tell you how much students deviate from the mean of 70 at the end of classes on the basis of how much they deviated from the mean of 50 at the beginning of classes.

**A student who is one standard deviation above the average score of 50 at the start of classes is probably going to be a bit less than a full standard deviation above average score of 70 at the end of classes**. So you might be a bit disappointed with students in the "smart" class.

**A student who is one standard deviation below the average score of 50 at the start of classes is probably going to be a bit less than one standard deviation below the average score of 70 at the end of classes**. You might get encouraged by students in the "dumb" class.

**Where regression to the mean tends to cause unexpected results is when you select students on the basis of their pre-test values**. For example, a naive researcher might split a sample of students into a "smart" class and a "dumb" class on the basis of a preliminary test. There might be, say a 10 point gap between the two groups based on the preliminary test. But all other things being equal, you should expect the gap between the "smart" and the "dumb" class to be narrower by the end of the year.

Of course, you don't use terms like "smart" and "dumb" for your students. The point here is that if you segregate students on the basis of their performance at the start of the class, the amount the two groups appear to learn at the end of classes will vary even if nothing else differs between the two groups.

**Regression to the mean also can appear in medical settings**. Quite often we will segregate patients into "sick" and "healthy" categories on the basis of some medical test. If we re-tested these groups at a later date, we would probably see that the "sick" category probably isn't quite as sick as we thought they were and the "healthy" category probably isn't as healthy as we thought they were.

**Suppose we measure cholesterol levels in 100 patients and select the 50 patients with above average cholesterol levels for a special diet and exercise program**. Even if that program were entirely ineffective, you would probably see some level of cholesterol reduction. The change would have been balanced out by the 50 patients in the below average group who would probably show an increase on average if we had taken the time and trouble to follow them as well.

Sometimes patients will self-select themselves for a new treatment. Some illnesses are cyclical, with random peaks and troughs in how the patient feels. **Patients are most likely to adopt a new approach (change doctors, discontinue medication, etc.) when they are in a trough. When the inevitable rebound occurs, the patient might falsely attribute the rebound to the change in treatment**. This is especially true when the patient focuses on a small time scale.

**Some special situations**

**Some processes show a natural progression in the averages, and we would expect a roughly similar progression in individual values.** For example, almost all children grow--short children grow and tall children grow too. So, for example, a three year old child with a height above the average of all three year olds will, after a year, grow (maybe a little and maybe a lot). This pretty much guarantees that, at the age of four, this child will be even farther above the average height of all three year olds. That's not surprising and it is not a contradiction of regression to the mean. What you have to do, of course, is to look at that child's height relative to all four year old children.

**When there is a natural progression in averages, regression to the mean is chasing a moving target.** If you select a group of normal healthy three year old children who all have heights above the average of all three year olds, then after a year, they will have heights that are above the average of all four year olds, but possibly by a smaller amount. Similarly, a group of sixth grade children who read at levels above the average of all sixth graders, will probably read at an even higher level a year later. But you would need to compare them, after a year, to the average reading level of all seventh graders.

Also, **regression to the mean for individuals on the low end will tend to balance out regression to the mean for individuals on the high end**. So, if you select an average or unremarkable group of individuals, and there is no preferential selection of individuals above average and no screening or exclusion of individuals who are below average, then that group, as a whole, will not exhibit regression to the mean.

Finally, **regression to the mean is a statistical tendency, so there will always be exceptions**. There will be some individuals who are above average at baseline and even more above average at the end of the study. It's also possible, once in a while for an entire group to move in a direction opposite of what regression to the mean would tell you. After all, any time you have randomness, unpredictable things can happen.

**Further reading**

David Freedman, Robert Pisani, Roger Purves. Statistics Third Edition. (1998) New York: W.W. Norton & Company. ISBN: 0-393-97083-3.

[Veronica Morton, David J Torgerson][mor1]. Effect of regression to the mean on decision making in health care. BMJ 2003: 326(7398); 1083-1084.

[mor1]: http://bmj.com/cgi/content/full/326/7398/1083

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/regression.html
[sim2]: http://www.pmean.com/original_site.html
