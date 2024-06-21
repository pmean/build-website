---
title: Seminar notes, Creating More Effective Graphics
author: Steve Simon
source: http://www.pmean.com/06/EffectiveGraphs.html
date: 2006-03-24
categories:
- Blog post
tags:
- Descriptive statistics
output: html_document
page_update: partial
---

I attended a web seminar, "Creating More Effective Graphs," taught
by Michael O'Connell and Naomi Robbins and sponsored by Insightful
Software, the makers of S-plus.

Michael O'Connell opened the talk with a brief description of Trellis
graphics. It's hard to capture exactly what Trellis graphics are in
words, but there is a nice web page by the developers of this product
at Bell Labs
[(stat.bell-labs.com/project/trellis](http://stat.bell-labs.com/project/trellis/)).

Dr. O'Connell also mentioned Graphlets. Graphlets are small java
programs created by S-plus to produce highly interactive graphics that
you can place on your web page. You can see some examples at

-   **[S-plus Graphlets
    Gallery](http://www.insightful.com/products/graphlets/gallery/graphlet_gallery.asp)**.
    Insightful Software. Accessed on 2006-03-24. **(Model,
    Descriptive)** [Excerpt] Here are just a few examples of S-PLUS
    Graphlets. Some of the examples include the S source code used to
    create the Graphlet, which you can use as a basis for creating
    your own Graphlets.
    www.insightful.com/products/graphlets/gallery/graphlet_gallery.asp

Naomi Robbins talked about effective graphs. She is the author of a
textbook, Creating More Effective Graphs, and has a web site,

-   **[NBR Offers Businesses Consulting and Training on Better Charts
    and Graphs](http://www.nbr-graphs.com/)**. NBR Consulting.
    Accessed on 2006-03-24. **(Model, Descriptive)** [Excerpt] NBR,
    a leader in consulting and training for graphical data
    presentation. www.nbr-graphs.com

The choice of a graph form has a tremendous impact on your
understanding of the data as well as your audience's understanding.
One graph is more effective than another if the reader can extract
quantitative information more rapidly. You should think about this
definition of "effective" because it is not what most people would
use. A commonly held conception is that a graphic is more effective if
it grabs your attention more rapidly. In some contexts (e.g.,
advertising) this might make sense but I believe that Dr. Robbins
definition is preferred in most applications.*

Let me insert a personal comment here: Leland Wilkinson has an
interesting take on this. He splits the types of tasks in a graph into
two different categories, pattern recognition (discovering trends and
associations), and table lookup (computing a numeric value from a
graph). Some of the things that help with table lookup (grid lines,
for example) will interfere with pattern recognition.

Dot plots are an improvement over traditional bar charts, and this
improvement is even more apparent when you use a clustered bar chart.
By placing the dots side by side on the same scale, you see patterns
more easily than with side by side bars. The panel display, placing
several related graphs in a rectangular grid, is also an improvement
over clustered and/or stacked bar charts. I don't have access to the
graphs she used, but I will try to find or create comparable plots for
this and all the other examples described here.

Dr. Robbins talked about a "month plot," also commonly called a
cycle plot. It uses the S-plus command, monthplot. It is very useful
way to display time series where you want to look at patterns across
two different time scales. For example, you want to see the trend in
sales over months, but you also are interested in variations in sales
across days of the week.

She showed a polar plot for a library survey where respondents were
asked how the library was doing on a range of scales, what they
thought was the minimum acceptable level and what was a desired level.
An important consideration is when the perceived performance was lower
than the minimum acceptable level or higher than the desired level.
The polar plot used a cryptic color system (red means you failed to
meet minimum acceptable level on average, for example). By plotting
the minimum and desired values as a range, and placing a dot at the
perceived level, you could easily see when the library was deficient
(perceived level was lower than what was considered minimally
acceptable, on average) and when the library was exceeding
expectations (perceived level was higher than the desired level, on
average).

She also had a nice display of a 2^4 factorial design. I'm not sure
what the name is for the type of plot she displayed, but I will find
an example when I have time.

The choice of color in graphics is important, and you need to keep in
mind that some of your readers are color blind. There is a nice test
for color blindness, and it includes a negative control (an image that
even color blind patients can discern). I don't have Dr. Robbins'
image, but I think I found a copy of it on the web
([www.geocities.com/heartland/8833/coloreye.html](http://www.geocities.com/heartland/8833/coloreye.html))

![EffectiveGraphics01.jpg not found.](http://www.pmean.com/new-images/06/EffectiveGraphs01.png)
height="200"}

Dr. Robbins used these two colors in most of her plots because this
choice of contrasting colors that will work well even for colorblind
individuals.

One of the questions at the end of the seminar was about how to best
display data that has a three way interaction. It turns out that
Richard Heiberger has   a book which discusses interaction plots in
Chapters 12-13. I'm guessing that the title of the book is
Statistical Analysis and Data Display [BookFinder4U
link]](http://www.bookfinder4u.com/detail/0387402705.html), which was
co-authored with Burt Holland, but I don't have this book in my
library, so I can't say for sure.

[Update, April 27, 2006] I got a nice email from Dr. Robbins. She
offered a minor correction (the title of her book is Creating More
Effective Graphs, not Creating Effective Graphs) which I just fixed
and confirmed that the Heiberger book "Statistical Analysis and Data
Display" is indeed the book she was referring to.
