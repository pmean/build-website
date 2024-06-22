---
title: "An Undergraduate Bayesian Statistics Course"
source: new
date: "2021-01-26"
categories:
- Blog post
tags:
- Teaching resources
output: html_document
page_update: complete
---

I attended an interesting webinar on teaching undergraduate Bayesian STatistics courses. Here are some resources I found out about during the webinar. I am putting them here so I don't forget about them.

<!--more-->

The webinar was based on a [cluster of articles on this topic appearing in the Journal of Statistics Education](https://www.tandfonline.com/toc/ujse20/28/3). One of the speakers, Jingchen (Monica) Hu, shared her [github site with resources she uses in her class](https://github.com/monika76five/Undergrad-Bayesian-Course). She also cowrote an interesting book, [Probability and Bayesian Modeling](https://www.routledge.com/Probability-and-Bayesian-Modeling/Albert-Hu/p/book/9781138492561) with Jim Albert.

Several of the speakers talked about using jags versus Stan for teaching Bayesian Methods, and I mentioned how much better I liked Stan. In particular, I liked how Stan places statements within specific blocks (data, transformed data, parameters, transformed parameters, model, and generated quantities). 

Another thing I like about Stan is how it forces you to define which data and which parameters are integer versus real. These definitions allow arguments of lower and upper to restrict the range, which is also a nice feature. The code is a bit more verbose, but much easier to follow. 

It seems like jags (and a similar program, BUGS) lets you place statements in a more or less haphazard order, which always made me uncomfortable. There is a [nice blog post about how to get started with Stan](https://www.r-bloggers.com/2019/01/an-introduction-to-stan-with-r/) that I referred to in explaining what I liked about Stan. 

One of the speakers also mentioned how nice the [rstanarm package](https://cran.r-project.org/web/packages/rstanarm/vignettes/rstanarm.html) is for its simple interface. I have not used rstanarm yet, but it looks very nice.
