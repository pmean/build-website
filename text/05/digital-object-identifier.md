---
title: The Digital Object Identifier
author: Steve Simon
date: 2005-01-19
categories:
- Blog post
tags:
- Being updated
- Information searching
output: html_document
page_update: partial
---

Many journals are now using the Digital Object Identifier (DOI) to reference their publications.

For example, a recently published article in BMJ, "Parachute use to prevent death and major trauma related to gravitational challenge: systematic review of randomised controlled trials," appears on their web site as

- [http://bmj.bmjjournals.com/cgi/content/full/327/7429/1459][bmj1]

but this might change in a few years or a few decades. The web site might re-organize their files or change to a different provider of Internet services. There's a technical term for this, [link rot][wik1] (also spelled Linkrot and LinkRot). Link rot is the bane of all web writers: the links we include on our web pages gradually become broken over time and we have to be constantly fixing our pages to update (or sometimes remove) links. I have lost several excellent sources of information because the web link broke and I could not find where the content moved to.

The Canadian Medical Association Journal performed a major overhaul of their web site several years ago, and all the links that I had to their content (both on the web and in my EndNote bibliography file) no longer worked. To fix this, I had to do a manual search of each document.

There are several ways to avoid link rot. The first is to plan your website well enough that you won't need to reorganize it a year later. I am not very good at this, myself, I'm afraid and I do move files around from time to time. The second is to redirect requests from an old page to the newer page that replaces it. The DOI represents a third way to prevent link rot.

The DOI was developed as an open standards group, the International DOI Foundation, as a stable way to identify digital files that might move over time. If you know the DOI, you should always be able to find the file. The DOI for the article mentioned above is

- 10.1136/bmj.327.7429.1459

and it is displayed prominently at the top of the web page. You can search for this DOI on the web site [www.doi.org][doi1] or [www.crossref.org][cro1] and the web page will redirect you to the appropriate BMJ page. Actually, it goes to the abstract page

- <http://bmj.bmjjournals.com/cgi/content/abstract/327/7429/1459?view=abstract>

but from there you can find the full text and/or the pdf format of the file if it is available. You can also put the DOI behind the web site dx.doi.org to make a link. So you could put a link to

- [http://dx.doi.org/10.1136/bmj.327.7429.1459][doi2]

on your web page and you are guaranteed that this link will work. Well nothing is perfectly guaranteed, but this link is good as long as the International DOI Foundation is still on the job.

One problem is that some journals will redirect you to the abstract, others to the full text, and still others to a page telling you how you can buy this article. Also, [PubMed][pub1] does not yet include the DOI in its database. Actually, you can find it in the view of the PubMed citation, but it is buried deep and is not easily accessible.

I have not started using DOIs on the links on my web pages, but will do so when I can find an easy way to import DOIs into my EndNote database.

**Additional reading**

- Grogg JE, Tenopir C. Linking to Full Text in Scholarly Journals: Here a Link, There a Link, Everywhere a Link. Searcher, Vol. 8, No. 10 (Nov/Dec 2000). Available in [html format][gro1]. 

[gro1]: http://www.infotoday.com/searcher/nov00/grogg&tenopir.htm

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/DigitalObjectIdentifier.html
[sim2]: http://www.pmean.com/original_site.html

[bmj1]: http://bmj.bmjjournals.com/cgi/content/full/327/7429/1459
[cro1]: http://www.crossref.org/
[doi1]: http://www.doi.org
[doi2]: http://dx.doi.org/10.1136/bmj.327.7429.1459
[pub1]: http://www.ncbi.nlm.nih.gov/entrez/query.fcgi
[wik1]: http://en.wikipedia.org/wiki/Link_rot
