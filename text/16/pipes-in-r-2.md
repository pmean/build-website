---
title: "Another example of pipes in R"
author: "Steve Simon"
source: "http://blog.pmean.com/pipes-in-r-2/"
date: "2016-12-29"
categories: Blog post
tags:
- R software
output: html_document
page_update: complete
---

I am using pipes in R (the magrittr package) a lot recently. It reduces the number of errors due to nested functions, among other things. I've given a [simple example before][sim3], and here's another.

<!---More--->

I am calculating the cumulative distance from a vector of longitude and latitude values. The last statement looked like this:

    return(round(cumsum(c(0,sqrt(x^2+y^2)))))

Notice this large number of right parentheses. Using pipes, the command would look like

    c(0,sqrt(x^2+y^2)) %>% cumsum %>% round %>% return

There are still a few parentheses, but it is much more manageable. You can also change the code easily. For example, suppose you wanted to round to the first decimal rather than the whole number. In the nested functions above, you'd have to figure out where among the various parentheses you would add the ",1". It ends up looking like

    return(round(cumsum(c(0,sqrt(x^2+y^2))),1))

but it would be very easy to place this one parentheses off and then R
thinks that you are adding a ",1" to the cumsum function. Not nice.

This is the change you'd make using pipes.

    c(0,sqrt(x^2+y^2)) %>% cumsum %>% round(1) %>% return

Much less chance of making an error.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/pipes-in-r-2/
[sim2]: http://blog.pmean.com

[sim3]: http://new.pmean.com/pipes-in-r/index.html
