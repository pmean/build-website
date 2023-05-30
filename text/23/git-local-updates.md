---
title: "Version control basics, updating a local project using git"
author: Steve Simon
date: 2023-05-30
categories:
- Blog post
tags:
- Software engineering
output: html_document
---

This is part of series of articles on how to set up and use version control on your computer. There are many systems for version control. In these articles, you will use a program, git, and a repository, github.

This article explains how to make and track changes to a local project. 

<!---more--->

### Check status regularly

Get in the habit of checking the status of your project regularly. In particular, do this immediately before and after each individual task. Eventually, you will know instinctively what the status is for your project at any given time, but it takes time.

So, before doing anything else in this module, check the status by typing `git status`

### Create a develop branch

```{}
git branch develop
git checkout develop
```


### Update README.md

Let's make some changes to the README.md file. Open the file in a text editor and add the following lines:

```{}
Skills developed
+ Install git
+ Initialize a project
```

Save the file under the same name. Now go to the CLI and run `git status` again.



```{}
git add README.md
git commit -m "Added first two skills to README file"
```

### Details about the changes you've made

### Compare develop branch to main/master

### Make another update to README.md

### Merge changes back to main/master