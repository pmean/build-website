---
title: An alternate way of viewing accrual
author: Steve Simon
source: http://www.pmean.com/07/AlternateAccrual.html
date: 2007-10-03
categories:
- Blog post
tags:
- Accrual problems
output: html_document
page_update: complete
---
I was talking about a project with a fellow in Emergency Medicine and during the discussion realized a different way of looking at accrual in a clinical trial. She plans to look how accurately EKGs are read by physicians in the Emergency Room. I showed her some of the work that Byron Gajewski and I had done on planning and monitoring accrual rates. She pointed at that accrual was not a problem here in that the number of EKGs that are processed in the ER is known with very high precision. The problem, of course, is that the physicians who participate in the study have to fill out a small amount of additional paperwork for the research. While this is not an intrusive amount of work and she is going to work hard to promote this research project, there will some physicians at some times who will not fill out the extra research paperwork, or will fill it out so incompletely as to make the EKG unusable in the research. The ER is a busy and hectic place and it is difficult to get complete data, even when the ER doctors are trying their best to help with the research.

You can actually monitor accrual in this case, and it requires that the date and time of each EKG be entered into the system and that an indicator variable is entered to denote whether the EKG had sufficient information to be used in the research study versus an insufficient amount of information.

Here's an example of what this type of data might look like (this is simulated data).

```
01-OCT-2007 03:36:00 0
01-OCT-2007 17:02:24 1
02-OCT-2007 15:50:24 1
03-OCT-2007 00:00:00 1
03-OCT-2007 04:04:48 1
04-OCT-2007 08:52:48 1
04-OCT-2007 19:12:00 1
05-OCT-2007 09:21:36 1
05-OCT-2007 10:33:36 1
05-OCT-2007 13:12:00 1
05-OCT-2007 16:48:00 1
05-OCT-2007 17:45:36 0
06-OCT-2007 17:02:24 1
06-OCT-2007 21:07:12 1
08-OCT-2007 03:21:36 1
10-OCT-2007 18:43:12 1
11-OCT-2007 15:21:36 1
11-OCT-2007 22:33:36 1
13-OCT-2007 05:31:12 1
13-OCT-2007 06:28:48 1
13-OCT-2007 09:07:12 0
14-OCT-2007 16:48:00 1
14-OCT-2007 23:02:24 1
15-OCT-2007 05:02:24 1
16-OCT-2007 03:36:00 1
```

There are several ways to approach this data, but a very simple method would be to count the number of EKGs between successive failures to complete the proper paperwork. The values would be

```
  1
 11
  9
  4+
```

The goal then becomes to model these waiting times. This relates closely to some other work I am thinking about, the tracking of adverse events in a clinical trial. You could envision a failure to fill out the extra paperwork as an adverse event of sorts, and these data then provide you with a way to estimate the number needed to harm (NNH).

I'll try to work out some of the mathematical details of this situation when I have time.

You can find an [earlier version][sim1] of this page on my [old website][sim2].

[sim1]: http://www.pmean.com/07/AlternateAccrual.html
[sim2]: http://www.pmean.com
