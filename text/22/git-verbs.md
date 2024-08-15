---
title: "A quick overview of various git verbs"
author: "Steve Simon"
source: new
date: "2022-03-26"
categories: 
- Blog post
tags:
- Software engineering
output: html_document
page_update: complete
---

I am a beginner in using version control, even though I have relied on it for several years now. I'm beginning to encourage others to use version control with joint projects and I realized that I need to explain various concepts in version control to them.

It's sort of like the blind leading the blind, but everyone has to start somewhere. So here is my attempt to explain how to use version control.

I am going to use a program called "git" and a repository called "github" throughout this post. There are other programs (such as subversion) and other repositories (such as gitlab). Once you learn how to use one program and one repository, switching to another should be easy. I say this with very limited experience, however.

There are lots of guides out there. I am drawing some of my information from [a web page][bry01] written by [Jenny Bryan][bry02] who has a ton of information about this topic.

[bry01]: https://jennybc.github.io/2014-05-12-ubc/ubc-r/session03_git.html
[bry02]: https://jennybryan.org/

### Basic setup

You need to [install git][git01] on your computer first. It is an open source program, freely available for download. Git is a command line driven program that you access using the command line prompt in Windows or bash on other computer systems. I will describe how to use git from the Windows perspective, because that it the only system I understand well, but it runs similarly on other systems.

Optionally, you can [install github desktop][git02]. This is strongly recommended for anyone who wants to use version control, but does not want to learn R and RStudio. Github desktop is a graphical user interface that allows you to do many (but not all) of the version control actions available in git without having to learn or remember the exact syntax of the various git commands.

For those who want to use R and RStudio, there is a tightly integrated version of git with RStudio. You should [install R][cra01] and then [install RStudio][rst01] if you have not done so already. Note that RStudio has both free and commercial versions. If you are new to RStudio, it is probably best to start with the free version of RStudio Desktop. Then (after installing git), read about how to [setup the git interface][rst02] within RStudio.

Finally, you should [set up an account on github][git03]. An account allows you to store your programs, with version control, on the cloud. There are free and commercial accounts. If your needs are reasonably modest, you should be just fine with the free version. One warning though. Do not abuse this free service by cluttering it up with large data files. Use github to store and share your source code. A few small data files are probably okay, but avoid storing large data files on github. If you want to share both source code and large data files, there are plenty of options other than github that you can explore. You might skip setting up a github account, if you are working entirely within another person's account.

### Three copies in your version control system

There is a bit of confusion, at least for someone like me, because there are typically three copies of any work that you have set up in a version control system. There's a repository out in the cloud, a cache on your system, and the working copy. You need to synchronize the cloud repository to the cache (and vice versa). But you also need to synchronize the cache and your working copy (and vice versa). The general order of synchronization is

+ Update your cache and working copy from the latest version of the cloud repository.
  + You must get in the habit of doing this before you start programming with your working copy. Otherwise things can get out of sync. If your local version and your cache and the cloud repository get too far out of sync, then you will have to spend a lot of tedious time reconciling the differing versions. 
+ Make changes to your working copy.
  + Now program like you normally do, adding code, testing to see if it works, fixing things, if needed, and then adding more code.
+ Regularly update your cache.
  + As you work on your program, you will reach certain points where you finish one segment of your work and start another segment. This is an opportunity to update your cache and provide a brief bit of documentation about what you just finished.
+ Update the cloud repository from your cache
  + Before you turn away from programming to work on other things like email, make sure that the cloud repository has the latest work from your cache. This only makes sense, of course, if your cache and your working copy are in sync.

### Flying solo

You may wish to try some experiments outside of the scope of the existing cloud repository. You do this because you don't want your experiments to mess up a version that already works just fine. You may plan to integrate your experiments back into the cloud repository. But at other times, you want to diverge permanently from the cloud repository. This could be from a need to develop an entirely new programming project. You plan to use an existing repository as a foundation for something that will eventually stand separately and distinctly from the original work.

### Conflicts

When multiple people work on a project, there is always the chance that some of the changes made by one person overlap with changes made by another person. This happens less often when your code is small and modular, but conflicts are still possible. The people who developed git (and other version control systems) anticipated the possibility of conflicts. 

Conflicts can happen several different ways. In one example, Wilma updates her cache and working copy at 10am, works on coding for most of the day and then updates the cloud repository at 2pm. On the same day, Betty updates her cache and working copy at noon, works on coding for most of the day and tries to update the cloud repository with her work at 4pm. Git notices that the cloud repository that Wilma started with at noon is not the same repository at 4pm, thanks to Wilma's update while Betty was busily coding away on her local computer.

If Wilma makes changes to the Pebbles file and Betty makes changes to the BammBamm file, git will assume that these changes do not conflict. There may be some dependency between the Pebbles and BammBamm files, but a system like git would not be able to detect such a dependency. So git changes the Pebbles file at 2pm and updates the BammBamm file at 4pm. More likely than not this is okay, especially if Wilma and Betty are writing simple modular code.

