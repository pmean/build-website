---
title: "My writing goals for Summer 2022"
source: new
date: "2022-05-24"
categories:
- Blog post
tags:
- Website details
output: html_document
page_update: complete
---

I did not make much progress on updating my website over the past few months. My teaching load was heavier than what I was used to, and I had other writing goals for various projects for others. Nevertheless, I am planning to get back into writing for myself, which I enjoy greatly.

### Writing bootcamp

I signed up for a writing bootcamp, which is an all day effort across the next three days to get a lot of writing done. My first goal is this page, which outlines where I have been and where I hope to go with this work.

My project is to update a couple thousand web pages to a new format and fix any problems with those web pages while I am converting them.

### A brief history of my website

I started writing web pages back in 1998, and wrote one or two pages a week. These pages were written originally using Microsoft Front Page. 

I switched to Adobe Dreamweaver sometime around 2003 to 2006, because Microsoft discontinued Front Page and I did not like the replacement product they offered in its place.  

In November 2008, I developed a newsletter, The MonthlyMean, that published a few articles, recommended links, quotes, and at least one humorous joke. This was done using an email system (Constant Contact, I think), but I also placed the newsletters on my website. I kept the work going for a few years, but it kept getting harder and harder to meet the monthly deadlines. I finally stopped at the end of 2013.

I was never enthralled with Dreamweaver. So late in 2013, I switched to writing blog posts using WordPress. It was nice, but backing up a WordPress site is far more complicated than it should be. In fairness to WordPress, they have a system with lots of features I do not use. It's these extra features that make WordPress sites hard to backup. And it's not "hard hard", but it is not easy enough for me.

### New system: blogdown

So starting in about May 2019, I converted to a new system, blogdown. It was not easy to get blogdown to work, but that was more a reflection of my lack of familiarity with the system. Once you understand how it works, it is pretty easy. 

I like blogdown because it allows you to seamlessly integrate R code with individual web pages. Instead of running R code separately to create various graphs and images, I can include the R code directly in the pages. This simplifies the maintenance of web pages. When I need to update a graph, I just tweak the R code inside the page. I don't need to find a separate file.

A huge advantage to me is the integration of complex mathematical equations directly into blogdown. Before I converted to Markdown, I had to use a separate program, MathType, to create equations. MathType is fine. It is an excellent product. But you have to open it up, create an image file with all the fancy symbols and Greek letters, and insert that image manually into the webpage. With blogdown, I can use a TeX-like format to create equations. They come out looking smooth and professional, and it is all encapsulated in the web page itself.

Another nice thing about blogdown is that it allows you to build a very minimalist site. I don't want a lot of fancy features on my webpages. I just want some basics like headings, bold text, bullet points, and hyperlinks. You can add these features used a tagged text file that is easily human-readable in its raw form. Markdown is a lot simpler than hypertext markup language (html). Although it does not have as many direct features as html, it has most of the features I need. 

It's possible to get very fancy with blogdown, though you have to learn Cascading Style Sheets (CSS). It's not too hard to learn CSS, but I am saving that for later.

### Webpage counts

After 23.4 years 

```
# Here are the calculations you would use in R.
(ymd(20220524)-ymd(19990101))/365.25
```

I have written 1,825 pages. Actually a bit more, but some pages, especially from the earlier years have been misplaced. A few of these may be totally lost, but I am hoping to find most of these. Still 1,825 is a reasonable number to work with.

```
n <- 0
for (i in c(99, paste0("0", 0:9), 10:22)) {
  n <- n+length(list.files(paste0("text/", i), pattern="md$"))
}
n
```

This amounts to 78 papers per year

```
1825*365.25/as.numeric(ymd(20220524)-ymd(19990101))
```

or 1.5 pages per week.

```
1825*7/as.numeric(ymd(20220524)-ymd(19990101))
```

I've written 30 pages so far in 2022 (including this page),

```
length(list.files("text/22"))
```

which is slightly slower, but still rounds to the same overall rate.

```
30*7/as.numeric(ymd(20220524)-ymd(20220101))
```

### Counts of updated pages

My updates have been slower. I don't have an exact count, because the work has been haphazard. In the previous two years I updated pretty much all the pages from [2003][si03], [2007][si07], [2011][si11], [2015][si15], [2019][si19]. Still, if you add up all the pages from those years, you get 360.

```
n <- 0
for (i in c("03", "07", "11", "15", "19")) {
  print(length(list.files(paste0("text/", i), pattern="md$")))
}
n
```

This is an undercount, because I have also updated a few files from other years. But it's still a reasonable number to work with. I'm not sure when the official transition started, but probably sometime early in 2020. So that works out to an update of about 3.5 pages per week.

There are 225 pages written under the new system (blogdown), 

```
n <- 0
for (i in 20:22) {
  n <- n + length(list.files(paste0("text/", i), pattern="md$"))
}
n
```

so that means there are 1,240 pages left to be converted. If I update 3.5 pages per week, it would take 354 weeks, or about 6.8 years to finish this work. I suspect that I can do it faster, but this shows the magnitude of the effort I am facing.

I have automated some of this conversion already, but each page needs to be manually reviewed and many of them require minor tweaks. A few require major revisions. Then I need to cross-list, putting a link from the old webpage to the new and vice versa. Finally, once I am happy with the update, I strip everything out of the old webpage except the link to the new webpage.

### One more statistic

One more statistic worth noting. This page I have just written is about a thousand words (VERY rough estimate), and it took me about four hours to write. So that works out to be around 125 words per hour.

I am hoping that tracking statistics like those listed above will help me set reasonable goals for this website conversion.

### Acknowledgments

UMKC makes a strong commitment to its faculty and provides lots of resources to help us grow. This includes a strong commitment from Antonio Byrd and Jane Greer to hold this three day bootcamp. A couple dozen faculty signed up and we all worked hard during the bootcamp on our respective writing assignments. Antonio and Jane provided helpful guidance at the beginning and end of each day and also covered important tips for writers during a lunchtime session.

[si03]: http://new.pmean.com/2003/
[si07]: http://new.pmean.com/2007/
[si11]: http://new.pmean.com/2011/
[si15]: http://new.pmean.com/2015/
[si19]: http://new.pmean.com/2019/
[si21]: http://new.pmean.com/2021/

