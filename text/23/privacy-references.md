---
title: Key data privacy references
author: Steve Simon
date: 2023-09-28
categories:
- Blog post
tags:
- Privacy in research
output: html_document
page_update: complete
---

I attended a webinar on data privacy and the speakers opened with a series of seminal articles about how easy it is to re-identify data that you might have thought was properly anonymized.

<!---more--->

-   [Latanya Sweeney][swe1], Simple Demographics Often Identify People Uniquely. Carnegie Mellon University, Data
Privacy Working Paper 3. Pittsburgh 2000. 
    - This paper used U.S. Census data to show that knowing just the birth date, five digit zip code, and gender for an individual was sufficient to allow re-identification of 87% of individuals in the United States.

-   [Arvind Narayanan, Vitaly Shmatikov][nar1], How To Break Anonymity of the Netflix Prize Dataset, arXiv:cs/0610105.
    -   The authors refer to a dataset, the Netflix Prize dataset, that was released to the general public with a call to produce the best data mining model. The data itself did not include information about individuals. But when you combine it with other publicly available information in the Internet Movie Database, you can identify individual subscribers.
    

-   [Melissa Gymrek, Amy L McGuire, David Golan, Eran Halperin, Yaniv Erlich][gym1], Identifying Personal Genomes by Surname Inference. Science, 2013-01-18, Vol 339, Issue 6117, pp. 321-324, DOI: 10.1126/science.1229566.
    -   The common cultural practice of using the paternal surname for children combined with features shared on the Y chromosome (which is passed down paternally to boys) allows you to combine anonymized genomics data with publicly available genomic databases (such as Ysearch and SMGF) to find the surnames of individuals in the anonymized database. You can get even more disclosure of information with knowledge of the year of birth and the state of residency.
    
-   [Yves-Alexandre de Montjoye, César A. Hidalgo, Michel Verleysen, Vincent D. Blondel][yve1], Unique in the Crowd: The privacy bounds of human mobility. Scientific Reports volume 3, Article number: 1376 (2013), DOI: 10.1038/srep01376. 
    -   This article shows that as few as four geopspatial points identified by cell phone towers is sufficient detail to identify 95% of all individuals.

[gym1]: https://pubmed.ncbi.nlm.nih.gov/23329047/
[nar1]: https://arxiv.org/abs/cs/0610105
[swe1]: https://dataprivacylab.org/projects/identifiability/paper1.pdf
[yve1]: https://www.nature.com/articles/srep01376
