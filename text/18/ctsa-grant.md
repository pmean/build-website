---
title: "My work on a CTSA grant"
author: "Steve Simon"
source: "http://blog.pmean.com/ctsa-grant/"
date: "2018-01-26"
categories:
- Blog post
tags:
- Data science
- R software
- SQL
output: html_document
page_update: partial
---

I'm on a [Clincal and Translational Science Award
(CTSA)](https://en.wikipedia.org/wiki/Clinical_and_Translational_Science_Award)
research grant ([5UL1TR000001-05, formerly
1U54RR031295-01A1](https://projectreporter.nih.gov/project_info_description.cfm?aid=8869065&icde=37857866&ddparam=&ddvalue=&ddsub=&cr=1&csb=default&cs=ASC&MMOpt=)),
which is pretty cool. My name is even mentioned a few times in the
grant. I thought that as I plan what I would do for this grant, I would
see what the grant promised and write down what, exactly, that those
promises mean. As I talk with various people (especially [Russ
Waitman](http://www.kumc.edu/ea-mi/faculty-and-staff-directory/director-of-medical-informatics-russ-waitman-phd.html),
who is supervising my work on this grant), I will revise and update my
plans. Still, I thought it would be valuable to put some thoughts down
now, both to help me focus on what I should be doing and to offer an
early draft of those ideas to the various people that I will end up
interacting with.

<!---More--->

First, I should note that my name appears in the grant bibliography four
times. I'm not first author on any of these, but I'm never first author.
Two of the publications are with Janette Berkley-Patton, and related to
some work I had done with her on community-based research. That's going
to be an important part of this CTSA grant, but one that I will not be
as involved in as I might like. There's only so much time in the day,
and I have made an effort to focus on Informatics research. I'm also on
a couple of publications with Byron Gajewski and Jiang Liu that talk
about [accrual models](../tag/accrual/index.html). I plan to work on
these as well, but not for the CTSA grant.

What I will be working on is first described on page 35. Along with [Mei
Liu](http://www.kumc.edu/ea-mi/faculty-and-staff-directory/assistant-professor-mei-liu-phd.html),
I am developing

"repeatable downstream analysis pipelines that directly access i2b2 and
CDM."

So let's parse this statement carefully because it forms the foundation
for most everything I talk about here.

"repeatable downstream analysis pipelines that directly access **i2b2**
and CDM."

First, i2b2 is an open source software system that serves as a
repository for de-identified data from the Electronic Health Record
(EHR) for various medical institutions. The acronym stands for
Informatics for Integrating Biology and the Bedside. It is run by a
[consortium in Boston](https://www.i2b2.org/about/index.html), and the
software is very popular among medical researchers. A nice [FAQ at
Cincinnati Childrens Hospital](https://i2b2.cchmc.org/faq) gives a
non-technical overview of i2b2.

Now i2b2 is not the same thing as [Epic](http://www.epic.com/) or
[Cerner](https://www.cerner.com/). Those are the EHR systems used for
day-to-day clinical operations. Even if they give me access to those
systems, and they wouldn't in a million years, I don't want to touch the
Cerner or Epic data. These systems are optimized to handle questions
like "I'm about to discharge John Doe from the hospital. What do I need
to know about his recent gall bladder surgery so I can decide what
medications to send him home with?"

The i2b2 system imports data from Cerner or Epic, strips off any
personal identifiers as best as it can, and does further actions like
date shifting to better improve the confidentiality of the patients.
They do such a good job of this, that most Institutional Review Boards
(IRB) have designated any research studies involving i2b2 to be exempt
from IRB review. You need to be cautious here. While all the obvious
personal identifiers have been stripped away, a clever person could, if
they wanted to, find a way to identify someone in the i2b2 system. So
you have to sign a statement promising that you won't try to re-identify
anyone in this de-identified database.

You lose some information in the process of de-identification, but it is
still a very rich data set, especially for longitudinal questions. But
you should always keep in mind that when a health care professional
enters information into Cerner or Epic, they don't do it while thinking.
"Gee, I better put this information in such a way that Steve Simon will
be able to use it for some fascinating data analyses." No, they're
entering the data to improve patient care. So i2b2 data has the hallmark
characteristic of all secondary data analyses. When you use i2b2 data,
you are taking information entered for one purpose and re-purposing it
for your research needs.

Well, four paragraphs later, and we know understand just one word in
that ten word quote. What's next?

"repeatable downstream analysis pipelines that directly access i2b2 and
**CDM**."

What is CDM? For the longest time, I thought that CDM and i2b2 were the
same thing. They're not.

CDM stands for Common Data Model. It is a standard developed by [PCORnet
(The National Patient-Centered Clinical Research
Network)](http://www.pcornet.org/about-pcornet/) to facilitate sharing
data across all the research sponsored by PCORNET. You can look at the
descriptions of
[i2b2](https://academic.oup.com/jamia/article/17/2/124/2909101) and
[CDM](http://www.pcornet.org/wp-content/uploads/2018/01/PCORnet-Common-Data-Model-v4.0_Specification.pdf)
and compare them yourself. They are similar in spirit, but it seems to
me that CDM is more detailed and elaborate than i2b2.

BUT...

(and this is important to remember) the data that feeds into i2b2 and
CDM is Epic data or Cerner data or data from some other EHR vendor is in
a proprietary format and needs to be shoe-horned into the i2b2 or CDM
format. This involves a lot of compromises beyond just the
confidentiality issues. One thing I'd like to do, once I understand the
EHR better, is to suggest improvements in the shoe horning process. I
guess the technical term for this is [ETL (Extract, Transform, and
Load)](https://www.sas.com/en_us/insights/data-management/what-is-etl.html).
This will always be an imperfect process because we are re-purposing,
but there is some potential for improvement. That's not part of my role
in the CTSA grant, by the way, but one area I'm very interested in
anyway.

"**repeatable** downstream analysis pipelines that directly access i2b2
and CDM."

The adjective "repeatable" is an important one. I want to develop a
process that has value beyond the particular problem I am solving. I
want a model that others can follow that answer other questions. Also,
the group I am working with is very big into reproducible research and
insists on things like version control for all their projects.

"repeatable downstream analysis pipelines that **directly access** i2b2
and CDM."

The ability to access the data directly is important to my work. The
i2b2 system is very good for addressing focused research questions. It
is fast and easy to use. It encourages exploration. But for the
application I was most interested in, a data mining application, it is
much better to have direct access to the underlying data. for data
mining, you need to pull all of the information from the EHR for a well
defined subset of patients. That means every diagnosis
([ICD](http://www.who.int/classifications/icd/en/)) code, every
procedure ([CPT](http://www.who.int/classifications/icd/en/)) code,
every lab test ([LOINC](https://loinc.org/)) ordered, every drug
([NDC](https://www.fda.gov/Drugs/InformationOnDrugs/ucm142438.htm),
[RxNorm](https://www.nlm.nih.gov/research/umls/rxnorm/overview.html))
administered, and so forth. You also need access to the metadata. I had
to learn a bit about SQL to do this, but SQL is a pretty easy language
to pick up, at least for the sort of tasks that I was interested in.

"repeatable **downstream analysis pipelines** that directly access i2b2
and CDM."

This is the last phrase, but it is the one that gives the best hint at
what I am hoping to achieve. The noun pipeline and adjective downstream
means that the information is flowing from one location to another. I'm
not interested in building something to replace i2b2 or CDM but rather
something that sits on top of these systems and pulls information needed
for analysis. In my case, it is a particular type of analysis, [data
mining](https://docs.oracle.com/cd/B28359_01/datamine.111/b28129/process.htm#DMCON002).
I believe that with the right set of software tools, I could make mining
of the electronic health record a lot easier and more efficient.

So what, exactly, would this downstream analysis pipeline do? It is way
to early to say for sure but I want something that will work not just
with the i2b2 database at KUMC, but with any database conforming to the
i2b2 or CDM standards. I want something that can move data into R, and
once it gets into R from there to other packages like SAS, Stata, and
SPSS. I want to optimize the process of pulling data, because the
current SQL code that I use relies on some [fairly fragile
self-joins](http://sqltouch.blogspot.com/2013/07/self-join-incurs-more-io-activities-and.html).
I want to utilize the [sparse matrix
format](https://www.geeksforgeeks.org/sparse-matrix-representation/)
that is [available in
R](http://www.johnmyleswhite.com/notebook/2011/10/31/using-sparse-matrices-in-r/).
I want to be able to examine hierarchical relationships within various
diagnostic, procedure, and drug codes using [information in the metadata
of the i2b2
standard](https://community.i2b2.org/wiki/display/DevForum/Query+Building+from+Ontology).

In order to develop a downstream analysis pipeline, I need to talk to
some people who are familiar with i2b2 databases at places like
Children's Mercy Hospital, Saint Luke's Hospital, and Truman Medical
Center. I need to understand the types of research they are interested
in, how they interact with i2b2, and what enhancements they want.

There are other things I'm being asked to do for the CTSA grant, and
I'll parse out their meanings in future blog posts. But I'll put them
here just so I don't forget about them. These are on page 36 of the
grant.

-   data quality and profiling; sharing quality metrics (where
    appropriate) and providing capacity to develop added data quality
    measures for investigators on a fee for service or co-investigator
    basis;
-   analytic methods to determine "fit for use" for trial and studies as
    data sources increase; and
-   machine learning and knowledge discovery application and
    development.

This last bullet is a task that I share with Dr. Liu.


