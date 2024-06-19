---
title: Two cautionary tales about data mining
author: Steve Simon
date: 2005-01-06
categories:
- Blog post
tags:
- Data mining
output: html_document
page_update: partial
---

I attended a 7am seminar this morning on data warehousing and data mining, which was quite good. It reminded me of a couple of stories I heard about the pitfalls of data mining.

The first was told to me by a doctor here at Children's Mercy, Jay Portnoy. He was describing a data mining model that was fed images of both cars and trucks (a training set, in the parlance of data mining) to see if it could develop a rule for **identifying whether a future image was either a car or a truck based just on mathematical properties of that image**. It did a pretty good job of finding factors in the training set that distinguished between cars and trucks. But it **failed miserably on the first new image it was trying to classify**. It was an image of a car on a snow covered highway. The data mining algorithm said that this was almost certainly a truck. What the researchers then realized is that in the training set, anytime there was snow in the background, it was a truck that was being shown and never a car. I suppose it is the tendency of marketing to always show trucks in rugged, primitive, and/or dangerous driving conditions. So the data mining model seized on a **key relationship (color of the background) that existed only accidentally in the training set**, rather than focusing on those aspects, such as the shape and size of the vehicle, that most of us would use to distinguish cars from trucks.

The second story was one I heard in a training class by Richard DeVeaux on data mining models that dealt with the question "so what?". He mentioned one of the earliest findings in a data mining model world (though he is uncertain if this is a true story or an urban legend) was that there was an unusual association seen in sales patterns at convenience stores. It seemed that **people who came in to buy beer almost always ended up buying diapers at the same visit**. This is the classic sort of thing that data mining models are supposed to find: unusual and unexpected associations in a very large data set. So he posed this question to a group of managers: **what would you do with this information?** A common response was: **stock the shelves so that the beer and the diapers are close together** to make the trip for the customer faster and more convenient. Another common response was: **put the beer and the diapers at opposite ends of the store** so that customers would have to spend more time in the store, increasing the chances for impulse purchases. Another common response was a **shrug of the shoulders**. In fact, we often don't know what to make of the associations found by data mining models.

You can find an [earlier version][sim1] of this page on my [original website][sim2].


[sim1]: http://www.pmean.com/05/DataMining.html
[sim2]: http://www.pmean.com/original_site.html
