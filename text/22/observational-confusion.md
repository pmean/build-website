---
title: "Confusion about observational designs"
source: new
date: "2022-02-26"
categories:
- Blog post
tags:
- Observational studies
output: html_document
page_update: complete
---

In one of my lectures on Clinical Research Methodology, I point out how easy it is to confuse various types of observational studies for one another. This is usually because of sloppy writing on the part of the authors of journal articles.

Anyway, that portion of my lecture probably hurt more than it helped. Identifying someone else's observational design as case-control, cohort, or cross-sectional is difficult. But you should have much less trouble identifying what your own observational design is. Anyway, I am cutting that out of the lecture and including here as a web page, for what it's worth.

### Confusion between designs (1 of 6)

* Retrospective cohort vs case-control design
* Prospectitve cohort vs cross-sectional design
* Historical control and the quasi-experimental design

<div class="notes">

#### Speaker notes

The restrospective cohort design is sometimes easy to confuse with cross-sectional design and the case-control design, but there should be an obvious step where subjects are selected. Did you select on the exposure? That makes it a cohort design. Did you select on the outcome? That makes it a case-control design. Did you select a single group and then classify patients as to their exposure and their outcome? Then you have a cross-sectional design.

You could argue that the distinctions here are not important, and you'd be correct. The value in assigning a label is that there is a general belief with some justification that a cohort design is more rigorous than the other designs. Also, certain statistics, like the relative risk, are inappropriate for a case-control design, because the prevalence of the disease is artificially controlled (typically to a 50-50 ratio of cases to controls).

There's also a tendency to confuse the cross-sectional design with the cohort design. Time is important here. Is everything collected all at once and then you sort out who is exposed and who is unexposed? That makes it a cross-sectional design. If you select and exposed group and then separately go out and select an unexposed control before you make any measurements on your data, then you have a cohort design.

The historical control design is similar to some of the quasi-experimental designs discussed last week. The difference is fairly subtle. In a quasi-experimental design, you have an active independent variable and you decide based on logistical constraints that you can't randomized. The historical control design uses an attribute independent variable. Another possible distinction is that a quasi-experimental design studies an intervention and a historical control design studies an exposure. An intervention is something that you hope, at least before you have run your study, that might make things better. Perhaps it makes things worse, but you didn't study it because you thought it might make things worse. An exposure, on the other hand, is something that you worry about. Maybe it is harmless, but maybe not.

These are all subtle distinctions, and the people who publish in the medical journals often get things confused themselves. So don't worry too much about this now. The distinctions are important, from the perspective of the hierarchy of evidence. They are also imporant, at times, because certain research designs (most notably the case-control design) limit some of the statistical summaries that you can use.

</div>

### Confusion between designs (2 of 6)

![Abstract of research paper](http://www.pmean.com/new-images/22/raffa01.png)

<div class="notes">

#### Speaker notes

I don't want to confuse or intimidate you, but let's look at an example of an observational study and see what we are up against. This paper talks about neurological complications after surgery and describes it as a case-control study. If that's the case then the outcome has to be complications because the outcome has to occur last.

So you select patients with and without complications and see what happened during the surgery and beforehand that might be a risk factor for complications.

</div>

### Confusion between designs (3 of 6)

![Abstract of research paper](http://www.pmean.com/new-images/22/raffa02.png)

<div class="notes">

#### Speaker notes

But the first sentence of the abstract seems to imply something different.

"A total of 2121 patients underwent cardiac surgery."

That implies a cross-sectional study. You get a big group of patients (2121 surgery patients) and see what risk associated with the surgery (such as leaving a sponge inside the patient) affect outcomes like neurological complications. You might also be interested in demographic factors that might influence the outcome like age and gender.

The point is that this looks like a single sample with measurements associated with various risk factors and various outcomes asssessed simultaneously.

</div>

### Confusion between designs (4 of 6)

![Abstract of research paper](http://www.pmean.com/new-images/22/raffa03.png)

<div class="notes">

#### Speaker notes

Later, though, you see that patients with "major stroke ... and a spectrum of transient neurological episodes ... were compared ... with matched patients ... without neurological deficits."

For now, I'll lump transient neurological episodes in with the more serious outcome (major stroke) and call this the stroke group.

So that seems to imply that cases and controls were selected from the cross-sectional study.

</div>

### Confusion between designs (5 of 6)

![Abstract of research paper](http://www.pmean.com/new-images/22/raffa04.png)

<div class="notes">

#### Speaker notes

Now look here. The phrase "patients with and without imaging" sure sounds like our "cases" with major strokes and transient neurological episodes. But we are comparing these to the controls not on risk factors that occured before the strokes and neurological episodes, but on outcomes like length of stay or mortality. So maybe the major strokes and transient neurological episodes represent a cohort and you want to see whether exposure to strokes influences certain outcome measures that are taken after the stroke. Death certainly occurs after the stroke and not before. So death is the outcome and stroke is the exposure.

</div>

### Confusion between designs (6 of 6)

![Abstract of research paper](http://www.pmean.com/new-images/22/raffa05.png)

<div class="notes">

#### Speaker notes

A bit further down, you see a discussion of "bilateral internal carotid stenosis of any grade" and "re-do operations," which sound like risk factors that occur before the stroke. So maybe it is a case-control design after all.

I would characterize this as a cross-sectional study with a case-control study nested within. The cross-sectional sample (2121 patients) provided clues as to whether the exposure group (strokes) had more bad outcomes than the unexposed group. Bad outcomes meaning longer lengths of stay and higher mortality. The case-control study nested within the cross-sectional sample helped identify whether risk factors like stenosis and re-do operations increased the risk of a bad outcome where here the bad outcome was major stroke or transient neurological episodes.

So how can the stroke group be both a cohort group and a case group? It's all in the timing. The example I always cite in this context is low birth weight. For an obstetrician, low birth weight is an outcome, because they see low birth weight as being at the end of the process. For a neonatologist, low birth weight is an exposure because they see low birth weight at the beginning of the process.

The point of this example is that classifying a study into one of the four categories (cohort, cross-sectional, case-control, or historical control) is a tricky process. The experts who publish these papers often get these terms wrong themselves, so don't worry too much if you can't figure things out.

</div>
