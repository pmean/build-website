---
title: Future work on this website
source: http://www.pmean.com/00/future.html
author: Steve Simon
date: 2000-01-01
categories:
- Blog post
tags:
- Website details
output: html_document
page_update: partial
---

This page is obsolete. I am keeping it around mostly for nostalgic reasons.

<!---More--->

+ Draft pages
  + So you want to write a questionnaire (draft)
  + Privacy concerns in research (draft)
  + Establishing validity and reliability (draft)
  + Cluster randomization (draft)
  + Normal probabilities (incomplete)

+ Incomplete or upcoming pages on the Definitions page.
  + Inferential study (definition not yet available)
  + Correlational study (definition not yet available)
  + Multicenter study (definition not yet available)
  + Prospective study (definition not yet available)
  + Random sample
  + Odds ratio
  + Relative risk (definition not yet available)
  + Kappa
  + Point biserial correlation.
  + Pearson correlation (incomplete)

+ Incomplete or upcoming pages on the Planning your research study page.
  + So you want to write a questionnaire (draft)
  + Privacy concerns in research (draft)
  + Establishing validity and reliability (draft)
  + Why informed consent is so important (draft)

+ Incomplete or upcoming pages on the Selecting an appropriate sample size page.
  + Cluster randomization
  + Stratified sample

+ Incomplete or upcoming pages on the Steps in the Typical Data Analysis page.
  + Analysis of Variance models
  + Circular designs
  + Equivalence models
  + Longitudinal data models
  + Bayesian models
  + Confidence intervals
  + Data mining models
  + Differential expression
  + Microarray models
  + Supervised learning
  + Unsupervised learning
  + Nonlinear regression model
  + Simple model of nonlinear growth
  + S-shaped curves
  + Poisson Regression Model
  + Interpreting Poisson Regression Coefficients
  + Quality control models
  + Reliability and validity models
  + Definition: intraclass correlation coefficient
+ Boxplot
  + I can borrow much of the material for a boxplot question from my "Guidelines for Good Graphics" talk. Here's an interesting web site that discusses some of the ambiguities associated with quartiles.
  + curriculum.qed.qld.gov.au/kla/eda/ticktack.htm Ticky-Tacky Boxes. This is part of the following site:
  + curriculum.qed.qld.gov.au/kla/eda/ Exploring Data. This website provides curriculum support materials for teachers of introductory statistics.

+ Correlation coefficient
  + A message on EPIDEMIO-L that might be a good basis for a page in "Selecting an Appropriate Sample Size".
  + Does anyone recall sample size calculation formula that includes correlation coefficient term (among others)?
  + Here's another question from STAT-L (and response) that might be a good starting point.
  + I have a question on power analysis. I am familiar with and understand how to do a power analysis when conducting ANOVA analyses, however, I am not sure if this applies to regression procedures. Is there a way to calculate power for a regression based analysis? Is it the same as ANOVA?
  + There's a lot of good software for power calculations. I hesitate to recommend one over another, but I have worked with nQuery Advisor, and it does a nice job. I'm sure that other software will also work well.
  + If you want to program the power calculations yourself, you can take two approaches.
  + First, the distribution of the F ratio for a regression covariate under the alternative hypothesis is a non-Central F distribution. The non-centrality parameter depends on error variability, the true slope parameter, the sample size, and the variability of the independent variable. That's quite a bit to specify, but you can sometimes simplify things. For example, if you know the range of the independent variable, you can get a rough approximation of the variability.
  + Second, you can consider a test of the correlation (or possibly a partial correlation) between the independent and dependent variable. This is equivalent to a test of the regression coefficient. There are several ways you can approach this. For example, you can find a sample size that is large enough so that any variable that accounts for at least 20% of the variation would be statistically significant.

+ Crossover designs
  + We plan to analyze if the switch from treatment A to treatment B is interesting for a series of patients. We have collected many parameters for each patient before the switch and after the switch at 3, 6, 12, 24 months. Do you think that the comparison of the parameters (before and after) for this series is sufficient to prove that the "switch A -> B" is efficient for the patients? Isn'it necessary in such kind of analysis to have control(s) group(s) which receive only A or B.
  + Your instincts are correct here. Another way of thinking about this is that this is a crossover design where the researchers failed to collect the other half of the data (B switching to A).
  + You might want to review the material on "self controlled designs" starting on page 97 of the reference below.
  + Bailar, John C. III and Mosteller, Frederick, ed. (1992) Medical Uses of Statistics, 2nd Edition. Boston MA: New England Journal of Medicine Books (ISBN: 0-910133-36-0).
    + For the beginning student. A wonderful introduction to the non-mathematical aspects of Statistics.

+ Diagnostic tests
  + www.jr2.ox.ac.uk/bandolier/band48/b48-4.html
  + Here's a nice site that discusses likelihood ratios for acute sinusitis.

