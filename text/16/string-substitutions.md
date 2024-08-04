---
title: "Simple string substitutions"
author: "Steve Simon"
source: "http://blog.pmean.com/string-substitutions/"
date: "2016-07-15"
categories:
- Blog post
- Incomplete page
tags:
- R software
output: html_document
page_update: complete
---

I had to make a rather complex string substitution for a project and I thought it would help to briefly review some simpler string substitution examples in R. You can find the R code at [my github site][sim3].

[sim3]: https://github.com/pmean/string-substitution

<!---More--->

Here are a few simple examples of string substitution.

The sub function will look for a pattern, insert a replacement if it is
found for any string in a vector x.

``` {.r}
example1 <- c("Steve", "Simon", "Professor", "Mean")
sub(pattern="e", replacement="3", x=example1)
```

    ## [1] "St3ve"     "Simon"     "Prof3ssor" "M3an"

Notice that the first "e" in the string "Steve" was changed to a "3" as
was the "e" in "Professor" and "Mean". There was no match for "e" in
"Simon", so it is left unchanged.

If you wanted to change more than one "e" in a string, you should use
the gsub function.

``` {.r}
gsub(pattern="e", replacement="3", x=example1)
```

    ## [1] "St3v3"     "Simon"     "Prof3ssor" "M3an"

You can find a pattern of more than a single character and replace it
with something shorter or longer.

``` {.r}
sub(pattern="eve", replacement="", x=example1)
```

    ## [1] "St"        "Simon"     "Professor" "Mean"

In the above exaple, the characters "eve' were replaced with nothing
which is effectively the same as removing them.

If you want to make a substitution of either a lower case or an upper
case letter, use the ignore.case=TRUE option.

``` {.r}
sub(pattern="s", replacement="3", x=example1, ignore.case=TRUE)
```

    ## [1] "3teve"     "3imon"     "Profe3sor" "Mean"

By default, the sub and gsub functions use regular expressions. Regular
expressions are very powerful, but they require special treatment for
particular symbols such as the period, the dash, and the asterisk. So
searching, for example, for a string like "-0.2" has the potential for
trouble.

If you are just starting out with string substitutions, you may want to
avoid regular expressions until you get more comfortable with the whole
process. Just use the option fixed=TRUE to disable regular expressions.

``` {.r}
example2 <- c("0.11", "0.20", "0.29")
gsub(pattern=".", replacement=",", x=example2, fixed=TRUE)
```

    ## [1] "0,11" "0,20" "0,29"

Try this function without fixed=TRUE and see what happens.

``` {.r}
gsub(pattern=".", replacement=",", x=example2)
```

    ## [1] ",,,," ",,,," ",,,,"

The alternative, if you want to stay with regular expressions, is to
place a double backslash in front of most special characters.

``` {.r}
gsub(pattern="\\.", replacement=",", x=example2)
```

    ## [1] "0,11" "0,20" "0,29"

Here are a few simple tricks that regular expressions can do. The caret
symbol (\^) will find a match only if it is at the start of a your
string and the dollar symbol (\$) will find a match only if it is at the
end of your string.

``` {.r}
sub(pattern="^0", replacement="X", x=example2)
```

    ## [1] "X.11" "X.20" "X.29"

``` {.r}
sub(pattern="0$", replacement="X", x=example2)
```

    ## [1] "0.11" "0.2X" "0.29"

You can use square brackets to match more than one thing.

``` {.r}
gsub(pattern="[01]", replacement="X", x=example2)
```

    ## [1] "X.XX" "X.2X" "X.29"

If you tried pattern="01" it would not replace anything because it would
look for a 0 followed directly by a 1.

The caret (\^) inside square brackets will invert the selection.

``` {.r}
gsub(pattern="[^01]", replacement="X", x=example2)
```

    ## [1] "0X11" "0XX0" "0XXX"

In this example, anything EXCEPT a 0 or 1 is replaced.

The plus symbol allows you to match more than one time.

``` {.r}
example3 <- c("bookkeeper", "width eee")
gsub(pattern="e+", replacement="X", x=example3)
```

    ## [1] "bookkXpXr" "width X"

Notice that the double e in "bookeeeper"" and the triple e in "width
eee" were replaced by a single X. Regular expressions are greedy in that
if you can find a match of length 1, a match of length 2, and a match of
length 3, regular expressions will preferentially choose the longest
match. This can sometimes cause some surprising results when you are
using the dot (which represents any single character) or ranges.

Here's an advanced example. Look for a left parentheses. Since this is a
special symbol you have to use a double backslash in front of it. Then
look for one or more characters of any type, which is the dot plus and
then match up a closing parenthesis.

``` {.r}
example4 <- c("Regular experssions are (sometimes) tricky.", "just watch (carefully) for (special) cases.")
sub(pattern="\\(.+\\)", replacement="X", x=example4)
```

    ## [1] "Regular experssions are X tricky." "just watch X cases."

Here you can see the issue with greedy matching. The regular expression
found two possible matches: "(carefully)" and "(carefully) for
(special)" that worked. So because regular expressions are greedy, it
took the second match.

``` {.r}
example4 <- c("Regular experssions are (sometimes) tricky.", "just watch (carefully) for (special) cases.")
sub(pattern="\\([^)]+\\)", replacement="X", x=example4)
```

    ## [1] "Regular experssions are X tricky." "just watch X for (special) cases."

Let's take this apart carefully. What you are trying to match is

\\( a left perenthesis

\[\^)\]+ one or more characters that are NOT a right parenthesis

\\) a right parenthesis.

Notice that we did not need a double backslash in front of the first
right parenthesis in this regular expression but we did need it in front
of the second right parenthesis. What counts as a special character in
regular expressions is different when you are inside square brackets
than when you are outside square brackets. Did I say that regular
expressions are tricky?

You can study regular expressions for years and still not understand all
the subtleties. But once you are comfortable with string substitution in
general, I certainly would encourage you to experiement with simple
regular expressions. In particular, I have found the ability to match
only at the beginning (\^) or only at the end (\$) of a string to be
very useful.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/string-substitions/
[sim2]: http://blog.pmean.com
