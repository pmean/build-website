---
title: "PMean: Super Pi, a group to teach cluster computing using the Raspberry Pi"
author: "Steve Simon"
source: "http://blog.pmean.com/super-pi/"
date: "2018-09-10"
category: Blog post
tags: Cluster computing
output: html_document
---

If you want to learn cluster computing and you didn't have easy access,
you had two choices. You could simulate a cluster computer on your
laptop, or you could buy time in the cloud. There's a third approach,
build your own cluster computer system using several Raspberry Pi
computers.

<!---More--->

The Raspberry Pi, a low power, low cost, small footprint computer is
ideal to illustrate cluster computing. The cluster is very easy to
visualize, unlike something in the cloud, and you can easily compare the
performance of a program using a single Pi to a cluster of Pis. The
process of putting together a cluster computer reinforces several
important computer skills, such as setting up static IP addresses,
configuring Linux systems, accessing "remote" computers using Secure
Shell, and writing programs for parallel processing.

I'd like to set up an informal users group, Super Pi-KC, of individuals
who like the idea of building a powerful parallel-processing super
computer using simple components like the Raspberry Pi. I've set up a
[planning session for November 10,
2018](https://www.meetup.com/Kansas-City-R-Users-Group/events/254571498/).
The details are on meetup.com. I'm looking for two types of people,
those who think it is fun to tinker around with this sort of thing, and
those who want to develop resources to help others who might want to do
this on their own. The low cost and simplicity of the Raspberry Pi makes
it an ideal means for teaching college and high school students about
cluster computing.

What would the Super Pi-KC users group do? I want to brainstorm about
this, but I have a few ideas already.

1\. Talk about some of the hardware issues (electricity consumption, heat
dissipation, chaining Ethernet switches) that arise when you scale up
from three Pis to a much larger number.

2\. Show how you might solve some interesting problems using a small
cluster computer. At first, I thought it might be interesting to [mine
bitcoins](https://www.digitaltrends.com/computing/how-to-mine-bitcoin/),
but there are several problems with this. The bitcoin problem doesn't
scale down well to small clusters and the whole process is somewhat
opaque. There are also some simple mathematical problems like
[estimating the first fifty digits of
pi](https://en.wikipedia.org/wiki/Approximations_of_π) or [hunting for
large prime numbers](https://arxiv.org/abs/1709.09963). These can scale
up or down easily, and the programs are fairly easy to follow. But I
think the most interesting applications would involve text mining. Text
mining is built on the foundation of word counts, and counting is one of
the easiest algorithms to run in parallel. Thanks to Project Guttenberg,
you can work on a massive amount of texts, and this work is easily
divided across the individual components of a cluster.

3\. Develop benchmarks and compare our results to earlier super computer
speed records. Thanks to Moore's Law, we can run on a hobbyist budget
today, something that is more powerful than the best computers of
yesterday. How many Pis would you have to cluster to equal the speed of
the the 1976 Cray-1?

4\. Compare and contrast clusters of different computers. My cluster uses
the Raspberry Pi 3B, which costs about \$35, but you can buy a smaller
but still very powerful Raspberry Pi Zero for under ten bucks. Can you
build a cluster from the Pi Zeros, and how would it compare to a cluster
of Pi 3Bs? There are other small footprint, low power computers like the
Banana Pi and you could even construct a cluster by recycling those
obsolete laptops cluttering up your attic.

5\. Compare and contrast different software systems for cluster
computing. The granddaddy of parallel computing is MPI (Message Passing
Interface), and we could compare this to more recent systems like Hadoop
and Spark.

6\. Run competitions. Several people could bring in their Pi clusters and
we could put them head to head to see which one could compute the most
digits of the number pi in fifteen minutes. Or we could see who could
find the biggest prime number.

7\. Build bigger and bigger pi clusters. We could try connecting several
small Pi clusters together to make one big cluster. How big could we
get? 20 Pis? 40 Pis? 100 Pis? Does the speed scale up linearly with the
number of Pis, or would inefficiencies creep in as the cluster exceeds
certain limits?

8\. Build resources to help beginners get started in cluster computing.
There's no better way to understand how cluster computing works than to
build and test your own cluster computer, and the price of the Raspberry
Pi and other small computers makes it easy and affordable. There are
several good books and many websites that can help you get started, but
there's always room for improvement. I'd love to work with some of the
local high schools and get some of our talented youth tackling serious
computing problems using supercomputers that can fit in the palm of your
hand.

These are just some ideas for discussion, and I am open to any
suggestions about these ideas or other ideas that you might have. Send
me an email if you can't show up for the [organizational meeting on
November 10,
2018](https://www.meetup.com/Kansas-City-R-Users-Group/events/254571498/).
:::

