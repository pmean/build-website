---
title: "Version control basics, installing git"
author: Steve Simon
date: 2023-05-28
categories:
- Blog post
tags:
- Software engineering
output: html_document
---

This is part of series of articles on how to set up and use version control on your computer. There are many systems for version control. In these articles, you will use a program, git, and a repository, github.

This article explains how to download git. It is loosely based on a [video provided by the nice folks who program git][git1]. If there are problems on this page, blame me and not them.

<!---more--->

Go to the [official download site for git][git2]

![Figure 1. Screen shot of download page](http://www.pmean.com/new-images/23/installing-git-01.png)

and identify your computer system. 

[git1]: https://git-scm.com/video/get-going
[git2]: https://git-scm.com/downloads

Click on the appropriate link and run the downloaded files.

Go to the command line interface (CLI). On a Windows computer, there are several ways to do this. Look for a program called "Command prompt" or an icon like this.

![Figure 2. Icon for command prompt](http://www.pmean.com/new-images/23/installing-git-02.png)

At the CLI, type `git --version`. If it runs, it shows proof that you installed git correctly and it identifies which version of git you are running.

Typing `git` all by itself will show you some of the options available to you with this program. Do not worry that you don't understand many of these options now. Some you will learn in later web pages in this series. Others will not be important until you start doing advanced work with git.

Try exploring some of the help guides.  You can get a list of all guides with `git help -g`

Take a look at 

+ everyday,
+ faq,
+ glossary, or
+ tutorial

If you understand less than 1% of what is in these guides, you are normal.

### Warning

In your explorations, you may sometimes be placed inside an editor, vi, that comes with the CLI. If you find yourself "stuck" and unable to type any CLI commands, try typing the single letter "q". If that doesn't work, close the CLI and then re-open it.

### Setting up the configuration file

You should store information about yourself in the git config files. To get a list of the current configurations, type `git config --list`.

Add your name and email address with

```{}
git config --global user-name 'First-name Last-name'
git config --global user-email 'email@umkc.edu'
```

Rerun `git config --list` to show these additions.

Identifying your name and email is important if you work with a team of other programmers. This will allow everyone to see who is making what changes where and when.

The configuration files are hierarchical with information stored at the system, global, and local level. Information stored at the system level is applicable to all users on a computer. Information stores at the global level is specific to you, a specific users on the computer. For some computers with a single user, there may not be any practical distinctions between the system and global levels.

The local level stores information specific to a particular directory on your computer. This will also be synonymous with a particular remote repository (more details about remote repositories will come later).

If there are discrepancies, the local level takes priority over the global level and the global level takes priority over the system level.

Don't worry too much about these distinctions for now.

### Initializing a folder

Move to the folder where you want to store your first version controlled folder. A logical location would be under your documents folder. On my computer, you would move to this folder by typing `cd c:/Users/steve/Documents` though it would be different on your computer. Then on the CLI, type `git init project1` where `project1` could be any name you like.

This creates an almost empty folder with some bookkeeping information stored in a .git subfolder. You might want to peek at some of the files in this folder. They are all simple text files, so you can open them in notepad or your favorite text editor.

### Creating and updating files

Most programming projects will have a subdirectory structure with data stored in a `data` folder, programs stored in a `src` folder, and output stored in a `results` folder. For very small projects, you may not need this. But every programming project, big or small should have a README file. Sometimes this file has a `.txt` extension, but I recommend that you use an `.md` extension for this file.

So create a file, README.md, using notepad. For now, keep the file short and simple.

```{}
## Project 1

This is a project to test the features of version control.
```

Save the file. Now type `git status` on the CLI. You will see that git has noticed something. It warns you that README.md is "an untracked file" and recommends that you use `git add` to track it.

So, type `git add README.md` on the CLI. Now if you check in with `git status`, you will see that this file is in the list of changes to be committed.

You tell git to update the folder using the `commit` command. Every commit command requires at least a brief message. When you do this regularly, you create a historical record of how your directory has changed over time.

Scott Munro, author of the [XKCD comic strip][xkc1], has a humorous take on these messages.

[xkc1]: https://xkcd.com/

![Figure 3. Carton about commit messages](https://imgs.xkcd.com/comics/git_commit.png)

Here's another take on git from Scott Munro.

![Figure x. Cartoon about fixing git errors](https://imgs.xkcd.com/comics/git.png)

Your first message can be something simple like "Initial commit" or "Starting new project". How you define later commit messages will depend on what practices the others on your research team want.


and type `git add README.md` and `git commit -m"Initial commit"` on the CLI. The first command "stages" the file, making it ready for version control. The second command places the staged files into version control. From this point onward, you will be able to update this file and other files in your folder. You can also "undo" changes that you have made by reverting to a previous version.
