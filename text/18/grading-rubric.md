---
title: "Grading rubric for computer assignments"
author: "Steve Simon"
source: "http://blog.pmean.com/grading-rubric/"
date: "2018-07-20"
categories:
- Blog post
tags:
- Statistical computing
- Teaching resources
output: html_document
page_update: complete
---

I've been teaching a variety of classes that require students to run a statistical analysis in a package like SAS or R and report the results. There is a tremendous variety of formats that students use, and I thought it would be helpful to offer some guidance. It would save me time in grading, but more importantly it would emphasize that students need to think about what they produce rather than just tossing together whatever comes out of the computer. The five requirements for homework assignments are they be
-   complete
-   concise
-   clear
-   error-free and
-   interpretable.

<!---More--->

**Complete**. You should provide enough detail so that another reasonably intelligent person could review your work and have enough detail that they could replicate your work. That means that you provide a complete description of the data set you are using, and show the code you wrote. These details are best placed in an appendix. For a program like SPSS, where much of the work is often done with menus, you have to make sure that the syntax SPSS uses is included in your output. For SAS, you have the choice of showing the original code or the results of the log window. For R, you can include the code with the output using R Markdown or you can display just the output and include the original code as an appendix.

**Concise**. The flip side of the coin is that you should include only what is really necessary. If you need to display the data you used, display only enough to give a general idea of what your data looks like. In most cases ten rows and five columns is more than enough information. If your program produces more output than you need to address the requirements of your assignment, cut the portions of the output that are unneeded. Most packages, for example, will produce statistics that are needed for comparing complex multivariate models, and if your model is univariate or bivariate, then those statistics just get in the way. If you're not sure if a particular table or graph is important ask me about it rather than put it in with the blind hope that it might convey something important.

**Readable**. Your assignment should be written so that whoever reads it can understand at a glance what was done. This means that your program code, if you have any, needs at least [a bit of documentation][sim3]. Be liberal in the use of indenting and white space for your code. Your data set needs a [data dictionary][dat1]. Please use descriptive names for all your variables. Your graphs and tables need descriptive titles. You should organize your work so that the important information appears on the first page or two. Use full sentences and complete paragraphs to explain what you did or what the output means.

**Error-free**. Your program should work and should not produce any error messages. Don't include a log file that documents your first three failed attempts before the fourth successful run. Warning messages might be acceptable,but if you cannot suppress them, then include an explanation as to why that warning does not invalidate your results.

**Interpretable**. Every piece of output that you include must be accompanied by a simple explanation. If a plot shows a trend, describe that trend. If a table shows a surprising disparity, point out that disparity. Use descriptive language rather than abstract number or letter codes.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/grading-rubric/
[sim2]: http://blog.pmean.com

[sim3]: http://new.pmean.com/structure-for-documentation/
[dat1]: http://dataabinitio.com/?p=454%C2%A0
