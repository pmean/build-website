---
title: "Several Python resources"
author: "Steve Simon"
source: "http://blog.pmean.com/python-resources/"
date: "2019-05-02"
categories:
- Blog post
tags:
- Python
output: html_document
page_update: complete
---

I have not had the time to learn Python yet, but it is on my short term list of research goals. I attended a very nice talk about Python and data science and tried to get a list of interesting resources in Python from that talk. Here is my incomplete and imperfect list.

<!---More--->

Sphinx is a tool to autodocument your Python code. It is similar in spirit to R Markdown. A tutorial on Sphinx is available in [html format][sph1] on the Code and Chaos blog.

Zeppelin is a notebook for Python code that can also integrate code in Scala, Spark, SQL and many others (but not R, unfortunately). It is similar in spirit to R Studio or Jupyter. Zeppelin is an open source system and documented on the Apache web site in [html format][zep1].

Pyspark is a Python implementation of Spark, a system for distributed computing. It is also an open source system documented on the Apache web site in [html format][pys1].

Pytorch is a Python system for deep learning. Deep learning is a subset of machine learning associated with various neural network systems. It is open source and available on a dedicated website in [html format][pyt1].

Runawayhorse001 is the [github site][run1] for the George Feng, who gave the talk listing all these resources. He is developing some interesting tutorial resources, mostly for Python. He works at [DST systems][dst1], a company headquartered in Kansas City that provides consulting in the financial and health care markets.

I asked a question at the end of this talk about running Pyspark on a cluster of Raspberry Pis and got the suggestion to look at the [Kubernetes website][kub1]. Kubernetes is a system for maintaining containers and providing a portable cloud solution.

Data Science KC, the group that sponsored this talk, has a [meetup page][dat1] and a [slack channel][dat2]. In order to use the slack channel, you need to register as a free user at the [Slack website][sla1].

[dat1]: https://www.meetup.com/Data-Science-KC/
[dat2]: https://datasciencekc.slack.com/
[dst1]: http://www.dstsystems.com/
[kub1]: https://kubernetes.io/docs/home/
[pys1]: https://spark.apache.org/docs/2.1.3/api/python/pyspark.html
[pyt1]: https://pytorch.org/
[run1]: https://github.com/runawayhorse001
[sla1]: https://slack.com/
[sph1]: https://codeandchaos.wordpress.com/2012/07/30/sphinx-autodoc-tutorial-for-dummies/
[zep1]: https://zeppelin.apache.org/
