---
title: Steps in a typical data mining model
source: http://www.pmean.com/03/datamining.html
author: Steve Simon
date: 2003-09-22
categories:
- Blog post
tags:
- Broken link
- Data mining
- Incomplete page
output: html_document
page_update: complete
---

I'm not an expert on data mining, but I wanted to outline some of the basic issues associated with data mining problems. This material is based largely on notes that I took during a training class on data mining taught by Richard De Veaux.

<blockquote>

'Ginny!' said Mr Weasley, flabbergasted. 'Haven't I taught you anything? What have I always told you? Never trust anything that can think for itself if you can't see where it keeps its brain.' -- Harry Potter and the Chamber of Secrets, J K Rowling.

</blockquote>

<blockquote>

Statisticians, like artists, have the bad habit of falling in love with their models.* George Box

</blockquote>

<blockquote>

All models should be as simple as possible but no simpler than necessary. Albert Einstein

</blockquote>

<blockquote>

When all you have is a hammer, everything looks like a nail.

</blockquote>

**What is data mining?**

There's a lot of confusing information about data mining. Sometimes, I think data mining is just an excuse for throwing around buzzwords like multilayer perceptron with sigmoidal activation functions. There are several good definitions of data mining on the web: Fayyad, Fayyad, Chaduri and Bradley, Zornes, Edelstein. Typically, data mining uses happenstance data-data that is collected for one use and then applied to another area. The emphasis is usually on prediction although sometimes it is also on understanding the relationships that produce those predictions.

**Why is there so much interest recently in data mining?**

There is a large push for data mining because the price of digital storage is so low and the power and speed of computers is so high. These problems typically have a low signal to noise ratio--there is a lot more data than there is information.

### Steps in a data mining model

A useful algorithm is [CRISP-DM][cri1] (This link is broken).

-   Define the problem;
-   Build the database;
-   Explore the data;
-   Prepare data for modeling;
-   Build the model;
-   Evaluate the model;
-   Deploy the model and results.

### Define the problem

Data mining is NOT a way to bypass an intelligent examination of the data. It is not a replacement for common sense. It does not find answers to unasked questions or to continuously monitor your database for interesting patterns.

You need to have some idea what you are looking for and why before you start the data mining model. Two common approaches to data mining are supervised learning and unsupervised learning.

### Build the database

Data mining is a team effort and you need to have a solid relationship with your IT (Information Technology) group. You should expect that 75% or more of your effort will be in data management.

### Explore the data

[add material to this section]

### Prepare the data for modeling

[add material to this section]

### Build the model

[add material to this section]

### Evaluate the model

[add material to this section]

### Deploy the model and results

[add material to this section]

### Further reading

Antipsychotic drugs and heart muscle disorder in international pharmacovigilance: data mining study D. M. Coulter, A. Bate, R. H. Meyboom, M. Lindquist, I. R. Edwards. British Medical Journal 2001: 322(7296); 1207-9.

A case study of using artificial neural networks for classifying cause of death from verbal autopsy. A. Boulle, D. Chandramohan, P. Weller. International Jounral of Epidemiology 2001: 30(3); 515-20.
    
**Classification and Regression Trees.** L Breiman, JH Friedman, RA Olshen, CJ Stone (1984) New York: Chapman & Hall.
    
**A Practical Guide to Neural Nets.** MM Nelson, WT Illingworth (1991) Reading, Massachusetts: Addison-Wesley Publishing Company.

**Neural Networks for Statistical Modeling.** M Smith (1993) New York: Van Nostrand Reinhold.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/03/datamining.html
[sim2]: http://www.pmean.com/original_site.html

[cri1]: http://www.crisp-dm.org/Process/index.htm