If Wilma and Betty make changes to the same file, say the Bedrock file, things get dicier. If Wilma's change occurs on the fifth line of Bedrock and Betty's change occurs on the tenth line, then at 4pm, the cloud repository will show a new Bedrock file with wilma's change at line five and Betty's change at line ten. Will things still work? Let's hope so.

If Wilma and Betty both make changes to the tenth line of Bedrock, then git will complain, show a new file with both Wilma's line and Betty's line and ask Betty, as the one who made the later change, to reconcile the conflict. 

Code with a lot of interdependencies can increase the chances for conflicts. Unclear delegation of responsibilities also increases the chances for conflicts. It's better when Wilma works on data analysis and Betty works on data visualization. Finally, when Wilma and Betty both wait a long time before synchronizing their work with the cloud repository, chances for a conflict increase.

If you see a conflict, don't panic. It is often more tedious than troublesome to resolve a conflict.

### git verbs

Most git functions are simple verbs that you use when you first start a project and when you update things. 

#### branch

You "branch" when you want to experiment with something on your computer. This represents a fairly substantial change, one that takes multiple steps and which might temporarily incapacitate a working system. You want to isolate things until you are sure that your experiment actually works.

#### clone

You "clone" when you wish to create a local cache and working copy of a cloud version for the very first time. A clone is typically, but not always, intended when you plan for close synchronization with the cloud version.

#### commit

You "commit" when you wish to update your local cache with changes made to your working copy. A commit is always accompanied with a brief message describing the change that you made.

#### diff

You "diff" when you want to see what changes were made to a file in your working copy compared to the version in your cache.

#### fetch

You "fetch" when you want to update your local cache and working copy from the cloud repository. The "fetch" does not actually change your local cache and working copy. Instead it creates a new branch that you can compare to make sure that your changes and changes made by others to the cloud repository don't conflict.

#### fork

You "fork" when you want to experiment and try new things, and you don't plan to synchronize those changes with the original cloud version. Like "clone", it creates a duplicate of the cloud version on the local cache and working copy and also like "clone" it is only done once. The major difference is that changes to a forked version are not expected to be used to synchonize with the original repository. Think of it as starting on the same road but then taking a different path that diverges from the main road and goes off in a fresh direction.

#### merge

You "merge" when you want to combine a branch back with the main or master version. You also "merge" when you want to insure that the changes you fetched from the cloud repository don't conflict with cache and working copy.

#### pull

You "pull" when you want to both fetch from the repository and merge changes with your cache and working copy. This saves time over running "fetch" and "merge" separately. Try to remember to pull before you start programming. Otherwise you increase the chances for a conflict.

#### pull request

You submit a pull request when you want the owner of the cloud repository to review the work on your branch before merging it. This is a standard way of working when you are part of a large team working on a project, but not part of the trusted inner circle who can make changes without getting prior approval.

#### push 

You "push" when you want to update the cloud repository with changes made in your cache and working copy. You "push" when you are the owner of the cloud repository or when you are part of a trusted inner circle. Try to remember to push your changes when you finish your work.

#### stage

You "stage" when you identify which files are associated with a particular commit. Why not commit everything all at once? Well, sometimes you want to separate out and document changes to a group of files. I generally do not use that level of detail, but it can help when some of the changes fall into one category (such as general maintenance such as catching spelling errors) and others fall into a different category (adding new features). This allows you to develop a better historical record.

### Command line interface

Many git users will rely on a command line interface to interact with git, especially for advanced applications. Others (like me) will prefer to interact with git solely through a graphical user interface. This might be github desktop or the git interface built into RStudio. If you do need to use the command line interface, here are examples of some of the git commands.

### add

`git add <filename>`

will stage a file, making it ready for a later commit.

### commit

`git commit -m "<your commit message>"`

will commit your changes to the local cache.

### init

`git init` will take files in a local directory and create a local cache for them. Nothing will be staged or committed just yet, but this command prepares your computer for those actions.

### status

`git status`

will tell you information about where you are in the various version control steps. For example, it will tell you if any files have been staged and are waiting to be committed.

### Additional resources

Cameron McKenzie. Got fork vs. clone: What's the difference? TheServerSide blog, 2021-07-28. Available in [html format][mck1].

Sagar Khillar. Difference Between Commit and Push. Difference Between blog, 2020-01-06. Available in [html format][khil1].

[khil1]: http://www.differencebetween.net/technology/difference-between-commit-and-push/

[mck1]: https://www.theserverside.com/answer/Git-fork-vs-clone-Whats-the-difference

[cra01]: https://cran.r-project.org/

[git01]: https://github.com/git-guides/install-git
[git02]: https://desktop.github.com/
[git03]: https://docs.github.com/en/get-started/onboarding/getting-started-with-your-github-account

[rst01]: https://www.rstudio.com/products/rstudio/download/
[rst02]: https://support.rstudio.com/hc/en-us/articles/200532077-Version-Control-with-Git-and-SVN

