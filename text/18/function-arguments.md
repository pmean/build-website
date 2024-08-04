---
title: "Do you need to name your function arguments in R?"
author: "Steve Simon"
source: "http://blog.pmean.com/function-argumentsr/"
date: "2018-02-04"
categories: Blog post
tags:
- R software
output: html_document
page_update: partial
---

If you program anything in R, you'll end up calling a lot of functions.
You pass your data or your constants to these functions, and you can do
it in one of two ways. You can either pass the data/constants in the
order in which the function expects the arguments or you can match each
data/constant value with a particular argument name. This came up in the
context of a question: do I need to save everything using

save.image(file="foo.RData")

or can I save it with

save.image("foo.RData")?

<!---More--->

The first example names the argument and the second relies on the fact
that the first argument in the save.image function is the file argument.
Both work just fine here, but there are some situations where you MUST
specify which data/constants are associated with which arguments, and
some situations where you WANT to specify which data/constants are
associated with which arguments.

It is a bit of trial and error, and also a question of style. In
general, if a function only has one or two arguments, then naming them
is overkill. But for a function will lots of arguments, you might be
better off naming everything.

Also if you want to specify the first and third arguments of a function,
but leave the second one as the default, you should name everything.

For example, the cor function has arguments x, y, use, and method. If
you want the default for use and method, then don't bother naming
everything. So it would be cor(age, beauty). But if you want the
Spearman correlation, you should specify method="Spearman" in the
argument list. It would be cor(x=age, y=beauty, method="Spearman"). Just
to muddle things a bit further, cor(age, beauty, method="Spearman")
would also work, or you could specify the use argument's default with
cor(age, beauty, "everything", "spearman").

If you look at the help function, and you see an elipsis (...) in the
argument list, that means that you can send all sorts of interesting
things to the function, and these you should always name.

Also, if you are using some of the more obscure arguments in a function
(and in R, almost everything is obscure beyond the first or second
argument), then naming it makes your code more readable.


