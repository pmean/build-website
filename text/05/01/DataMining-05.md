---
title: Two cautionary tales about data mining
author: Steve Simon
source: http://www.pmean.com/05/DataMining-05.html
date: 2005-01-06
category: Blog post
tags: Data mining
output: html_document
---
**[StATS]:** **Two cautionary tales about data
mining (January 6, 2005)**.

> I attended a 7am seminar this morning on data warehousing and data
> mining, which was quite good. It reminded me of a couple of stories I
> heard about the pitfalls of data mining.
>
> The first was told to me by a doctor here at Children\'s Mercy, Jay
> Portnoy. He was describing a data mining model that was fed images of
> both cars and trucks (a training set, in the parlance of data mining)
> to see if it could develop a rule for **identifying whether a future
> image was either a car or a truck based just on mathematical
> properties of that image**. It did a pretty good job of finding
> factors in the training set that distinguished between cars and
> trucks. But it **failed miserably on the first new image it was trying
> to classify**. It was an image of a car on a snow covered highway. The
> data mining algorithm said that this was almost certainly a truck.
> What the researchers then realized is that in the training set,
> anytime there was snow in the background, it was a truck that was
> being shown and never a car. I suppose it is the tendency of marketing
> to always show trucks in rugged, primitive, and/or dangerous driving
> conditions. So the data mining model seized on a **key relationship
> (color of the background) that existed only accidentally in the
> training set**, rather than focusing on those aspects, such as the
> shape and size of the vehicle, that most of us would use to
> distinguish cars from trucks.
>
> The second story was one I heard in a training class by Richard
> DeVeaux on data mining models that dealt with the question \"so
> what?\". He mentioned one of the earliest findings in a data mining
> model world (though he is uncertain if this is a true story or an
> urban legend) was that there was an unusual association seen in sales
> patterns at convenience stores. It seemed that **people who came in to
> buy beer almost always ended up buying diapers at the same visit**.
> This is the classic sort of thing that data mining models are supposed
> to find: unusual and unexpected associations in a very large data set.
> So he posed this question to a group of managers: **what would you do
> with this information?** A common response was: **stock the shelves so
> that the beer and the diapers are close together** to make the trip
> for the customer faster and more convenient. Another common response
> was: **put the beer and the diapers at opposite ends of the store** so
> that customers would have to spend more time in the store, increasing
> the chances for impulse purchases. Another common response was a
> **shrug of the shoulders**. In fact, we often don\'t know what to make
> of the associations found by data mining models.

[![Creative Commons
License](http://i.creativecommons.org/l/by/3.0/us/80x15.png)](http://creativecommons.org/licenses/by/3.0/us/)
This work is licensed under a [Creative Commons Attribution 3.0 United
States License](http://creativecommons.org/licenses/by/3.0/us/). It was
written by Steve Simon on 2005-01-06, edited by Steve Simon, and was
last modified on 2010-04-01. Send feedback to ssimon at cmh dot edu or
click on the email link at the top of the page. [Category: Data
mining](../category/DataMining.html)

This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
<!---More--->
for pages similar to this one at
with [general help resources](../GeneralHelp.html). You can also browse
Children\'s Mercy Hospital website. Need more information? I have a page
reproducing it here as a service, as it is no longer available on the
Hospital. Although I do not hold the copyright for this material, I am
This page was written by Steve Simon while working at Children\'s Mercy

<!---Do not use
**[StATS]:** **Two cautionary tales about data
This page was written by Steve Simon while working at Children\'s Mercy
Hospital. Although I do not hold the copyright for this material, I am
reproducing it here as a service, as it is no longer available on the
Children\'s Mercy Hospital website. Need more information? I have a page
with [general help resources](../GeneralHelp.html). You can also browse
for pages similar to this one at
--->

