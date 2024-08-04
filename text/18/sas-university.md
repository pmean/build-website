---
title: "SAS University. It's SAS and it's free"
author: "Steve Simon"
source: "http://blog.pmean.com/sas-university/"
date: "2018-01-12"
categories: Blog post
tags:
- SAS software
output: html_document
page_update: complete
---

I am teaching a class, Introduction to SAS, that I helped design, but one where another faculty member did all the heavy lifting. I used to teach SAS classes, and I even helped organize a regional SAS conference, but stopped abruptly in 1998. So I'm relearning SAS and one thing that is helping a lot is a product called SAS University which allows you to use SAS for non-commercial purposes for free. Here's how SAS University works.

<!---More--->

SAS Institute has a [nice overview of this software][sas1]. It is, as expected, going to stress the positive and downplay the negative, but it is still worth reading. The also offer an online forum, [SAS Analytics U][sas2], and a book published by SAS Press, [An Introduction to SAS University Edition][sas3]. SAS University requires a virtual computer, and you an set it up using a special virtualization software. You can run [SAS in the cloud][sas4] through Amazon Web Services (AWS).

I choose to use virtualization software on my computer and selected their recommended solution, Oracle VirtualBox for Windows. If you are already using a different virtualization program like VMware Workstation Player, then that should work also. The virtualization software is different, of course, if you are on the Mac or Linux, and I cannot comment intelligently about either of these, except to say that it looks a bit easier than on Windows.

I'll probably experiment with AWS and will report on this blog once I get it working.

The second step is to set up a folder for SAS University. It can go anywhere and have any name, as long as it has a subfolder called "myfolders". This folder is your portal between your local computer and your virtual machine. To import data to the virtual machine, move it into myfolders. Any output that you create in the virutal machine is available outside the virtual machine via myfolders.

After you have your virtual machine software set up, download the SAS University vApp. Note the clever contraction for virtual application.

Then you have to tell the virtual machine about your wonderful vApp and let it know that the directory where you placed the myfolders subdirectory is designated as a shared folder. You don't have to have a shared folder, but it makes life a lot easier.

Then start up your virtual machine and start the SAS vApp withing the virtual machine. You'll get an informational window that needs to stay open until you're done with SAS.

One last thing. You access your virtual machine through your web browser. Point your browser to http://localhost:10080. You get to choose between SAS Studio and [Jupyter notebooks][sas5]. I'd recommend starting with SAS Studio. It very closely mimics the look and feel of the regular SAS product. If you're comfortable with Jupyter, you may switch to that interface.

So what are the downsides to using SAS University?

First, you cannot use it for commercial purposes. It's great for learning SAS, but don't try to use this to solve big business problems.

Second, it is not quite like using SAS itself, but it does come very close.

Third, there's a layer between you and SAS that will sometimes limit you or slow you down. While you are inside the virtual machine, you are blind to everything that is on your computer except the stuff that is stored in myfolders.

Fourth, you don't get the complete SAS product. It does come very close. The one thing that you will miss is SAS/Graph. That doesn't mean that you can't do graphics, but it does mean that you will create graphs differently with SAS University than with SAS itself. I'm in the process of exploring this further.

There are upsides as well.

First, it gives you access to SAS where you might not normally have it. I can run SAS from my desktop computer at UMKC but if I want to run SAS from my laptop, I'm stuck using a VPN (remote access) connection. SAS University allows me to run SAS without having to rely on remote access.

Second, SAS University allows you to experiment with Jupyter notebooks. This is a completely different way of interacting with SAS. You may hate it or you may love it, but it represents an option, and extra options are never bad. Jupyter has a markdown interface that allows you to intersperse program code and program output with nicely formatted documentation. There's a similar interace to SAS called [SASweave][sas6] that you might also consider, but SASWeave is more of a product for people who already have a commercial SAS license and want to explore markdown or who want to more closely integrate SAS and R. Both Jupyter and SASweave represent a [stylistic approach called literate programming][sas7].

I'm a big fan of literate programming and I'll try to write about it on my blog.

Third, SAS Studio provides a nice menu driven approach for generating SAS code. I'm not a big fan of a menu driven interface to SAS, but it is an extra option that some people may really appreciate.

I'll try to post some simple SAS University examples on my blog as I learn and try new things.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/sas-university/
[sim2]: http://blog.pmean.com

[sas1]: https://www.sas.com/en_us/software/university-edition.html
[sas2]: https://communities.sas.com/t5/SAS-Analytics-U/bd-p/sas_analytics_u
[sas3]: https://www.sas.com/store/books/categories/getting-started/an-introduction-to-sas-university-edition/prodBK_68380_en.html
[sas4]: https://aws.amazon.com/marketplace/pp/B00WH10IKW
[sas5]: http://jupyter.org/
[sas6]: http://homepage.divms.uiowa.edu/~rlenth/SASweave/
[sas7]: https://en.wikipedia.org/wiki/Literate_programming