+ Double entry
  + It would be nice to add a discussion of this to the "Managing Your Research" data pages. Here is a nice web page about the topic.
  + The Impact of Single Versus Dual Data Entry on Accuracy of Relational Database Information, Meeuwisse et al (1999).
  + www.ncl.ac.uk/~nphcare/PHCSG/Journal/june99/jun2.htm
    + This paper, published in the journal, Journal of Informatics in Primary Care, shows that although double entry reduces the number of errors, it is probably not worth the additional cost.

+ Effect size
  + Here's a good web page to list as a resource.
  + seamonkey.ed.asu.edu/~alex/teaching/WBI/es.html

+ Histogram
  + Interactive Demonstrations for Statistics Education on the World Wide Web. Histogram Applet. West RW, Ogden RT. Journal of Statistics Education v.6, n.3 (1998)
  + http://www.amstat.org/publications/jse/v6n3/applets/Histogram.html

+ How to read a medical journal article
  + Campbell Collaboration http://campbell.gse.upenn.edu
  + Simes J. Publication bias: the case for an international registry of clinical trials. J Clin Oncol 1986;4:1529-41. [Abstract]
  + Jacobsen G, Hals A. Medical investigators' views about ethics and fraud in medical research. J Roy Coll Phys Lond 1995;29:405-9.
  + de Melker HE, Rosendaal FR, Vandenbroucke JP. Is publication bias a medical problem? Lancet 1993;342:621.
  + Vandenbroucke JP. De Cochrane Collaboration en "evidence-based medicine." Ned Tijdschr Geneeskd 1995;139:1476-7.
  + Moher D. Publication bias. Lancet 1993;342:1116.
  + Pearn J. Publication: an ethical imperative. BMJ 1995;310:1313-5. [Full Text]
  + Pearn J, Chalmers I. Publish and be applauded. New Scientist 1996; Jan 6:40.
  + Roberts J, Smith R. Publishing research sponsored by the tobacco industry. BMJ 1996;312:133-4. [Full Text]
  + Chalmers I. Publication bias. Lancet 1993;342:1116.
  + How well is the clinical importance of study results reported? An assessment of randomized controlled trials. Karen B.Y. Chan, Malcolm Man-Son-Hing, Frank J. Molnar, Andreas Laupacis. CMAJ 2001;165(9):1197-202.
  + Why randomized controlled trials fail but needn't: 2. Failure to employ physiological statistics, or the only formula a clinician-trialist is ever likely to need (or understand!). David L. Sackett. CMAJ 2001;165(9):1226-37
  + Here is the new site for the EBM users guides: www.cche.net/ Centres for Health Evidence
  + A nice web page that discusses the history of clinical trials can be found at www.rcpe.ac.uk/cochrane/

+ Jargon
  + I need to re-organize this page. It rambles and is inconsistent.

+ Managing your research data
  + Add the web page www.spss.org to the web site list.

+ Mann-Whitney-Wilcoxon sample size
  + Here's a question from the evidence-based Health list that might form the basis of a good page within "Selecting an Appropriate Sample Size".
  + Can anyone help with a reference +/ or formula for determining power when using a MannWhitney U test. I have been told to use the power calculations for the parametric equivalent and add 10%, but would prefer the formula for direct calculation
  + The power of a nonparametric test is not nonparametric. In other words the formula for power changes when the distribution changes. That's not an insurmountable problem, but you do need to think a bit about why you are using a non-parametric test before you can properly justify the sample size.
  + There are several approaches you can take here. The simplest is to buy the software program: nQuery Advisor, which has power calculations for various scenarios including the Mann-Whitney-Wilcoxon test. If you do a lot of power and sample size calculations, this software will save you a lot of time and effort.
  + The latest version of StatXact software also has power calculations for various Exact tests. I bet it has something for the Mann Whitney Wilcoxon test, but I don't have the software on my system so I can't verify this.
  + There's lots of other software out there that will do this problem. I'm just mentioning the two packages I happen to be familiar with.
  + I don't have good contact information about nQuery Advisor, but you can find information about StatXact at:
    + Cytel Software Corporation 675 Massachusettes Ave. Cambridge, MA 02139 USA Tel: (617) 661-2011 Fax: (617) 661-4405 Web: www.cytel.com E-M: sales@cytel.com
  + If you are adventurous you can derive approximate power formulas yourself. Most people aren't that adventurous, but here are some details anyway.
    + There's a simple relationship between Asymptotic Relative Efficiency (ARE) and sample size. If you can calculate a sample size for a parametric test, and you know the ARE comparing the parametric test to a nonparametric test, then you can extrapolate to the sample size needed for the nonparametric test. I don't have details or a reference for this method, but I'm hoping to dig up all the details and write up a web page about it soon.
    + Machin et al have a formula on page 25-26 that seems to be based on the ARE method described above, but the details are a bit sketchy.
    + Machin, David, Campbell, Michael, Fayers, Peter, and Pinol, Alain (1997) Sample Size Tables for Clinical Studies, Second Edition. Oxford England: Blackwell Science, Inc. ISBN: 0-86542-870-0.
  + You might also try looking at the reference suggested in nQuery advisor: Noether GE (1987) Sample size determination for some common nonparametric statistics. J. Am Stat. Assn 82:645-647.

