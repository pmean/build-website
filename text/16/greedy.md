---
title: "What greedy means to a geek"
author: "Steve Simon"
source: "http://blog.pmean.com/greedy/"
date: "2016-10-16"
categories: Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

I've run across the term "greedy" in several work related contexts, so I thought it might be worth explaining what it means.

<!---More--->

A greedy algorithm is an algorithm that tries to maximize some multi-step process by taking the biggest first bite out of the problem, looking at what's left and taking the largest bite out of it and so forth. The hope is that after all the possible bites are taken, you've eaten as much as possible. You can also talk about greedy algorithms in the context of minimization, and that would mean taking the smallest bites possible at each step.

Greedy algorithms are simple and they work well at least some of the time. Here's a simple example of a greedy algorithm.

Suppose you wanted to make change and you wanted to use as few coins as possible. The greedy algorithm would be to pull out the largest coin needed, look at what remains and pull out the largest coin for that and so forth. So if you needed 32 cents in change, pull out a quarter. What remains is 7 cents, so pull out a nickel. What remains is 2 cents. Pull out a penny. What remains is 1 cent. Pull out another penny and you're done. 32 cents in 4 coins, a quarter, nickel, and two pennies.

Suppose, though, that you had no nickels in your cash register. The greedy algorithm would hand back eight coins, one quarter and seven pennies. You could do better if you weren't so greedy on your first step. Hand out a dime on your first step rather than a quarter. Then when all the dust settles, you'd end up with five coins, three dimes and two pennies.

Greedy matching is a practical example worth examining. Suppose you an equal number of subjects in a treatment group and a control group. You want to match them in pairs so that the ages in each pair are as close as possible. The treatment group ages are 58, 63, and 66. The control ages are 55, 60, and 64.

A greedy match would first pair the 63 year old treatment subject with the 64 year old control subject. You're left with ages 58 and 66 in the treatment group, and 55 and 60 in the control group. Match the 58 years old treatment subject with the 60 year old control subject. That leaves the 66 year old treatment subject, the oldest one in the treatment group, to be matched with the 55 year old control subject, the youngest one in the control group. You would have been a lot better off if you hadn't been so greedy with the first match. Matching the 66 year old control subject first would have left you in much better position for the later matches.

These are very simple examples, but show that a greedy algorithm may optimize the first step at the expense of the entire process.

There is another context in which greedy is used. I was interested in using regular expressions to match certain expressions in a string so I could remove them. Here is an example:

```
    "Carcinoma in situ [47,232 facts]"
```

I want to remove the square brackets and everything between them. This would involve the sub or gsub functions in R. To match the left square bracket, you need to use an escape sequence because the left square bracket has a special meaning in regular expressions.

```
"\\["
```

Then you need to match one or more characters of any type. A dot means any character and a plus means look for one or more.

```
    "\\[.+"
```

Then you need to match the right square bracket.

```
"\\[.+\\]"
```

The R command, then, would be

```
    gsub("\\[.+\\]", "", string_vector)
```

but there's a potential problem. In regular expressions like this, there may be more than one match possible. Consider, for example, the following string

```
    "[274.0] Carcinoma in situ [47,232 facts]"
```

The regular expression could match the� "[274.0]" or the "[47,232 facts]" but it could also match the entire string. The string starts with a left square bracket, has one or more characters, and ends with a right square bracket.

The default match in regular expressions is a greedy match. You try to match as big a piece of the string as possible. So the sub command would not change the above string to something just a little bit shorter. It would change it to an empty string! For this particular problem, that's not what we want.

There's a simple change you can make, though. If you follow the dot with a question mark, the regular expression tries to find the shortest match possible. So the command that works is

```
    gsub("\\[.+?\\]", "", string_vector)
```

and it would change "[274.0]Carcinoma in situ [47,232 facts]" to "Carcinoma in situ ". Note that you now have a trailing blank, but a second gsub command

    gsub(" $", "",� string_vector)

will remove that trailing blank.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/greedy/
[sim2]: http://blog.pmean.com
