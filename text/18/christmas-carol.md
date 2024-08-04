---
title: "Sentiment analysis of A Christmas Carol"
author: "Steve Simon"
source: "http://blog.pmean.com/christmas-carol/"
date: "2018-02-13"
categories: Blog post
tags:
- Text mining
output: html_document
page_update: partial
---

I was at an interesting talk about sentiment analysis and decided to try
something simple myself. Sentiment analysis is a text analytics method
that compares text data with a list of words with positive or negative
sentiments. The relative frequency of the positive or negative words is
a crude measure of the general sentiment of the text item. I ran a
sentiment analysis on the text of the famous Charles Dickens novel, A
Christmas Carol.

<!---More--->

You can get the [code for my sentiment
analysis](https://github.com/pmean/text-mining-examples) on my github
site.

Running a tool like sentiment analysis is always difficult, but
especially for a work of literature. The rule for good writers, I hear,
is that you are better of showing something than saying something. So
you get a sense of dread watching Scrooge's possessions getting sold off
that is much stronger than the impact of individual words. Even with
this limitation, sentiment analysis can reveal some interesting
patterns.

Here's a graph of the analysis.

![Graph of sentiment
analysis](http://www.pmean.com/18/images.sentiment.html)

The individual dots represent a sentiment value for the individual
paragraphs. Notice how you see a mix throughout the book. Every chapter
has a large number of paragraphs with positive sentiment values and a
large number of paragraphs with negative sentiment values. The blue
line, a smooth curve, shows that the balance of positive and negative
paragraphs swings back and forth.

The first chapter, for example, starts out slightly positive. This may
represent Scrooge's smug satisfaction with himself. The text turns
negative about halfway through. This is when Scrooge goes to his home,
encounters a strange vision on his door knocker, and then meets the
ghost of Jacob Marley.

The next chapter, representing Scrooge's encounter with the Spirit of
Christmas Past, is a fairly even mix. Recall that Scrooge is
encountering memories of his early years, and there is a mix of
nostalgia and regret throughout.

The third chapter, representing Scrooge's encounter with the Spirit of
Christmas Present, starts out positively, with Scrooge seeing the
happiness in the Cratchet family and at his nephew's party. But the mood
turns very dark, especially at the end of the chapter when Scrooge meets
the two children, ignorance and want, hiding under the spirit's cloak.

The fourth chapter should be the one with the most negative sentiment,
but perhaps the imagery and symbolism is not captured sufficiently by
the mere words on the page.

The last chapter, where Scrooge awakens and realizes that he has been
given a fresh chance at life, is clearly filled with positive
sentiments.

If I get a chance, I want to experiment with an interactive display
which allows you to hover over a point and see the full paragraph of
text associated with that point.


