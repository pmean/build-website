---
title: "First steps with blogdown"
author: "Steve Simon"
source: new
date: "2021-10-09"
categories:
- Blog post
tags:
- Website details
- Rmarkdown code
output: html_document
page_update: complete
---

I am in the process of merging my website, written from 1999 to 2012 with my blog, which I started around 2012. I am using blogdown, an R package that creates a website from Markdown and Rmarkdown files. It's not been easy, but when it is done, it will all be worthwhile.

<!---more--->

Yihui Xie wrote and is the current maintainer of [blogdown][xie1]. It is an R package, but it installs and uses [Hugo][hug1] to do most of the work. There is a nice book, written by Yihui Xie, Amber Thomas, and Alison Presmanes Hill that you can [browse for free on the web][xie2] or purchase in the [traditional book form][xie3]. 

As an aside, the book about blogdown was written using another of Yihui Xie's R packages, [bookdown][xie4]. Bookdown is based on [pandoc][pan1]. If you notice a pattern here, it is something that is fairly new in computing. It is very easy to link R to other software systems, and since many of these other systems are freely downloadable, you get a powerful and flexible web of programs that work (mostly) seamlessly and behind the scenes.

I should warn you that (at the time this blog post was written), a new version of the blogdown package was posted on the Comprehensive R Archive Network that has some major changes from the version described in the book. The changes are described on [this RStudio blog post][rst1]. There is also a nice "getting started" [blog post][hil1] by Allison Hill that outlines setting up a basic site under the new version of blogdown. My summary of how to set up a new blog site will lean closely on her overview, but I want to add a few insights specific to my particular setting.

### Step one: Set up a new project

I found using blogdown to be difficult because I am an incurable tinkerer, and most of my tinks ended up being thunks. So in order to make progress, I had to remember to start at Square One and only take baby steps. If something goes wrong, just start again at Square One rather than trying to undo things that not always easy to undo.

So even though I already had around 1,600 web pages, I created a new project and named it b01. That didn't work out, so I went to b02 and b03, befure finally getting things right with b04.

![Dialog box for new project](http://www.pmean.com/new-images/21/first-steps-with-blogdown-01.png)

I made a conscious choice to avoid version control, at least at first. I've had some issues with earlier attempts to work with blogdown and version control at the same time. Rather than wrestle with both simultaneously, I want a new project rather than a project based on version control. Later I might recognize that I was being too careful here, but for now the philosophy is "baby steps."

![Dialog box for new project](http://www.pmean.com/new-images/21/first-steps-with-blogdown-02.png)

There's another tempting option dangled in front of you with the second dialog box. You can specify the project type here and R Studio has "Website using blogdown" as one of the choices. This could be a big time saver, but I worry that R Studio may make some default choices that I don't like or that don't work on my computer. I also dislike some of the work being done behind the scenes. So again, I recognize this as a step made too cautious, but I made this a plain vanilla "New Project."

![Dialog box for project type](http://www.pmean.com/new-images/21/first-steps-with-blogdown-03.png)

The third dialog box tells you where to place the new project and you should know what to do from this point.

### Step two: Create a new site

If you haven't done so already, install the blogdown package. 

If you do not already have hugo installed on your computer, there is a function inside of the blogdown library that will do this for you.

```
blogdown::install_hugo()
```

There's no need to reinstall hugo unless your version of hugo is old.

You need to make a choice here. Hugo has a variety of themes that control what features your website will have along with the general appearance of the site.

The blogdown book likes yihui/hugo-lithium, Allison Hill's blog post likes wowchemy/starter-academic. There are hundreds of themes, developed by a wide range of people with different interests and different needs. Do an Internet search on "Hugo themes" to ge a feel for what these systems offer.

I tried both yihui/hugo-lithium and wowchemy/starter-academic. There were things I liked a lot about both themes, but there were also things I really hated. By the way, you can easily switch between themes, but I made a conscious choice: better to restart at Square One. A new theme meant a new project. Again, perhaps overly cautious.

I finally settled on a theme that I liked: yihui/hugo-xmin. This is a minimal theme with not that many features. But it still looks good.

To start a website with a particular theme, type 

```
blogdown::new_site(theme = "yihui/hugo-xmin")
```

I may end up using a different theme, but for now I like a minimal theme where I manually add enhancements at my own pace.

Almost every Hugo theme comes with a small sample of pages of the "Lorem ipsum" variety. So you can build a small website without having to first create any of your own content. To build a site, use the build_site function. I change two of the default arguments.

```
blogdown::build_site(local=TRUE, build_rmd=TRUE)
```

By default, blogdown builds a website without having to store any files on your system, and for most people this is a good thing. I, however, need local files that I can transfer to the ISP that provides my website space. I also include build_rmd to be set to TRUE because some of the problems I have experienced in the past involved failure on my part to rebuild all the Rmd files. It slows things down a bit, but gives me a bit of security that all recent changes have been included.

### Step three: Browse your new site locally

It's only a small site at this point, but you can get a pretty good impression of what your final website will look like by viewing a local version. You do this with the serve_site command.

```
blogdown::serve_site()
```

Your entire website now appears in                                                                                                                                          

```
blogdown::serve_site()
```

![Preview website main page](http://www.pmean.com/new-images/21/first-steps-with-blogdown-04.png)
![Preview website main page](http://www.pmean.com/new-images/21/first-steps-with-blogdown-05.png)

![Preview website main page](http://www.pmean.com/new-images/21/first-steps-with-blogdown-06.png)

![Preview website main page](http://www.pmean.com/new-images/21/first-steps-with-blogdown-07.png)




### Step four: Create a new post

### Step five: Tinker

[hil1]: https://www.apreshill.com/blog/2020-12-new-year-new-blogdown/
[hug1]: https://gohugo.io/
[rst1]: https://blog.rstudio.com/2021/01/18/blogdown-v1.0/
[xie1]: https://cran.r-project.org/package=blogdown
[xie2]: https://bookdown.org/yihui/blogdown/
[xie3]: https://www.routledge.com/blogdown-Creating-Websites-with-R-Markdown/Xie-Hill-Thomas/p/book/9780815363729
[xie4]: https://cran.r-project.org/package=bookdown
