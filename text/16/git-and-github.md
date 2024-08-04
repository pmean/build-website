---
title: "Using version control through git, github, and R Studio"
author: "Steve Simon"
source: "http://blog.pmean.com/git-and-github/"
date: "2016-04-17"
categories: Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

I'm definitely "old school" when it comes to programming, but there comes a time when even this old dog needs to learn a new trick. I decided yesterday to use version control for my own R programs. Nothing for clients, mind you, because of confidentiality concerns, but the R code that I use to develop teaching examples is certainly fair game. I'm not totally clueless on version control because of my work for the Greater Plains Collaborative, but it's a different thing to do it totally by yourself. Here's a brief outline of what I needed to do to get version control up and running.

<!---More--->

You can set up version control entirely on a single computer, but there are lots of advantages to run version control on the cloud. So I went to [www.github.com](www.github.html) and signed up for a free account. If you have really huge requirements or if you need private repositories, you might think about getting a paid account.

There's a brief tutorial in github that has you create a simple repository with a single very brief file. You make some changes, and save it as a new branch. Then you issue a pull request to merge the branch back with the main version. I'm not totally new to version control, but the brief tutorial was still helpful. I also needed to install a version control program on my computer, git, that interfaces with github (and with R Studio). I went to <https://git-scm.com/downloads> to do this.

Then I logged into github and found the "+ New repository" button. After clicking on it, I named the repository (single-imputation), and selected the Creative Commons Zero v1.0 license. There are other licensing options, mostly of the open source or public domain variety, but you don't have to commit to any particular license as this step is optional.

Then I uploaded a program to the repository (impute.Rmd). There were a few other files, .gitignore, LICENSE, and README.md, that github placed in the repository for me. I made some changes to README.md, just because. You can put anything in this file, but the recommendation is that you should specify what your program does and what it needs to run properly in your README.md file. Then I opened up R Studio and tried to open a new project (File | New Project from the menu) and specified that I should create the new project from version control. It then asked me which program I was using for version control. It didn't work the first time because I needed to restart R Studio after I installed the git software.

This was easy to fix, but it didn't work the second time either. I didn't put the https:// in front of my git repository. Then I forgot to include the subdirectory. Phew! Nothing serious, just tedious, and it's actually working right now. Hooray! When you make a change and want to update version control, you click on the git tab on the window in the upper right corner.

Click on the file that was modified, peek at the differences between the two files, and then briefly describe the changes in the commit window before clicking on the commit button.

Before I could commit the changes, I had to modify the global configuration file to list my proper name and email address. It was easy on my first computer, not so easy on my second. For some reason, I got stuck in a Unix-like editor called vim, which is kind of like one of those awful phone trees that you get trapped in when you call an 800 number.

A major reason for version control, as I understand it, is that once you have a working program, you don't want to break it with new enhancements. Test out your enhancements on a separate branch, and then if you are happy, merge the enhancements back in with the original program.

The other big reason for version control is a bit more obvious. If you make changes and don't like the changes, you can easily revert to the earlier code. Or you can compare the new code and the old code to figure out where you started programming in La-La land. Since version control is in the cloud, you can easily switch from computer to computer. I had been using Dropbox and Amazon Web Services to facilitate work across multiple computers, but it doesn't hurt to have another option at your disposal.

Finally, github allows you to easily share your code with anyone who might be interested. Your work might be such a narrow niche that only two or three other people in the entire world would be interested in your code, but for those two or three people, github is a godsend.

Now before I used version control, I did an internal numbering system. My first program was something01.txt and when I had anything other than a trivial change, I saved it as something02.txt, and so forth. If I was working with a client, I would joke about how when we got to something99.txt, we would have to quit and publish. I don't think I ever got above 60, to be honest.

I'm still getting used to version control, but it's not all that hard even for an old dog like me.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/git-and-github/
[sim2]: http://blog.pmean.com
