---
title: Technology to end spam
author: Steve Simon
date: 2005-03-08
categories:
- Blog post
tags:
- Being updated
- Bayesian statistics
output: html_document
page_update: partial
---
In my job I get a lot of [spam](http://en.wikipedia.org/wiki/Spamming),
partly because I listed my email address on my web site until just
recently. The research community is trying to find technological
solutions to spam (unsolicited commercial email), and some of the
approaches are quite fascinating. The folks at Microsoft have looked at
a system that limits the amount of email that someone can send out in a
single day by asking the sender to solve a moderately difficult
computational challenge for each piece of email sent. Emails sent out
this way would encourage the reader to open up the message, because the
sender expended a moderate amount of effort (ten seconds of CPU time) in
order to get the message to you. Such a system tells you that you are
not just one of a million different recipients of the same commercial
pitch.

The technical details are at

- **[The Penny Black
Project](http://research.microsoft.com/research/sv/PennyBlack/)**.
Birrell A, Dwork C, Goldberg A, Manasse M, Mironov I, Wobber T,
Microsoft Research. Accessed on 2005-02-15.
research.microsoft.com/research/sv/PennyBlack/

Another interesting approach uses Bayesian Statistics to produce a
probability estimate that the message is spam. This approach looks at
words that appear commonly in spam messages and uncommonly in legitimate
messages.

- **[Better Bayesian
Filtering](http://www.paulgraham.com/better.html)**. Graham P.
Accessed on 2004-02-09. www.paulgraham.com/better.html

There is a nice article about email spoofing (making an email look like
it is coming from a different person's account). Spoofing is a way that
spammers hide their tracks and can also be used to try to get someone in
hot water. Spoofing is illegal, but you have to track down the person
who did it, which is not always easy.

- **[Understanding E-mail
Spoofing](http://www.windowsecurity.com/articles/Email-Spoofing.html%20)**.
Shinder D, Published on October 20, 2004. Last updated on October
29, 2004. Accessed on 2005-03-08.
www.windowsecurity.com/articles/Email-Spoofing.html

Further reading about spam:

- **[Why Am I Getting All This Spam? Unsolicited Commercial E-mail
Research Six Month
Report](http://www.cdt.org/speech/spam/030319spamreport.shtml)**.
Center for Democracy & Technology. Accessed on 2003-05-01.
www.cdt.org/speech/spam/030319spamreport.shtml
- **[Welcome to CAUCE!](http://www.cauce.org/)**. Accessed on
2003-02-12. www.cauce.org/
- **[SPAM FAQ or "Figure out fake E-Mail &
Posts"](http://digital.net/~gandalf/spamfaq.html)**. Hollis K.
Accessed on 1997-digital.net/\~gandalf/spamfaq.html
- **[Junkbusters Home Page](http://www.junkbusters.com/index.html)**.
Junkbusters Corporation. Accessed on 2003-02-12.
www.junkbusters.com/index.html
- **[Uniting Against Spam. Working together, we can curtail unwanted
e-mail](http://www.microsoft.com/issues/essays/2003/06-18spam.asp)**.
Microsoft. Accessed on 2003-07-01.
www.microsoft.com/issues/essays/2003/06-18spam.asp
- **[Death to Spam. A Guide to Dealing with Unwanted
E-mail](http://www.mindworkshop.com/alchemy/nospam.html)**. Rimmer
SW. Accessed on 2003-02-12. www.mindworkshop.com/alchemy/nospam.html
- **[The spammers are watching
you](http://www.out-law.com/php/page.php?page_id=pressrele3360&area=about%20%20)**.
Robertson S, Rose C. Accessed on 2003-02-25.
www.out-law.com/php/page.php?page\_id=pressrele3360&area=about
- **A privacy primer for the Web: spam, bread crumbs, and cookies.**
Sikorski R, Peters R. Jama 1998: 279(15); 1219-20.
- **Of Flames, Fan Mail, and Software That Can Tell the Difference.**
Spertus E. The Chronicle of Higher Education 2000; B6.

**Update: September 14, 2017**. I had originally listed some commercial
products here, but it is probably a mistake to talk about these products
without having reviewed them in detail. So I have removed those links.

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/EndSpam.html
[sim2]: http://www.pmean.com/original_site.html