+ MDAC
  + Here are excerpts from some emails posted to the SPSSX-L listserver on September 10-11, 2000. These emails describe how to load special drivers for ODBC, especially the driver for Access 97.
    + First message: If the application is ODBC compliant, which would include most modern database programs, then you can use the SPSS Data Driver 32. The SPSS Data Driver allows ODBC compliant applications to read SPSS system files directly, via ODBC. The SPSS Data Driver 32 is included in the SPSS Data Access Pack on the SPSS 10.0 CD-ROM. To install the driver, insert your SPSS CD-ROM. The autoplay screen should appear. Click on Install SPSS Data Access Pack. At the first screen, click Next, and then accept the license agreement. At the next screen, you can select the location where you want the files to be installed. Then click Next. At the Select Components screen, check the box next to SPSS Data Driver 32. Then, click Next and follow the remaining steps in the wizard. This will install the SPSS Data Driver into your ODBC Data Sources Control panel.
    + To configure the driver, go to Start->Settings->Control Panel. Double click on Data Sources (ODBC). On the User DSN tab, click Add. Scroll down until you see SPSS Data Access 32 (*.sav), and select it. Click Finish. A small dialog box will appear, named Setup. In the box next to Data Source: type in a name for the Data Source. In the box next to Database: type in the full path to the directory where you SPSS data file is located. Then click OK. Click OK again on the Database Administrator. When you use the data source within your application, the driver will display each SPSS data file in the directory as a separate table. In general, ODBC can only read in 255 variables at a time.
    + Second message: On the SPSS 9.0 CD-ROM, the Microsoft Data Access Pack (which includes the Microsoft Access ODBC Driver) is in the folder called "ODBC Drivers". Double click on the file called dataacc.exe to install.
    + You can also download the Microsoft Data Access Pack directly from Microsoft's webpage, at www.microsoft.com/data. They call it the Microsoft Data Access Components, or MDAC.
    + Third message: I also found a copy on the Access 97 CD. I knew it had to be somewhere on the SPSS CD but after searching the SPSS web site to no avail I then tried Microsoft's site (no luck) and then the Access disc. I told it to reload Access using the Add/Remove feature and found the driver that way. The trick seems to be know what to call something (like "data access pack") when roaming around discs & web sites.
    + Fourth message: You need the driver for the application that contains the data. Since the data are in Access 97, you will need the Access ODBC driver. (If the data were in SPSS, you would need the SPSS ODBC driver.) Microsoft ODBC drivers are located in the system subdirectory of your windows directory. The file names begin with ODBC and have a .DLL extension. If they have been wiped out or corrupted, you can reinstall them by reinstalling Access. The following technical note contains related information that may be useful.
    + http://support.microsoft.com/support/kb/articles/Q237/5/75.ASP.

+ Number needed to treat
  + A couple nice web pages for the "further reading section" are
    + www.jr2.ox.ac.uk/bandolier/band12/b12-2.html and
    + www.jr2.ox.ac.uk/bandolier/band11/b11-1.html.

+ Resampling
  + Here's another nice web page written by P.Adam Kelley. garnet.acns.fsu.edu/~pkelly/bootstrap.html.
  + I need to work up a simple example of resampling, similar to what I did for the bootstrap. A good resource to include in the references is:

+ Sample size for a stratified random sample
  + Could you tell me how would I find sample size for the following:
  + I'm checking for quality in data entry and want to use a sample to see how many records have errors. I have records that go into 3 categories (small, medium and large), and from past experience, the previous error rate seems to be about 5% of records have errors. I think the error rate is the same or similar for each category. I don't need to know error rate for each category, just for overall. I don't think simple random sampling is appropriate because the types of records are slightly different (in size) so I would like to use stratified random sampling.
  + I would like to be pretty sure of the results, say the 99% confidence level, and would like the results to be +/- 2%.
  + My response: I have never justified a sample size for a stratified sample before. The formulas are easy enough, although they are tedious. You need information about each strata, such as a standard deviation for continuous outcomes or a rough guess of the probabilities within each strata for categorical outcomes.
  + Levy and Lemeshow have all the formulas you need.
    + Levy, Paul S. and Lemeshow, Stanley (1991) Sampling of Populations. Methods and Applications. New York NY: John Wiley and Sons, Inc. ISBN: 0-471-50822-5.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/00/future.html
[sim2]: http://www.pmean.com/original_site.html
