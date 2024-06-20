---
title: Sharing the same classroom for five consecutive years
author: Steve Simon
date: 2011-09-12
categories:
- Blog post
tags:
- Being updated
output: html_document
page_update: complete
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

<!---More--->

Dear Professor Mean, I needed to do a probability in my head. I think I did it wrong and can't figure out why. I'm trying to figure out what the probability of two kids out 50 that get divided into class each year. What is the chance that they would be in same class five years in a row. I thought it was 0.5 times 5. Or 2.5 But that was not right because 6 years in a row would be 3. What did I do wrong?

Let me make a few clarifying assumptions. First, the classes are size 25 each. Second, the kids are randomly assigned to a class. Third, the assignments are independent each year. Under those assumptions (equal class size, random assignment and independence) the probability of being in the same class for five consecutive years is 0.5^5 (one half raised to the fifth power). You were close when you said 0.5*5, but that leads to a probability greater than one. Your formula is also wrong because, as you recognize, the probabilities INCREASE as the number of years increase.

Now you could make it a bit more complicated. I was assuming that you were talking about two specific kids, Jack and Jill. Now let's assume that it is any two kids. What are the chances in a school with 50 kids that at least one pair of kids share the same classroom for five consecutive years. Well, there are 50*49/2 = 1225 pairs of kids and 25*24/2 = 300 pairs of kids in the first classroom and a similar number of pairs of kids in the second classroom. Notice that there are more pairs of kids in different classrooms than their are pairs of kids in the same classroom. It makes sense. A kid in the first classroom is paired with 24 classmates but is paired with 25 classmates in the different classroom.

Now consider a second year. It's possible to keep the classroom division the same, which would lead to 600 pairs of kids who share the same classroom for two consecutive years. But it is impossible to arrange the two classrooms so that none of the kids share the same classroom for two consecutive years.

Think of it as an assignment to four classrooms. The first classroom is 1A2A, the second is 1A2B, the third is 1B2A, and the fourth is 1B2B. Keeping the same classrooms would be like assignig everyone to either 1A2A or 1B2B (equivalently, you could assign everyone to either 1A2B or 1B2A).

You maximize the amount of mixing by putting about one fourth of the students into each of the groups 1A2A, 1A2B, 1B2A, and 1B2B. It gets a bit messy, but there is a minimum of 12*11/2 + 13*12/2 + 12*11/2 + 13*12/2 = 288 pairs of students who share classrooms for two consecutive years. After three years there are a minimum of 6*5/2 + 6*5/2 + 7*6/2 + 6*5/2 + 6*5/2 + 6*5/2 + 7*6/2 + 6*5/2 = 132 pairs of students who share classrooms for three consecutive years.

This can't be too surprising, if you think about it. If a student has two teachers to choose from each year, then there are 8 possible assignments of teachers across a three year span. It can hardly be surprising that you have lots of students sharing the same three teachers if you are assigning 50 of them into only 8 different three year teacher assignments.

Now the cases discussed above involve a deliberate attempt to divide and separate. In practice, random assignment would not be as efficient, so the expected number of pairs of students who share the same classrooms for three consecutive years is likely to be even higher.

After five years, there must be some students who share the same classroom across all five years, because you are assigning 50 students to 32 possible teacher assignments across five years. So there will be at least 18 pairs of students who share the same classroom across all five years, no matter how the students are assigned.

If you had random assignment, then here's how you would examine this in R.

![Random assignment in first year](http://www.pmean.com/new-image/11/classroom01.png)

The rep function lists the two assignments in alternating order and the sample function mixes things up. The first two students are assigned randomly to teacher 1B, the third is assigned to teacher 1A, and so forth. Repeat this process for the next year.

![Random assignment in second year](http://www.pmean.com/new-image/11/classroom02.png)

Notice that the first two students also share the same classroom in year 2, but

![Random assignment in third year](http://www.pmean.com/new-image/11/classroom03.png)

they have different classrooms in year 3. The assignments for year 4

![Random assignment in fourth year](http://www.pmean.com/new-image/11/classroom04.png)

and year 5 further shuffle the students randomly.

![Random assignment in fifth year](http://www.pmean.com/new-image/11/classroom05.png)

You cna create a list of classroom assignments across all five years by using the paste function.

![Random assignment across all five years](http://www.pmean.com/new-image/11/classroom06.png)

Notice that students 7 and 29 share the same classroom (1A 2A 3A 4B 5A) across all five years. There are others, such as three students 23, 45, and 50 who share the same classroom (1A 2B 3B 4B 5A) across all five years.

![Random assignment across all five years](http://www.pmean.com/new-image/11/classroom07.png)

The table fuction (shown above) lists the number of times that a pair or triple of students share the same classroom across all five years. In this data set there are no quads who share the same classrooms across all five years, but it is a possibility. If I was really clever, I could figure out how to do this using binomial and Poisson probabilities, but I'm not that clever. Still, the simple simulation shows the point very well and you could repeat this simulation a few thousand times to get a good estimate of the expected number of pairs of students who share the same classroom across five years.

So noting two particular students who shared the same classroom across all five years is fairly improbable (0.5^2), but when you look across all possible pairs of students, it is not only probable, it is a mathematical certainty.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/classroom.html
[sim2]: http://www.pmean.com/original_site.html 
