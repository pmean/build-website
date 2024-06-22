---
title: "Starting a heron-i2b2-analytics repository"
author: "Steve Simon"
source: "http://blog.pmean.com/heron-i2b2-analytics/"
date: "2018-03-29"
categories:
- Blog post
tags:
- Informatics
output: html_document
page_update: partial
---

I am working on a CTSA grant to develop [repeatable downstream pipelines
that directly access i2b2 and CDM](../ctsa-grant/index.html). In order
to promote this work and encourage others to participate, I was given a
repository site on github,
[kumc-bmi/heron-i2b2-analytics](https://github.com/kumc-bmi/heron-i2b2-analytics).
Right now, it is just a shell, but here's what I want to do with it,
short term and long term.

<!---More--->

The first thing is to model the directory structure closely to that
recommended in [Wilson et al. Good enough practice in scientific
computing](http://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1005510).
That means three files, in particular.

README.md. This will give an overview of the project. I like the style
and format of the README.md files used by the
[kumc-bmi/grouse](https://github.com/kumc-bmi/grouse/blob/master/README.md)
as well as the
[kumc-bmi/bc\_qa](https://github.com/kumc-bmi/bc_qa/blob/master/README.md)
repositories, and will probably aim for a mix of those two styles. A
nice model from an external source is the README.md file used by the
[parisk/skel](https://github.com/parisk/skel/blob/master/README.md)
repository.

CONTRIBUTING. This file, according to Wilson et al "describes what
people need to do in\
order to get the project going and use or contribute to it." A nice
model for this file is at the
[opengovernment/opengovernment](https://github.com/opengovernment/opengovernment/blob/master/CONTRIBUTING.md)
repository.

LICENSE. This is already in the repository. We are using the MIT
License, which allows others to use use anything in the repository free
of charge and without any substantial restrictions.

Eventually, I want to add a CITATION file, as well.

Wilson et al suggests a standardized directory structure with src for
source code, and doc for documentation. This repository will probably
not need some of the other recommended directories, at least at first.

The other important thing is to complement rather than duplicate the
[very good documentation about
HERON](http://www.kumc.edu/miea/medical-informatics/heron/heron-manual.html).
This repository talks about applications with direct access to the data
rather than access through i2b2.


