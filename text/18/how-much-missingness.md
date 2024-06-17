---
title: "How much missingness can you tolerate?"
author: "Steve Simon"
source: "http://blog.pmean.com/how-much-missingness/"
date: "2018-07-07"
categories:
- Blog post
tags:
- Missing data
output: html_document
page_update: complete
---

I got a question about how much missing data could you have in a study and still feel comfortable with your data analysis. It's a question with no hard and fast answer, but I get the question so often that I have developed some general guidance.

<!---More--->

Everyone wants a rule on this, and no rule will work. It depends on how or why the data is missing. Sometimes 5% missing will kill you and sometimes 90% missing is not a serious issue. Seriously, I have heard arguments that even 90% missing is not a problem if you make a few reasonable assumptions about your data and use a rigorous approach to imputing the missing values. It's easy enough to verify this. Take a data set with no missing values and remove 90% of the data using a particular set of assumptions. Then impute using a rigorous approach and see if the results match those of the original data set.

But here's what I tell people. If less than 10% of your data is missing and there is nothing too unusual about the data that is missing then you're probably okay. If more than 30% is missing, there's a good chance you have problems unless you proceed very carefully.

That's a rule of thumb and I remind people that no one gets thrown in jail for violating a rule of thumb.

There's also a consideration of the method being used. If you rely on a simplistic approach, such as complete case analysis or last observation carried forward, you cannot afford to have more than a small percentage of missing values. If you use rigorous approaches like multiple imputation or maximum likelihood approaches to missing data, then you can tolerate even a very large fraction of missing data. Anyone using these rigorous approaches, of course, should work closely with a statistician. Large amounts of missing data is one of the "red flags" that I look for when deciding how much help a client needs.

Finally, you need to ask yourself why the data is missing, and this often requires speculation beyond the data set itself. Certain types of missing value mechanisms, like missing completely at random, are easily addressed, even if you have a large fraction of missing data. But watch out for informative missingness or data missing not at random . These are setting where the fact that a value is missing is directly associated with the value that you don't know. If you are measuring something sensitive, and you know that people are more likely to skip answering if they have this sensitive condition, then even a small fraction of missing data can cause serious problems.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/how-much-missingness/
[sim2]: http://blog.pmean.com