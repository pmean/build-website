---
title: Using SQL instead of R
source: "New"
author: Steve Simon
date: 2024-12-12
categories: Blog post
tags:
- SQL
- R sotware
output: html_document
page_update: no
---

The December 12, 2024 digest of the R help mailing list (Vol 262, Issue 9) had an interesting question. Let me try to paraphrase things here. A researcher had just started experimenting with R and MySQL (an open source database). This person wondered why you would use SQL to work with data in the MySQL database rather than doing everything in R. It's an interesting question. Here is a summary of the responses.

<!---more--->

One person pointed out that R is "Turing complete" meaning that anything that any programming language can do, can also be done in R. That's a theoretical argument, and in application, R may do some tasks slowly and with excessively complicated code. But you can make a theoretical argument that if you know R well enough, you don't really need SQL. It's only a theoretical argument, though.

Several people noted that SQL is especially useful for handling data that cannot fit in memory. This is a limitation of R that many people have pointed out. The amount of data that you can use inside of R (without a lot of tedious modifications) is limited by the amount of RAM you have in your computer. There is a lot of work on simplifying and streamlining R code for this setting, but SQL has been designed from the very beginning to work with databases that are larger than available memory. 

Another big advantage of SQL is that it has been developed over many decades to optimize the retrieval of data. It does a lot of things behind the scenes that can greatly improve the speed of your program. In contrast, R has a very uneven record on optimization. R can be fast at times, but there are some functions in R that are terribly slow. Slow not just compared to SQL, but slow relative to many other software systems. Again, there is a lot of work on speeding up R code, but SQL has been tweaking these optimizations for almost half a century.

SQL has a large base of users who are familiar with this language and who can quickly produce high quality code.

There are many security and access features built into SQL that allow multiple people to access and modify the data at the same time without one person stepping on another person's toes.

A last advantage of SQL is that this code can be used to access data in some of the newer systems with advanced features and improvements on relational databases. I am still trying to learn about these systems (Arrow is one example), so I can't say too much about them. But allowing access using SQL commands is an attractive feature for many of these systems. 

You can frame this question in a larger context: why do we need so many different programming languages? There are some cynical comments about this. There's a claim that everytime computer scientists encounter a new problem, they invent a new programming language. Or another cynical perspective is that they write a computer language first and then look for problems that it can solve.

The non-cynical answer is that maybe we have too many programming languages, but once a particular programming language takes hold in a group of programmers, it takes too much time and energy to switch to a different and better programming language. Also, programming languages are developed to meet differing needs. It might be speed, portability, resistance to bugs, or security to name a few. It is good to have choices that can address the particular needs that you prioritize. 