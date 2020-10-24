---
title: "A peek into the inner workings of pandemic prediction models"
source: "New"
categories:
- Blog post
tags:
- COVID-19
output: html_document
---

There was a cute meme that was going around on the Internet earlier this year that showed the time spent looking at exponential graphs that showed an exponential increase from January to February to March. This was, of course, the time that most of us were learning about how serious the COVID-19 crisis could be. There were a whole host of statistical models that were trying to predict how many people would become infected and how many people would die.

How do these models work? There are two basic approaches, but the most common approach uses some variation of the SEIR compartment model.

<!---more--->

Think of a compartment as a bucket of water with a hole in the side of the bucket. Water spills out at a certain rate, depending on the size and shape of the hole. The water that spills out of this bucket goes into a second bucket, which also has a hold in the side. This water goes into a third bucket, and so forth.

The compartments represent various disease states. In the simplest model, there are three compartments representing patients that are susceptible ($S$), infected ($I$), and recovered ($R$). The most interesting of these is the $I$ compartment. The level in that compartment depends on how quickly it gets filled from the $S$ compartment and how quickly it drains into the $R$ compartment. You want don’t want the $I$ compartment to get too full for many reasons, but mostly because a large number of infected individuals can tax the available health care resources.

There is an interesting equation that describes the $I$ compartment:

$\frac{dI}{dt} = \beta (S \times I) - \gamma I$

Let's take this equation apart to see what is going on.

First the derivative notation, $\frac{dI}{dt}$ tells you that the model is explaining not the amount in the $I$ compartment, but the rate at which the level in the $I$ compartment changes. You do not want the rate to be postive, as that means the compartment is filling faster than it is draining.

The term $- \gamma I$ represents the rate at which the compartment drains, and this is a constant $\gamma$ times the amount in the compartment $I$. If $\gamma$ is small, the compartment drains slowly and infectious people stay infectious for a very long time. If $\gamma$ is large, then the compartment drains quickly meaning that infectious people recover very quickly. For most infectious diseases, you do not have any control over $\gamma$. It is controlled by how quickly your body's defenses can beat back the infection and rid your body of the evil virus.

The term $\beta S \times I$ tells you how quickly the compartment is filling, and this is a constant $\beta$ times the product of the amounts in compartment $S$ and compartment $I$. You do have a lot of control over this part of the equation.

Since the filling rate is the product of $S$ and $I$, the $I$ compartment fills fast only when both $S$ and $I$ are large. If $I$ is small, that means that there are not a lot of people around to do the infecting. If $S$ is small that means that there are not a lot of people around to get infected.

Typically $I$ is small early in the course of a pandemic, and represents the early part of the exponential curve where the disease spreads slowly. Over time, however, $I$ may grow and with it the rate at which $I$ grows will increase, leading to the dreaded exponential increase in infections.

Eventually as the $S$ compartment drains into the $I$ compartment, $S$ will shrink enough so that the product $S \times I$ becomes small again. This represents herd immunity, the setting where the number of people susceptible to infection becomes too small to keep the epidemic going. It is often described like a forest fire that burns itself out because there is nothing left to burn.

You can avoid the dreaded exponential curve, but it is not easy. You have to insure that the $I$ compartment never grows big enough to start that exponential rise. This occurs when the constant $\beta$ is smaller than the constant $\gamma$. 
If the ratio, 

$R_0=\frac{\beta}{\gamma}$

is less than one, then the $I$ compartment drains faster into the $R$ compartment than it can get filled by the $S$ bucket. Keeping $I$ low keeps the pandemic from growing exponentially. If the ratio $R_0$ is larger than 1, then the $I$ compartment fills faster than it can drain. We want to avoid this, if we can.

You make the ratio small by decreasing the numerator, $\beta$ or increasing the denominator, $\gamma$. There is little that you can do to influence $\gamma$. If you could strengthen your immune system so you can rid yourself of the infection faster, that would be great. But therapies to strengthen your immune system are not readily available.

Decreasing $\beta$, on the other hand, can be done. Even if there are a large number of susceptible people and a large number of infected people, you can reduce $\beta$ through policies like masking and social distancing.

The compartment model allows you to add extra layers to more closely model the complex process of disease propogation. You can, for example, add an additional compartment $E$, between the susceptible and infected compartments. The would represent people who were exposed to the virus but who were not yet infectious. The infected compartment could have two holes, one which drains into the recovered compartment with the other draining into compartment for hospitalization and/or death.

A concern about compartment models is that it treats every individual the same. Some people, however, are less likely to get infected than others. Some parts of the country, because of urban crowding, are more likely to see high rates of infection than other parts of the country.

References

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3935673/