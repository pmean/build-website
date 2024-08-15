---
title: Small business grant? Maybe not (created 2011-06-16).
author: Steve Simon
date: 2011-06-16
categories:
- Blog post
tags:
- Accrual problems
output: html_document
page_update: complete
---

I want to document on this webpage, a general idea of where we might want to submit a grant to continue our work on accrual models. In particular, I was originally leaning towards an SBIR (Small Business Innovation Research) grant, but now I am not so sure. The impetus was attendance at a webinar on how to write a grant for SBIR.

<!---More--->

SBIR grants are attractive in many ways (the funding rate is higher 27% for Phase I and 49% for Phase II) and it potentially fits in well with the goals of our work. There are limitations, however.

The Principal Investigator must be from a small business and not a university. There are technical meanings to the term "small business" such as 500 or fewer employees. In theory, my consulting firm (P.Mean Consulting) could qualify, or we could set up a company through the Technology Transfer office at either UMKC or KUMC.

The SBIR grant can subcontract with an academic organization, but for no more than 33% of the award. Given that the cap on Phase I awards is $150,000 and that any university would demand indirect costs, that leaves precious little. Now keep in mind that Phase II has a limit of $1 million, and the success rates are very high (only those with a Phase I award can apply for a Phase II award), so it might be worthwhile to get a piddling amount of money at first, so as to have your foot in the door for Phase II.

The restrictions for STTR (Small Business Technology Transfer) grants are a bit looser, but not by much, and the pool of money for STTR grants is much smaller. The other issue is that software does not seem to be that good of a fit for the specific calls from NIH for SBIR/STTR grants. See [here][nih1] for a listing. Now you don't have to respond to a specific call and you can apply under the general omnibus solicitation. See [here][nih2] and [here][nih3] for details.

Still, I think it is a bad omen that so many of the specific calls are looking for hardware (e.g., advanced tools and technologies for deep brain stimulation). There is one pair of announcemnts for "Innovations in Biomedical Computational Science Technology" at

+ [PAR-09-220][nih4]
+ [PAR-09-221][nih5]

but when you read these guidelines, they don't seem to fit our work that well.

The R01, R03, and R21 grant mechanisms are much better suited, of course, to an academic environment and there is nothing stopping us from using one of those grants as a springboard to a latter SBIR or STTR grant. Looking at funding opportunities in those areas, there are several program announcements that might fit. The first is "Research On Ethical Issues In Human Subjects Research" which has R01, R03, and R21 funding mechanisms.

+ [PA-06-369][nih6]
+ [PA-06-367][nih7]
+ [PA-06-368][nih8]

If we follow this model, then our software becomes a tool to assist Institutional Review Boards and/or Data and Safety Monitoring Boards with research oversight (see bullet #5 in Section I).

Perhaps another area worth considering is ["Research on Research Integrity (R01)"][nih9], but note some important qualifiers in this guidance.

There is also "Research on Ethical Issues in Biomedical, Social and Beahvioral Research" with R01, R03, and R21 funding sources:

+ [PA-11-180][nih10]
+ [PA-11-181][nih11]
+ [PA-11-182][nih12]

This announcemnts also have a research oversight section (bullet 7 in part 2, Section I). It looks like these announcements may be more current that PA-06-367,8,9.

Right now, I think we're leaning towards an R21 "Research On Ethical Issues In Human Subjects Research."

A colleague suggested that we consider funding through The Patient-Centered Outcomes Research Institute (PCORI). Wikipedia has a very nice [description of PCORI][wik1]:

> "The Patient-Centered Outcomes Research Institute is a United States based non-governmental institute created as part of a modification to the Social Security Act by clauses in the Patient Protection and Affordable Care Act. The body is charged with examining the "relative health outcomes, clinical effectiveness, and appropriateness" of different medical treatments by evaluating existing studies and conducting its own. Its 19-member board is to include patients, doctors, hospitals, drug makers, device manufacturers, insurers, payers, government officials and health experts. It will not have the power to mandate or even endorse coverage rules or reimbursement for any particular treatment. Medicare may take the Institute's research into account when deciding what procedures it will cover, so long as the new research is not the sole justification and the agency allows for public input." 

PCORI is going to solicit Tier One Grants very soon: June of 2011, but as of the writing of this webpage, nothing is official yet. According to a recent presentation,

> Focus: Innovation grants to define barriers to efficient clinical research, explore novel clinical research infrastructures, selective statistical and clinical trial methodology, and novel approaches to patient engagement. (Slide 10 from [this presentation][pco1]).

When I find out more about these Tier One Grants, I will post an update to this webpage.

Now, I would be remiss in my duty if I didn't mention the work we are looking to do for this grant. Look at the topic page for Accrual Problems to get all the details, but here's a short synopsis of what we want to do and why.

The most common reason why clinical trials fail is that they fall well below their goals for patient accrual. Researchers will frequently overpromise and underdeliver on the number of patients that they can recruit during the proposed time frame. The result is studies that take far longer than planned and/or that end with fewer patients than planned. This raises serious economic and ethical issues. We have developed a Bayesian model for accrual using an exponential model for waiting times between patients. The Bayesian model encourages careful planning of accrual rates and allows regular monitoring of accrual patterns during the conduct of the clinical trial. This model assumes a homogenous accrual pattern. We wish to extend the model to more complex settings involving heterogenous acccrual. This includes:

1. Multi-center trials with different accrual rates at each center,
2. Accrual patterns that start out slowly as a trial is getting underway and which gradually reach a plateau, and
3. Accrual that occurs in spurts in response to a series of ads or of bulk mail solicitations.

Another important extension is the use of more complex accrual distributions than the exponential distribution. We also want to make the code for homogenous accrual generally available to researchers using a Java applet on the web. Finally, we want to examine accrual patterns in a large database of clinical trials to gain empirical knowledge of general trends and patterns of accrual in a real world setting.

Things are very fluid at this point in time, so this is only a general description.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/sbir.html
[sim2]: http://www.pmean.com/original_site.html 

[nih1]: http://grants.nih.gov/grants/funding/sbir_announcements.htm
[nih2]: http://grants.nih.gov/grants/guide/pa-files/PA-11-096.html
[nih3]: http://grants.nih.gov/grants/guide/pa-files/PA-11-097.html
[nih4]: http://grants.nihgov/grants/guide/pa-files/PAR-09-220.html
[nih5]: http://grants.nih.gov/grants/guide/pa-files/PAR-09-221.html
[nih6]: http://grants.nih.gov/grants/guide/pa-files/PA-06-369.html
[nih7]: http://grants.nih.gov/grants/guide/pa-files/PA-06-367.html
[nih8]: http://grants.nih.gov/grants/guide/pa-files/PA-06-368.html
[nih9]: http://grants.nih.gov/grants/guide/rfa-files/RFA-NR-07-001.html
[nih10]: http://grants.nih.gov/grants/guide/pa-files/PA-11-180.html
[nih11]: http://grants1.nih.gov/grants/guide/pa-files/PA-11-181.html
[nih12]: http://grants1.nih.gov/grants/guide/pa-files/PA-11-182.html

[pco1]: www.pcori.org/images/PDC_Report_2011-05-16.pdf
[wikl]: http://en.wikipedia.org/wiki/Patient-Centered_Outcomes_Research_Institute
