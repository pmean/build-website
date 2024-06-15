---
title: "Python, Raspberry Pi, and cluster computing"
author: "Steve Simon"
source: "http://blog.pmean.com/python-raspberry-pi/"
date: "2018-09-04"
categories:
- Blog post
tags:
- Cluster computing
output: html_document
page_update: complete
---

I've been experimenting with connecting a small number of Raspberry Pi in a cluster computer, and a good place to start is MPI (Message Passing Interface). Unfortunately, many of the books and websites that I have looked at use examples in C and FORTRAN. These are fine languages, but ones that I am unlikely to need in the future. I want to explore MPI from with a newer programming language, Python. Here are some resources I have leaned on in getting this started.

<!---More--->

First of all, there are two versions of Python in active use, Python 2 and Python 3. Unless you are using a bunch of existing Python 2 code, you might as well stick with Python 3, I've been told.

The Raspberry Pi comes with two IDEs (Integrated Development Environments) for Python, IDLE and Thonny. On the web, you can find a [very terse explanation of IDLE for those who have used other IDEs][idl1] and an [extensive "never programmed before" description for total novices][ras1]. Thonny is a [more recently developed interface][tho1] developed at the University of Tartu, Estonia.

I've decided to ditch both of these and use [Anaconda][ana1] instead for all my Python programming needs. It's a decision I may come to regret, but Anaconda appears to be very popular and has more resources devoted to it. It also appears to be more closely oriented to data science and machine learning applications. Finally, the system for package management, conda, appears to be very simple.

Anaconda includes a Python interpreter and an IDE (Spyder) as well as Visual Studio code, a Microsoft developed IDE. It also has RStudio, an IDE for the R programming language.

There are several ways to get started with Anaconda. I chose a minimalist approach by downloading Miniconda. Minconda provides the package management program Conda mentioned above and very little else. This allows you to install the various components of Anaconda separately. This is a bit slower perhaps, but it gives you the advantage of understanding things better.

I followed the [download instructions for Miniconda on the simoncos github site][min1], but there are lots of others out there. It's worthwhile to review the directions in detail.

    wget http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-armv7l.sh

The wget command retrieves the installation script found on the web. Note that we are using the Linux version of Miniconda (there are also versions of Miniconda for Windows and Mac OS X). Also notice that it's not Miniconda for just any version of Linux, but a Miniconda Linux version for the Armv7l processor.

The Armv7l processor is the heart of the Raspberry Pi and it's worth [reading a bit about it][wik2]. This processor uses a RISC (Reduced Instruction Set Computer) architecture, and while this sounds more primitive than the CISC (Complex Instruction Set Computer) architecture used in many computers. But a RISC architecture is cheaper, lighter, and consumes less power.

    sudo md5sum Miniconda3-latest-Linux-armv7l.sh # (optional) check md5

The sudo command tells your system to treat anything that follows as if it were being run as a superuser (sort of like what administrator privileges are like in the Windows operating environment). The md5sum command takes the file you just downloaded, and computes an [md5 hash][wik1] as a quality check against accidental corruption during download. This is, as noted in the comment, an option and not a required command.

    sudo /bin/bash Miniconda3-latest-Linux-armv7l.sh # -> change default directory to /home/pi/miniconda3

Note that you have to change into the proper subdirectory before running this command.

The bash command runs the shell script that you just downloaded (note the .sh extension). A [shell script][she1] is a sequence of commands, much like a .BAT file in MS-DOS (are you old enough to remember MS-DOS?).

The term bash (short for Bourne Again SHell, an insider homage to [Stephen Bourne][bou1]) refers to a system of commands that are common to almost all Unix systems. It also refers to a command, bash, that runs a shell script containing these commands. This particular shell script installs Miniconda. You might want to peek at the first few lines of this shell script using a command like

    head -100 Miniconda3-latest-Linux-armv7l.sh

but don't try to list everything because the shell script includes several ugly binary files.

    sudo nano /home/pi/.bashrc # -> add: export PATH="/home/pi/miniconda3/bin:$PATH"

The nano command runs a small text editor called nano on a file called .bashrc. You need to add a line of code to this file. The [.bashrc file][bas1] is a hidden system file with commands that load whenever you open up a terminal window.

Finally, restart your Raspberry Pi with the command

    sudo reboot -h now

I'm not sure what the "-h now" option does. It's interesting how this process is forcing me to learn all sorts of things beyond just Python.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/python-raspberry-pi/
[sim2]: http://blog.pmean.com

[ana1]: https://en.wikipedia.org/wiki/Anaconda_(Python_distribution)
[bas1]: https://www.maketecheasier.com/what-is-bashrc/
[bou1]: https://en.wikipedia.org/wiki/Stephen_R._Bourne
[idl1]: http://www.raspberry-projects.com/pi/programming-in-python/general-python-programming/idle-python-programming
[min1]: https://gist.github.com/simoncos/a7ce35babeaf73f512be24135c0fbafb
[ras1]: https://www.raspberrypi.org/magpi/program-python/
[she1]: https://www.shellscript.sh/index.html
[tho1]: https://thonny.org/
[wik1]: https://en.wikipedia.org/wiki/MD5
[wik2]: https://en.wikipedia.org/wiki/ARM_architecture