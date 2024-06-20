---
title: What I'd look for in a new computer
author: Steve Simon
date: 2011-05-16
categories:
- Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

I am hardly an expert on computing, but I do try to help out when someone asks me about what sort of computer they should buy for statistical analyses. Here are some general guidelines that I offer. I'm assuming that you want a system that can run Windows and the advice here is not all that helpful if you are using the MacOS or Linux.

<!---More--->

Hard drive: I have a solid state drive (SSD) on my new 16 inch laptop, and I love it. The capacity is a bit small (256 gigabytes) and it is VERY expensive. But my laptop boots so much faster. It's probably faster in other things as well, but this is less easy to notice and to benchmark. I want to upgrade my 10 inch laptop to SSD when I get the chance.

If you need both high storage capacity and high speed, you should consider a RAID controller. RAID stands for Redundant Array of Inexpensive Disks, and it allows you to read/write simultaneously to multiple hard drives. This simultaneity allows you to create extra security through redundancy. If you have two drives on your RAID controller, this is mirroring, storing the exact same data in the exact same location on each of the two drives. With three or more drives, the RAID controller uses a parity check on one of the drives to allow simple and fast reproduction of the information on a failed drive. One of the of one of the drives in your system.redundancy by storing redor to speed up access.

Another aspect of RAID drives is striping. There's a limit to how fast a hard drive can provide data to your central processing unit (it depends on how fast the disk spins, among other things). You can data from your system faster than the speed of any individual hard drive if you request data in sequence from each of the drives. That way, one drive gets to "catch its breath" while the other drives are providing data.

From my perspective, the redundancy provided by parity is less critical. You need that level of security in other areas, such as a web server that needs to be available 24/7. The extra speed provided by striping, though, is a very nice benefit for statistical analysis.

The hard drives in a RAID system are inexpensive (hence the I in the acronym), though the RAID controller may add a bit to the price. The nice thing about RAID is that it is easily expandable and can provide very large capacities (much larger than an SSD) and fast speeds (though not as fast as an SSD).

RAID only makes sense for a large desktop computer, as the compact form desktops and the laptop computers only have physical room for one or maybe two hard drives.

If you don't want something as exotic as SSD or RAID, then consider a faster rotational speed for your hard drive. All other things being equal, a drive with 7200 rpm (rotations per minute) will get your data to the central processing unit faster than a 5400 rpm drive. If your data is one the opposite side of the drive, it takes less time for that drive to spin around to the read head of the drive.

There are several controllers for hard drives and you want to make sure that the controller and hard drive are appropriate for one another. As I understand it, most controllers use a standard called SATA (Serial ATA, where the ATA stands for AT Attachment and the AT is an indirect reference to the IBM PC/AT computers built from 1984 to 1987). SATA is better than the older technology (Parallel ATA or sometimes just ATA). The guidelines here are rather complex (there are several generations of SATA, for example) and you should get advice from an expert.

The capacity of your hard drive depends a lot on what you are doing. For a very small notebook, you can't get huge capacities, but try to get at least 120 gigabytes of storage. The operating system and your programs will probably use much of this space. For a larger laptop or a desktop, allow for a few hundred gigabytes of programs, depending on what you are running. Then add up all the storage for your data files. Beyond that you want a fair amount of free space, about 5 or 10 times the size of the largest file you will be working with. If your hard drive doesn't have that free space, then all the temporary files you create during data analysis will come close to filling your hard drive. Your files will not be easily stored in contiguous blocks, leading to slowdowns and greater chances for lost data.

Graphics: There are two issues with graphics: the size of your monitor and the number of pixels that your system can display. With the recent versions of Windows, anything less than 1024 by 768 pixels will have trouble displaying certain dialog boxes. More is better though. Even for small screens, a large number of pixels will be easy on your eyes. It also will allow you to better navigate through full page and multiple page layouts in your word processor. Even when the text is so small that it is unreadable, a few extra pixels will allow you to catch awkward page breaks and see how the graphics fit on your page.

The size of the laptop is a critical choice. You have to decide what size screen you are willing to lug around. I have two laptops. The first has a 10 inch screen. It is way too small from a productivity viewpoint, but I can carry it easily with me to meetings. I bring it to lunch when I'm eating by myself so I can get a bit of extra work done. Nothing aids your digestion more than a complex data analysis. It also travels very well, both in fitting easily on a small carry-on bag and being usable on the airline tray table even when the @#$%^&* person in front of you is reclining.

