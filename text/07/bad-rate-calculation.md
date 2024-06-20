---
title: Bad calculation of annual rate of return
author: Steve Simon
source: http://www.pmean.com/07/BadCalculation.html
date: 2007-03-15
categories:
- Blog post
tags:
- Wiki pages
output: html_document
page_update: complete
---

The [Chance Wiki][cha1] has a section called "Forsooths." This section presents quantitative errors in the popular press that are self-evident under careful examination. I found an interesting example which I added to [issue #24][cha2].

*Mr. Romney started Bain Capital in 1984 with an initial fund of about \$40 million. During the fourteen years he ran it, Bain Capital's investments reportedly earned an annual rate of return of over 100 percent, potentially turning an initial investment of \$1 million dollars into more than \$14 million by the time he left in 1998.* The New York Times. "In Romney's 2008 Bid, Wallet Opens to the Right." 11 March 2007.

A 100% increase, of course, means a doubling of value. If you doubled in value every year for 14 consecutive years, that would correspond to an increase in value of 2\^14 which would convert one million dollars into more than 16 billion (not million) dollars. Even Hillary Clinton could not get that rate of return in her futures market investing.

If the total change over 14 years was an increase in value from one million to fourteen million, then the annual rate would be 14 raised to the 1/14 power, which equals 1.207. Thus, if your investment increased at an annual rate of 20.7% per year, over fourteen years, you assets would increase in value by a factor of 14.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/BadCalculation.html
[sim2]: http://www.pmean.com

[cha1]: http://chance.dartmouth.edu/chancewiki/index.php/Main_Page
[cha2]: http://chance.dartmouth.edu/chancewiki/index.php/Chance_News_24
