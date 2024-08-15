---
title: Software used to create these web pages.
source: http://www.pmean.com/00/software.html
author: Steve Simon
date: 2000-08-24
categories:
- Blog post
tags:
- Obsolete page
- Website details
output: html_document
page_update: partial
---

This page is obsolete. I am keeping it around mostly for nostalgic reasons.

Here are a few details about the software I use to create these pages and some tricks I have learned over time.

<!---More--->

**Web authoring**

I use Microsoft FrontPage. I have several versions depending on whether I am at work or at home. I try to avoid any fancy features in FrontPage, because I don't want to use something proprietary that makes it difficult for someone with an alternative web browser.

**Math equations**

I use MathType to create most of the formulas on these web pages. I save the files directly in GIF format and insert them into the page. The nice thing about MathType is that you can re-open the GIF file and the codes that created that GIF file reappear for further editing.

**Screen shots**

I've used almost a dozen different screen capture programs for these web pages. The current program I am using, SnagIt], is quite good.

**Importing statistical graphs**

I use S-plus to draw a lot of the simple line graphs on my web pages. Here's an example:

![](http://www.pmean.com/images/03/mle1a.gif){width="352" height="272"}

It is very difficult to get the line graphs to look nice because when you try to scale the graphs, the very fine detail is often lost. I have found with repeated experience that it is best to produce a GIF file at the size that I want for the web page.

```
graphsheet(
  file="histogram##.gif", 
  width=2.67,
  height=2,
  format="GIF")
# insert graphics code here.
 dev.off()
```

This code produces a graph with a width of 192 pixels and a height of 143 pixels.

Watch for text labels and the axes, because these will often be too large or too small. You can use the command

`par(cex=0.5)`

or

`par(cex=2)`

to make the text half as big or twice as big. If I do not need axes and labels, then the default graph will include a lot of white space. The command

`par(mar=rep(0.1,4))`

will trim back almost all of the margins, including space that would have been reserved for the axes and labels.

**Bibliography**

I maintain a bibliography of research articles, books, and web sites using EndNote. This software has a lot of nice options for formatting your bibliography the way you like best.

I modified the fields for journal articles to include the PubMedID, and the URLs for the abstract, full text, and/or pdf formats of the article if they are available.

I have an output style, "Formal web format with no abstract" that inserts html code automatically into any bibliography that I produce. This is what it currently looks like, though I plan to add a few more features (such as automatically incorporating a BookFinder4U link for any book that has an ISBN).

![](http://www.pmean.com/images/00/software1.gif){width="429" height="360"}

When I include an article, here is what it looks like:

**Missing the point (estimate)? Confidence intervals for the number needed to treat.** Barrowman NJ. Cmaj 2002: 166(13); 1676-7. [[Medline]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12126323&dopt=Abstract) [[Full text]](http://www.cmaj.ca/cgi/content/full/166/13/1676) [[PDF]](http://www.cmaj.ca/cgi/reprint/166/13/1676.pdf)

Here is what a web site looks like:

**[Calculating and Using NNTs [pdf]](http://www.jr2.ox.ac.uk/bandolier/Extraforbando/NNTextra.pdf)**. Bandolier. Accessed on 2003-06-12. www.jr2.ox.ac.uk/bandolier/Extraforbando/NNTextra.pdf

Here is what a book looks like:

**Evidence-based Medicine How to Practice and Teach EBM.** Sackett
DL, MD, Richardson SW, Rosenberg W, Haynes BR (1998) Edinburgh:
Churchill Livingstone. ISBN: 0443056862.

These "Formal web format with no abstract" style is stored with the rest of the EndNote program under the Styles folder.

EndNotes is a complex program, and one of the tricks I learned is how to incorporate a link only when I have certain information. There are "Forced Separations" symbols, denoted by the vertical bar (|) and "Link Adjacent Text" symbols, denoted by a centered dot (a symbol not easily displayed on this web page) that are a bit tricky to learn how to use. When you learn out how they work, you can safely distinguish between books with and without an ISBN code.

The trick is to use the Link Adjacent Text symbol between the `<a` and the ` href=`, and between the ` [BookFinder4U` and the ` Link]`. You also need a forced separation between the `</a>` and the `</p>`. The Link Adjacent text insures that the elements always appear together or not at all, depending on whether the ISBN is known. Text following the Forced Separation appears no matter what happens with regard to the ISBN. We always want to include the `</p>` and while inserting a blank would work, that leaves an unnecessary blank dangling right before the end of the paragraph.

The same tricks allow EndNotes to insert a link to the Abstract (but only when the abstract is available on the web), the Full Text (but only when the full text is available on the web), and so forth. If I have an Accession Number for a journal article, I can even link to the Medline citation of this article through the following code:

`<a href=http://www.ncbi.nlm.nih.gov/entrez/query.fcgi    ?cmd=Retrieve&db=PubMed&list_uids=Accession Number&    dopt=Abstract>[Medline]</a>`

As in the previous example, you need a Link Adjacent Text symbol between the `<a` and the `href=`.

**Reprint requests**

I have not yet included any comic strips, such as The Far Side or Dilbert, in my web pages, but I might start sometime soon.

Reprint requests for Dilbert are sent to <reprints@unitedmedia.com>, and details about reprints appear in the United Media FAQ at

[www.unitedmedia.com/comics/dilbert/info/faq_and_contacts.html](http://www.unitedmedia.com/comics/dilbert/info/faq_and_contacts.html).

Another nice selection of comics is available at Cartoonbank:

[www.cartoonbank.com/](http://www.cartoonbank.com/)

which has many of the cartoons that originally appeared in The New Yorker.

I also have an image from the CNN web site that I am asking for permission to use. The email address for this request went to cnn.viewersource@turner.com.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/software.html
[sim2]: http://www.pmean.com/original_site.html