My home laptop is 16 inches and it is pretty heavy. I like being able to move it from room to room. So as I'm watching my lunch cook on the stove, I can catch up on a bit of email. I can also lug it into work when I need to coordinate things between it and my work desktop. I spent a bit extra to get 1920 by 1080 pixel resolution and the extra pixels are really helpful.

My 10 inch laptop has a multi-touch screen and it's not as nicely implement as they do things in the Apple world, but it still comes in handy from time to time. I can tap on the screen in place of using a mouse to get rid of those annoying pop-ups and dismiss those unneeded dialog boxes. I also have a program that will allow you to markup PDF files (PDF Annotater), and the touch function comes in quite handy here. But things like resizing a graphic image or web page don't seem to work as well as in the Apple world.

My desktop computer has two monitors and I consider this the bare minimum for a desktop. My monitors are 24 inch, but dual monitors are very helpful even for 17 inch or 14 inch monitors. I turn my monitors to portrair orientation, and this allows me to see a full page and a half of word processing files, emails, or data analysis output. Once in a while I wish I had them in landscape mode, especially for those very wide spreadsheets and data files, and while you can re-orient the monitors, this takes to much time.

When I get the chance I will upgrade to a four monitor system. Even with two 24 inch monitors, I end up with a lot of overlapping and hidden windows. When you are doing data analysis, you want to be able to see the program, the output, and the graphics window simultaneously. Placing each of these on separate monitors is easier and faster than resizing things so that the program is on the top half of one screen, the graphics are on the bottom half of another screen, and so forth. With four monitors, I'm hoping that I'll keep all the major pieces of the data analysis maximized within a monitor and have a monitor left over to watch my email.

Central processing unit: The smaller laptops (the netbooks) usually limit you to a slower low power processor. But if you have a bigger laptop or a desktop, you have a fair amount of latitude to chose among processors. It used to be that the speed of the processor was your indication of how fast you could compute, but these days, it is the number of processors that gives a better indication. Choose a dual core (two processors on a single chip) or a quad core (four processors on a single chip) if you can. On some desktop systems, you can have mutliple chips, leading to configurations like three quad core chips for a total of 12 processors.

The extra processor(s) are not always guaranteed to run things faster. Certain software programs, such as Stata and the Revolution Analytics enhancements to the R package, will take good advantage of these extra processors. Overhead, however, will keep you from realizing a 12 fold increase in speed with 12 processors.

I have not tested any multiprocessor software yet with my current desktop (two quad core chips or eight total processors) or my 16 inch laptop (one quad core chip or four total processors), but I've heard some reports that you can a substantial boost in speed for complex data analyses.

External storage interfaces: This is a confusing area, but it is important tio have the right external storage interface if you want to transfer large amounts of data to a portable hard drive. The competing standards are USB (Universal Serial Bus), Firewire 1394, and eSATA (external SATA). From what I can tell, the new USB 3.0 standard is your best choice. The eSATA interface might offer comparable speeds, but most manufacturers seem to be adopting the USB 3.0 interface. Another advantage of USB 3.0 is that it can be used, in a pinch, at the slower speeds of a USB 2.0 interface, the current standard for most computers.

The USB 3.0 and other interfaces, though, are overkill for mice, printers, scanners, and most other external peripherals. For these peripherals, there is no reason to go beyond the commonplace USB 2.0 interface.

Optical Storage: Many computers offer the new Blu-ray standard for optical storage, but don't get this unless you like watching high definition movies. The storage size and capacities of DVDs and CDs are probably all you will ever need. There is a confusing array of standards in the DVD world (DVD-R, DVD+R, DVD+RW, DVD-RAM, and single layer versus dual layer), but don't worry about this. An optical drive that can read DVDs and CDs is probably all that you will ever need.

I used to think that optical storage would be the ideal backup medium, but cloud computer storage, such as the Amazon S3 service that I use, is far more convenient. You only need an optical drive to load software. Most software comes on CDs, but a few programs will use the slightly larger DVD format (4.7 gigabytes versus 650 megabytes).

Wireless networking: This is very helpful for laptop computers, as it allows you to connect to the Internet without using a cable. There is a confusing array of standards (802.11a, 802.11b, 802.11g, and 802.11n). A letter later in the alphabet is better, but the simpler standards such as 802.11a/b are probably fine unless you are pushing a lot information through the wireless network. Only if you are looking at intensive applications like streaming video should you worry about this.

Warning: This advice, even if it were from a computer expert, would probably be obsolete in six months. From me, it is intended only as very general guidance. It can help you understand some of the options before you, but you should definitely talk to an expert (or at least a computer salesperson) about what configuration makes sense for you.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/NewComputer.html
[sim2]: http://www.pmean.com/original_site.html 
