---
title: "Turning off large blocks of an R Markdown document"
author: "Steve Simon"
source: "http://blog.pmean.com/turning-off-large-blocks/"
date: "2016-09-13"
categories: Blog post
tags:
- R software
output: html_document
page_update: complete
---

When you're running a large and complicated program using R Markdown, you can use the CACHE option to save a lot of time. CACHE will notice if a program chunk has stayed the same and avoid running it again. I tend to avoid using the CACHE option, though, because sometimes it fails to execute something that you want executed, even though it looks on the surface like nothing has changed. So I created some simple program chunks that allow me to explicitly turn off parts of the R Markdown program that I don't need to evaluate at the time. Think of it as a manual cache.

It's a very simple thing, but one which confounded me for a while, so I am writing about it here. That way I won't forget six months down the road.

<!---More--->

To turn of the evaluation of R Markdown code, insert the following: 

```
## turn evaluation off (to save time)
``{r eval=TRUE, echo=TRUE}
opts_chunk$set(eval=FALSE, echo=FALSE)
``
```

When you are ready to start evaluating R Markdown code again, use

```
## turn evaluation back on.
``{r eval=TRUE, echo=TRUE}
opts_chunk$set(eval=TRUE, echo=TRUE)
``
```

Change the double backticks to triple backticks.

I normally give names to my chunks, but not here. If you turn off and on and off again, then you have to worry about duplicate chunk labels, which gets tedious. It's simpler to leave these small chunks unnamed.

Historical note: I originally included dummy functions: turn\_off\_evaluation in the first chunk and turn\_on\_evaluation in the second chunk. It had made it easier to navigate through R Studio. But recent changes to RStudio include any double pound (\#\#) comments in the navigation. Hooray, because life is simpler with those comments instead of the dummy functions.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/turning-off-large-blocks/
[sim2]: http://blog.pmean.com
