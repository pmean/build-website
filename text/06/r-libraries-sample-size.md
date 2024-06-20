---
title: R libraries for sample size justification
author: Steve Simon
source: http://www.pmean.com/06/SampleSizeR.html
date: 2006-07-28
categories:
- Blog post
tags:
- R software
- Sample size justification
output: html_document
page_update: partial
---
There are a lot of good commercial and free sources for sample size
justification. Note that most people use the term power calculation, but
there is more than one way to justify a sample size, so I try to avoid
the term "power calculation" as being too restrictive. Anyway, I just
noted an email on the
[MedStats](../category/InterestingWebsites.html#MeStXx) list that
suggests two R libraries.

The MBESS R package

-   [cran.at.r-project.org/src/contrib/Descriptions/MBESS.html](http://cran.at.r-project.org/src/contrib/Descriptions/MBESS.html)

estimates sample size by setting a goal on how precise you want the
confidence intervals to be. It has a nice function that looks at the
confidence interval for R-squared that would be hard to find in most
other places.

The pwr R package:

-   [cran.at.r-project.org/src/contrib/Descriptions/pwr.html](http://cran.at.r-project.org/src/contrib/Descriptions/pwr.html)

uses a more traditional approach that follows the effect size notation
noted in Cohen's book on sample size.

-   **Statistical Power Analysis for the Behavioral Sciences Revised
    Edition.** Jacob Cohen (1977) New York: Academic Press. **(Sample
    Size, General)**

**Key papers, books and website**

-   **Structural Equation Modeling in Practice: A Review and recommended
    Two-Step Approach.** J.C. Anderson, D.W. Gerbing. Psychological
    Bulletin 1988: 103(3); 411-423. **(Sample Size, SEM)**
-   **Ethics and sample size.** Peter Bacchetti, Leslie E Wolf, Mark R
    Segal, Charles E McCulloch. American Journal of Epidemiology 2005:
    161(2); 105-110. **(Sample, Ethics)**
-   **Bacchetti et al. Respond to "Ethics and Sample Size - Another
    View".** Peter Bacchetti, Leslie E Wolf, Mark R Segal, Charles E
    McCulloch. American Journal Epidemiology 2005: 161(2); 113.
    **(Sample, Ethics)**
-   **[How likely is it to go wrong
    Doctor?](http://www.jr2.ox.ac.uk/bandolier/band23/b23-2.html%20)**.
    Bandolier. Accessed on 2005-03-10. **(Sample Size, Rule of three)**
    *Patients rightly pose difficult questions, and we often wonder too.
    If you have never seen a horrible complication from a particular
    drug or intervention how likely is it to happen? A short and
    illuminating paper from Germany may be very helpful \[1\] - as the
    authors say "experience and Murphy's law teach us that
    catastrophes do happen, and their probability can in fact be
    calculated by a simple rule of thumb."*
    www.jr2.ox.ac.uk/bandolier/band23/b23-2.html
-   **The Observation to Variable Ratio in Factor Analysis.** P.T.
    Barrett, P. Kline. Personality Study and Group Behavior 1981: 1;
    23-33. **(Sample Size, SEM)**
-   **Pracatical Issues in Structural Modelling.** P. M. Bentler, C.
    Chou. Sociological Methods and Research 1987: 16; 78-117. **(Sample
    Size, SEM)**
-   **Inherent variability among measures of fertility of rats and its
    implications in the design of mating trials.** W. E. Berndtson, J.
    E. Judd, A. C. Castro. Journal of Andrology 1997: 18(6); 717-24.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9432145&dopt=Abstract)
    **(Sample Size, Example)**
-   **An examination of methods for sample size recalculation during an
    experiment.** R. A. Betensky, C. Tierney. Statistics in Medicine
    1997: 16(22); 2587-98. **(Sample Size, General)**
-   **Additional power computations for designing comparative Poisson
    trials.** C. C. Brown, S. B. Green. American Journal of Epidemiology
    1982: 115(5); 752-8.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7081205&dopt=Abstract)
    **(Sample Size, Poisson Regression)**
-   **Estimating sample sizes for binary, ordered categorical, and
    continuous outcomes in two group comparisons \[Education and
    Debate\].** M. J. Campbell, S. A. Julious, D. G. Altman. British
    Medical Journal 1995: 311(7013); 1145-8.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7580713&dopt=Abstract)
    [\[Full
    text\]](http://www.pubmedcentral.gov/picrender.fcgi?artid=1118564&blobtype=pdf)
    **(Sample Size, General)**
-   **Sample size calculations for the log rank test: a Gompertz model
    approach.** A. B. Cantor. J Clin Epidemiol 1992: 45(10); 1131-6.
    **(Sample Size, Log Rank test)**
-   **Sample Size Requirements for Precise Estimates of Reliability,
    Generalizability, and Validity Coefficients.** Richard A Charter.
    Journal of Clinical and Experimental Neuropsychology 1999: 21(4);
    559-566. **(Sample Size, Reliability/Validity)**
-   **Statistical Power Analysis for the Behavioral Sciences Revised
    Edition.** Jacob Cohen (1977) New York: Academic Press. **(Sample
    Size, General)**
-   **Confidence limits and sample size in quarantine research.** HM
    Couey. Forum: Journal of Economic Entomology 1986: 79(4); 887-90.
    **(Size, Confidence Intervals)**
-   **[Sample Size
    Calculator](http://www.surveysystem.com/sscalc.htm)**. Creative
    Research Systems. Accessed on 2003-02-25. **(Sample Size, General)**
    *This Sample Size Calculator is presented as a public service of
    Creative Research Systems. You can use it to determine how many
    people you need to interview in order to get results that reflect
    the target population as precisely as needed. You can also find the
    level of precision you have in an existing sample.*
    www.surveysystem.com/sscalc.htm
-   **Statistical and design issues in studies of groups. Accounting for
    within-group correlation.** P Cummings, T D Koepsell. Inj Prev 2002:
    8(1); 6-7. [\[Full
    text\]](http://ip.bmjjournals.com/cgi/content/full/8/1/6)
    [\[PDF\]](http://ip.bmjjournals.com/cgi/reprint/8/1/6.pdf) **(Sample
    Size, Cluster)**
-   **[Power Calculations for Logistic Regression with Exposure
    Measurement
    Error](http://biostat.hitchcock.org/MeasurementError/Analytics/PowerCalculationsforLogisticRegression.asp)**.
    Dartmouth-Hitchcock Medical Center. Accessed on 2003-04-23.
    **(Sample Size, Logistic)** *This program provides provides power
    calculations for logistic regression with a continuous exposure
    variable and an additional continuous covariate or confounding
    variable. A classical measurement error model is assumed for this
    implementation.*
    biostat.hitchcock.org/MeasurementError/Analytics/PowerCalculationsforLogisticRegression.asp
-   **Sample Size Methodology.** M.M. Desu, D. Raghavarao (1990) Boston:
    Academic Press. **(Sample Size, General)**
-   **[Power for Simple Mixed
    Models](http://www.nur.utexas.edu/Dickson/stats/mxpower.html)**. Pat
    Dickson, School of Nursing, The University of Texas at Austin.
    Accessed on 2003-08-28. **(Sample Size, Mixed Model)** *Mok's
    often-cited 1995 article ends: 'To the extent that these data are
    representative, one might offer as a rule of thumb, in the 2-level
    random slope balanced case with intraclass correlation of below,
    say, 0.15, at the x-intercept, that an actual sample size of 3500,
    and an effective sample size at the x-intercept of 400, to ensure
    reasonable efficiency and lack of bias.'*
    www.nur.utexas.edu/Dickson/stats/mxpower.html
-   **Sample size requirements for reliability studies.** A. Donner, M.
    Eliasziw. Stat Med 1987: 6(4); 441-8. **(Sample Size, General)**
-   **Power and Sample Size Calculations for Studies Involving Linear
    Regression.** William D Dupont, W D Jr. Plummer. Controlled Clinical
    Trials 1998: 19; 589-601. **(Sample Size, Linear Regression)**
-   **Sample size requirements for case-control study designs.** M. D.
    Edwardes. BMC Med Res Methodol 2001: 1(1); 11.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11747473&dopt=Abstract)
    [\[Abstract\]](http://www.biomedcentral.com/1471-2288/1/11/abstract)
    [\[Full text\]](http://www.biomedcentral.com/1471-2288/1/11)
    [\[PDF\]](http://www.biomedcentral.com/content/pdf/1471-2288-1-11.pdf)
    **(Sample size, Case control)**
-   **Why "underpowered" trials are not necessarily unethical.** S. J.
    Edwards, R. J. Lilford, D. Braunholtz, J. Jackson. Lancet 1997:
    350(9080); 804-7.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9298015&dopt=Abstract)
    **(Sample Size, Ethics)**
-   **Sample Size Calculation for clinical trials: the impact of
    clinician beliefs.** P M Fayers, A Cuschieri, J Fielding, J Craven,
    B Uscinska, LS Freedman. British Journal of Cancer 2000: 82(1);
    213-219. **(Sample Size, Clinical Importance)**
-   **Effects of Sample Size and Non-Normality on the Estimation of
    Mediated Effects in Latent Variable Models.** J.F. Finch, S.G. West,
    D.P. MacKinnon. Structural Equation Modeling 1997: 4(2); 87-107.
    **(Sample Size, SEM)**
-   **Sample size determination in studies with matched pairs.** J. L.
    Fleiss, B. Levin. J Clin Epidemiol 1988: 41(8); 727-30. **(Sample
    Size, Matched Pairs)**
-   **Post hoc power analysis\--another view.** J. Fogel.
    Pharmacotherapy 2001: 21(9); 1150.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11560206&dopt=Abstract)
    [\[Full text\]](http://www.medscape.com/viewarticle/409791)
    **(Sample Size, Post Hoc Power)**
-   **Current concepts review: sample size and statistical power in
    clinical orthopaedic research.** Kevin B Freedman, Joseph Bernstein.
    J Bone Joint Surg Am 1999: 81(10); 1454-60.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=00004623-199910000-00011&dopt=Abstract)
    [\[Full text\]](http://www.ejbjs.org/cgi/content/full/81/10/1454)
    [\[PDF\]](http://www.ejbjs.org/cgi/content/full/81/10/1454.pdf)
    **(Sample Size, Overview)**
-   **Power computations for designing comparative poisson trials.** M
    Gail. Biometrics 1974: 30(?); 231-37. **(Sample Size, Poisson
    Regression)**
-   **Power and sample size calculations in case-control studies of
    gene-environment interactions: comments on different approaches.** M
    Garcia-Closas, Lubin JH. AJE 1999: 149(8); 689-92. **(Sample Size,
    General)**
-   **Sample Size Requirements for Association Studies of Gene-Gene
    Interaction.** James W. Gauderman. Am. J of Epidemiology 2002:
    155(5); 478-484. **(Sample Size, General)**
-   **The Determination of the Number of Patients Required in a
    Preliminary and a Follow-Up Trial of a New Chemotherapeutic Agent.**
    Edmund A. Gehan. Journal of Chronic Diseases 1961: 13(4); 346-353.
    **(Sample Size, General)**
-   **Planning the size and duration of a clinical trial studying the
    time to some critical event.** S. L. George, M. M. Desu. J Chronic
    Dis 1974: 27(1); 15-24.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=4592596&dopt=Abstract)
    **(Sample Size, Survival Curve)**
-   **[Handout: Sample Size and the Nuremberg
    Code](http://www.amstat.org/meetings/jsm/2001/index.cfm?fuseaction=abstract_details&abstractid=301013)**.
    Lane Goldsmith, Paul Simmons, JSM. Accessed on 2001-**(Sample Size,
    Ethics)** *In 1947 the Nuremberg Code was formulated during the
    trial of Nazi scientists accused of murder and torture in medical
    experiments in concentration camps during World War II (Shuster,
    1998). Characterized as the most authoritative set of rules for the
    protection of human subjects in medical research, the Nuremberg Code
    has had a profound effect on the ethics of human experimentation,
    particularly in its requirement of informed consent of experimental
    subjects. The 10 principles of the Nuremberg Code deal with other
    ethical issues, and there are strong implications for correct sample
    size estimation. "Ethical Guidelines for Statistical Practice,"
    approved by the American Statistical Association in 1999, calls for
    statisticians to "avoid the use of excessive or inadequate numbers
    of research subjects by making informed recommendations for study
    size." A recent article "Why 'underpowered' trials are not
    necessarily unethical" (S. J. L. Edwards, et al, 1997) will be
    analyzed with regard to subject equipoise, utility functions,
    meta-analysis, and the "implicit contract" with research subjects
    (Harrington, 2000).*
    www.amstat.org/meetings/jsm/2001/index.cfm?fuseaction=abstract\_details&abstractid=301013
-   **The use of predicted confidence intervals when planning
    experiments and the misuse of power when interpreting results.**
    Steven Goodman. Annals of Internal Medicine 1994: 121(3); 200-206.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8017747&dopt=Abstract)
    [\[Abstract\]](http://www.annals.org/cgi/content/abstract/121/3/200)
    [\[Full text\]](http://www.annals.org/cgi/content/full/121/3/200)
    **(Sample Size, Post Hoc Power)**
-   **Sample size estimation in occupational mortality studies with use
    of confidence interval theory.** I. Gordon. Am J Epidemiol 1987:
    125(1); 158-62. **(Sample Size, General)**
-   **[Computing sample size for data to be analyzed with nonparametric
    tests.](http://www.graphpad.com/library/BiostatsSpecial/article_154.htm%20)**.
    GraphPad Software. Accessed on 2005-03-08. **(Sample Size,
    Nonparametric)** *Nonparametric tests are used when you are not
    willing to assume that your data come from a Gaussian distribution.
    Commonly used nonparametric tests are based on ranking values from
    low to high, and then looking at the distribution of sum-of-ranks
    between groups. This is the basis of the Wilcoxon rank-sum (test one
    group against a hypothetical median), Mann-Whitney (compare two
    unpaired groups), Wilcoxon matched pairs (compare two matched
    groups), Kruskal-Wallis (three or more unpaired groups) and Friedman
    (three or more matched groups).*
    www.graphpad.com/library/BiostatsSpecial/article\_154.htm
-   **On sample-size and power calculations for studies using confidence
    intervals.** S Greenland. American Journal of Epidemiology 1988:
    128(1); 231-7. **(Sample Size, General)**
-   **"Underpowered" trials.** M. Griffiths. Lancet 1997: 350(9088);
    1406.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9365485&dopt=Abstract)
    **(Sample Size, Ethics)**
-   **Relation of Sample Size to the Stability of Component
    Patterns.** E. Guadagnoli, W.F. Velicer. Psychological Bulletin
    1988: 103(2); 265-275. **(Sample Size, SEM)**
-   **Sample size formulas for some binomial type problems.** WC
    Guenther. Technometrics 1974: 16(3); 465-67. **(Sample Size,
    Proportions)**
-   **The Continuing Unethical Conduct of Underpowered Clinical
    Trials.** S. D. Halpern, J. H. Karlawish, J. A. Berlin. JAMA 2002:
    288(3); 358-62.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12117401&dopt=Abstract)
    [\[PDF\]](http://www.hmc.psu.edu/k30/archive/02-03_files/JAMA_underpowered.pdf)
    **(Sample Size, Ethics)**
-   **If nothing goes wrong, is everything all right? Interpreting zero
    numerators.** J. A. Hanley, A. Lippman-Hand. Jama 1983: 249(13);
    1743-5.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=6827763&dopt=Abstract)
    **(Sample Size, Rule of Three)**
-   **Multivariable prognostic models: issues in developing models,
    evaluating assumptions and adequacy, and measuring and reducing
    errors.** F. E. Harrell, Jr., K. L. Lee, D. B. Mark. Stat Med 1996:
    15(4); 361-87. **(Sample Size, Logistic)**
-   **Regression modelling strategies for improved prognostic
    prediction.** Jr Harrell, Frank E, Kerry L Lee, Robert M Califf,
    David B Pryor, Robert A Rosati. Statistics in Medicine 1984: 3;
    143-152. **(Sample Size, Logistic Regression Model)**
-   **Regression models for prognostic prediction: advantages, problems,
    and suggested solutions.** Jr Harrell, Frank E, Kerry L Lee, David B
    Matchar, Thomas A Reichert. Cancer Treatment Reports 1985: 69(10);
    1071-77. **(Sample Size, Logistic Regression reference)**
-   **Simple sample size calculation for cluster-randomized trials.** R.
    J. Hayes, S. Bennett. Int J Epidemiol 1999: 28(2); 319-26.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10342698&dopt=Abstract)
    [\[Abstract\]](http://ije.oupjournals.org/cgi/content/abstract/28/2/319)
    [\[PDF\]](http://ije.oupjournals.org/cgi/reprint/28/2/319.pdf)
    **(Sample Size, Cluster)**
-   **Setting the minimal metrically detectable change on disability
    rating scales.** R. Hebert, D. J. Spiegelhalter, C. Brayne. Arch
    Phys Med Rehabil 1997: 78(12); 1305-8.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9421982)
    **(Sample Size, Clinically Relevant Difference)**
-   **The abuse of power: the pervasive fallacy of power calculations
    for data analysis.** John M Hoenig, Dennis M Heisey. The American
    Statistician 2001: 55(1); 19-24. **(Sample Size, Post Hoc Power)**
-   **[Binomial Program to Calculate Power or Sample
    Size](http://www.swogstat.org/Stat/Public/binomial/binomial.htm)**.
    Brent Hostetler, Southwest Oncology Group Statistical Center.
    Accessed on 2003-05-08. **(Sample Size, Proportion)** *Two Arm
    Binomial is a program to calculate either estimates of sample size
    or power for differences in proportions. The program allows for
    unequal sample size allocation between the two groups.*
    www.swogstat.org/Stat/Public/binomial/binomial.htm
-   **Statistical Strategies for Small Sample Research.** RH
    Hoyle (1999) Thousand Oaks: Sage Publications. **(Sample Size,
    General)**
-   **A simple method of sample size calculation for unequal-sample-size
    designs that use the logrank or t-test.** F. Y. Hsieh. Stat Med
    1987: 6(5); 577-81.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=3659667&dopt=Abstract)
    **(Sample Size, Logrank Test)**
-   **Sample size formulae for intervention studies with the cluster as
    unit of randomization.** F. Y. Hsieh. Stat Med 1988: 7(11);
    1195-201.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=3201045&dopt=Abstract)
    **(Sample Size, Cluster)**
-   **Sample size tables for logistic regression.** F. Y. Hsieh. Stat
    Med 1989: 8(7); 795-802.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=2772439&dopt=Abstract)
    **(Sample Size, Logistic)**
-   **A simple method of sample size calculation for linear and logistic
    regression.** F. Y. Hsieh, D. A. Bloch, M. D. Larsen. Stat Med 1998:
    17(14); 1623-34.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=9699234&dopt=Abstract)
    **(Sample Size, Logistic)**
-   **Sample-size calculations for the Cox proportional hazards
    regression model with nonbinary covariates.** F. Y. Hsieh, P. W.
    Lavori. Control Clin Trials 2000: 21(6); 552-60.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11146149&dopt=Abstract)
    **(Sample Size, Cox)**
-   **The ethics of underpowered clinical trials.** J. R. Hughes. Jama
    2002: 288(17); 2118; author reply 2119.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12413366&dopt=Abstract)
    **(Sample Size, Ethics)**
-   **The ethics of underpowered clinical trials.** J. E. Janosky. Jama
    2002: 288(17); 2118; author reply 2119.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12413365&dopt=Abstract)
    **(Sample Size, Ethics)**
-   **The Overemphasis On Power Analysis.** Thomas Knapp. Nursing
    Research 1996: 45(6); 379.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8941316&dopt=Abstract)
    **(Sample Size, Post Hoc Power)**
-   **How Many Subjects? Statistical Power Analysis in Research.**
    Helena Chmura Kraemer, Sue Thiemann (1987) Newbury Park, CA: Sage
    Publications. **(Sample Size, General)**
-   **[A more powerful test for comparing two Poisson
    means](http://www.mathpreprints.com/math/Preprint/krishna/20021020/1/?=&coll=Selection)**. K.
    Krishnamoorthy, Jessica Thomson, University of Louisiana at
    Lafayette. Accessed on 2003-02-10. **(Sample Size, Poisson
    Regression)** *The problems of hypothesis testing about two Poisson
    means is addressed. The usual conditional test (C-test) and a test
    based on estimated p-values (E-test) are considered. The exact
    properties of the tests are evaluated numerically. Numerical studies
    indicate is more powerful than the c-test. Power calculations for
    both tests are outlined. The test procedures are illustrated using
    two examples.*
    www.mathpreprints.com/math/Preprint/krishna/20021020/1/?=&coll=Selection
-   **Introduction to Sample Size Determination and Power Analysis for
    Clinical Trials.** John M. Lachin. Controlled Clinical Trials 1981:
    2(2); 93-113. **(Sample Size, General)**
-   **Power and Sample Size Evaluation for the McNemar Test With
    Application to Matched Case-Control Studies.** John M. Lachin.
    Statistics in Medicine 1992: 11(9); 1239-1251. **(Sample Size,
    McNemar)**
-   **Sample Sizes Based on the Log-Rank Statistic in Complex Clinical
    Trials.** Edward Lakatos. Biometrics 1988: 44(1); 229-241. **(Sample
    Size, Logrank Test)**
-   **Sample size calculations for within-patient comparisons with a
    binary or survival endpoint.** M. G. Law. Control Clin Trials 1996:
    17(3); 221-5. **(Sample Size, Survival)**
-   **A Monte Carlo study of the power of some two-sample tests.** ET
    Lee. Biometrika 1975: 62(2); 425-32. **(Sample Size, General)**
-   **[Java applets for power and sample
    size](http://www.stat.uiowa.edu/~rlenth/Power/)**. Russ Lenth,
    University of Iowa. Accessed on 2003-06-13. **(Statistics, Software,
    Free)** *Each selection provides a graphical interface for studying
    the power of one or more tests. They include sliders (convertible to
    number-entry fields) for varying parameters, and a simple provision
    for graphing one variable against another.*
    www.stat.uiowa.edu/\~rlenth/Power/
-   **Some Practical Guidelines for Effective Sample Size
    Determination.** R.V. Lenth. The American Statistician 2001: 55(3);
    187-193. [\[PDF\]](http://www.stat.uiowa.edu/techrep/tr303.pdf)
    **(Sample Size, General Sample Size, Post Hoc Power)**
-   **Post hoc power analysis: an idea whose time has passed?** M.
    Levine, M. H. Ensom. Pharmacotherapy 2001: 21(4); 405-9.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11310512&dopt=Abstract)
    [\[Abstract\]](http://www.atypon-link.com/PPI/doi/abs/10.1592/phco.21.5.405.34503)
    **(Sample Size, Post Hoc Power)**
-   **The ethics of underpowered clinical trials.** R. J. Lilford. Jama
    2002: 288(17); 2118-9; author reply 2119.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12413364&dopt=Abstract)
    **(Sample Size, Ethics)**
-   **Design and Analysis of Multiarm Clincial Trials with Survival
    Endpoints.** Ping-Yu Lin, Steve Dahlberg. Controlled Clinical Trials
    1995: 16(2); 119-130. **(Sample Size, Logrank Test)**
-   **Necessary Sample Size for Method Comparison Studies Based on
    Regression Analysis.** Kristian Linnet. Clinical Chemistry 1999:
    45(6); 882-894. **(Yet To Be Coded)**
-   **Design Sensitivity. Statistical Power for Experimental Research.**
    Mark W. Lipsey (1990) Newbury Park, California: SAGE Publications.
    **(Sample Size, General)**
-   **Sample size determination for studies of gene-environment
    interaction.** J. A. Luan, M. Y. Wong, N. E. Day, N. J. Wareham. Int
    J Epidemiol 2001: 30(5); 1035-40. **(Sample Size, General)**
-   **Sample size determination under an exponential model in the
    presence of a confounder and type I censoring.** K. J. Lui. Control
    Clin Trials 1992: 13(6); 446-58. **(Sample Size, Survival)**
-   **The Research Sample, Part II: Sample Size.** Thomas R. Lunsford,
    Brenda Rae Lunsford. Journal of Prosthetics & Orthotics 1995: 7(4);
    137-141. [\[Full
    text\]](http://www.oandp.org/jpo/library/1995_04_137.asp) **(Sample
    Size, T)**
-   **Why Have Recent Trials of Neuroprotective Agents in Head Injury
    Failed to Show Convincing Efficacy? A Pragmatic Analysis and
    Theoretical Considerations.** Andrew I.R. Maas, Ewout W. Steyerberg,
    Gordon D. Murray, Ross Bullock, Alexander Baethmann, Lawrence F.
    Marshall, Graham M. Teasdale. Neurosurgery 1999: 44(6); 1286-1298.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10371629&dopt=Abstract)
    **(Sample Size, Design Considerations)**
-   **Power analysis and determination of sample size for covariance
    structure modeling.** R MacCallum, M Browne, H Sugawara.
    Psychological Methods 1996: 1; 130-131. **(Sample Size, SEM)**
-   **Sample Size Tables for Clinical Studies.** David Machin, Michael
    Campbell, Peters Fayers, Alain Pinol (1997) Osney Mead, Oxford:
    Blackwell Science, Ltd. **(Sample Size, General)**
-   **The Value of a Post Hoc Power Analysis.** Richard Madsen,
    Heather V. Lochner, Mohit Bhandari, Paul Tornetta. J Bone Joint Surg
    Am 2002: 84(7); -b1272-. [\[Full
    text\]](http://www.ejbjs.org/cgi/content/full/84/7/1272/-b)
    **(Sample Size, Post Hoc Power)**
-   **Sample size requirements for comparing time-to-failure among k
    treatment groups.** R. W. Makuch, R. M. Simon. J Chronic Dis 1982:
    35(11); 861-7. **(Sample Size, Logrank Test)**
-   **A framework for power analysis using a structural equation
    modelling procedure.** J. N. Miles. BMC Med Res Methodol 2003: 3(1);
    27.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=14670092&dopt=Abstract)
    [\[Abstract\]](http://www.biomedcentral.com/1471-2288/3/27/abstract)
    [\[PDF\]](http://www.biomedcentral.com/content/pdf/1471-2288-3-27.pdf)
    **(Sample Size, SEM)**
-   **Interpreting the results of small trials.** F. Molnar, M.
    Man-Son-Hing, A. Byszewski, N. Azid. Cmaj 2000: 162(10); 1401.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10834038&dopt=Abstract)
    [\[Full text\]](http://www.cmaj.ca/cgi/content/full/162/10/1401)
    [\[PDF\]](http://www.cmaj.ca/cgi/reprint/162/10/1401.pdf) **(Sample
    Size, Small Trials)**
-   **Power calculations for general linear multivariate models
    including repeated measures applications.** K. E. Muller, L. M.
    Lavange. Journal of the American Statistical Association 1992: 87;
    1209-16. **(Sample Size, Regression)**
-   **Power in comparing Poisson means: I. One-sample test.** LS Nelson.
    Journal of Quality Technology 1991: 23(1); 68-70. **(Sample Size,
    Poisson Regression)**
-   **Power in comparing Poisson means: II. Two-sample test.** LS
    Nelson. Journal of Quality Technology 1991: 23(2); 163-66. **(Sample
    Size, Poisson Regression)**
-   **Within-subject variability and per cent change for significance of
    spirometry in normal subjects and in patients with cystic
    fibrosis.** B. G. Nickerson, R. J. Lemen, C. B. Gerdes, M. J.
    Wegmann, G. Robertson. Am Rev Respir Dis 1980: 122(6); 859-66.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=7458059&dopt=Abstract)
    **(Sample Size, General)**
-   **Sample size calculations in studies of test accuracy.** Nancy
    Obuchowksi. Statistical Methods in Medical Research 1998: 7; 371-92.
    **(Sample Size, Diagnostic)**
-   **Sample Size Choice: Charts for Experiments with Linear Models.**
    Robert E. Odeh, Martin Fox (1991) New York: Marcel Dekker, Inc.
    **(Statistics, Sample Size)**
-   **Approaches to sample size calculation in comparative studies.** RM
    Pandey. Indian J Pediatr 1999: 66; 533-38.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10798108&dopt=Abstract)
    **(Sample Size, Guidelines)**
-   **Further statistics in dentistry. Part 4: Clinical trials 2.** A.
    Petrie, J. S. Bulman, J. F. Osborn. Br Dent J 2002: 193(10); 557-61.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12481177&dopt=Abstract)
    [\[Abstract\]](http://www.nature.com/cgi-taf/dynapage.taf?file=/bdj/journal/v193/n10/abs/4801627a.html)
    **(Sample Size, Resources)**
-   **Sample size calculations for population- and family-based
    case-control association studies on marker genotypes.** R. M.
    Pfeiffer, M. H. Gail. Genet Epidemiol 2003: 25(2); 136-48.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=11902582&dopt=Abstract)
    **(Sample Size, Genetics)**
-   **A comparison of the power of two tests for qualitative
    interactions.** S. Piantadosi, M. H. Gail. Stat Med 1993: 12(13);
    1239-48.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8095008&dopt=Abstract)
    **(Sample Size, Regression)**
-   **Invited Commentary: Ethics and Sample Size - Another View.**
    Ross L. Prentice. American Journal Epidemiology 2005; **(Sample
    Size, Ethics)**
-   **Cluster randomised trials in maternal and child health:
    implications for power and sample size.** Richard Reading, I Harvey,
    M Mclean. Arch Dis Child 2000: 82(1); 79-83.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=10630921&dopt=Abstract)
    [\[Abstract\]](http://adc.bmjjournals.com/cgi/content/abstract/82/1/79)
    [\[Full text\]](http://adc.bmjjournals.com/cgi/content/full/82/1/79)
    [\[PDF\]](http://adc.bmjjournals.com/cgi/reprint/82/1/79.pdf)
    **(Sample Size, Cluster)**
-   **Statistical methods in epidemioogy. II: a commonsense approach to
    sample size estimation.** Alan Rigby. Disability and Rehabilitation
    1998: 20(11); 405-10. **(Sample Size, General)**
-   **Sample size calculations for two-group repeated-measures
    experiments.** J Rochon. Biometrics 1991: 47(?); 1383-1398.
    **(Sample Size, Longitudinal)**
-   **Planning group sizes in clinical trials with a continuous outcome
    and repeated measures.** H Schouten. Stats in Medicine 1999: 18(3);
    255-64. **(Sample Size, Repeated measures)**
-   **Sample size formula with a continuous outcome for unequal group
    sizes and unequal variances.** H Schouten. Statistics in Medicine
    1999: 18(1); 87-91. **(Sample Size, T)**
-   **[Sample Size and Design Effect: Introduction and Review
    \[pdf\]](http://http://www.amstat.org/sections/srms/January2003Newsletter.pdf)**.
    Gene Shackman, Newsletter of the Survey Research Methods Section,
    January 2003, page 8. Accessed on 2003-05-08. **(Sample Size,
    Cluster)** *Determining sample size is an important step in
    administering surveys. For designs other than simple random samples,
    one crucial part in determining size is the design effect. This is
    an adjustment for any effects that the sampling design may have on
    efficiency of the sample. In this article I describe the design
    effect, and briefly review some typical design effect values.*
    www.amstat.org/sections/srms/January2003Newsletter.pdf
-   **[Sample size and design effect
    \[pdf\]](http://www.albany.edu/~areilly/albany_asa/confweb01/abstract/Download/shackman.pdf)**.
    Gene Shackman, Presented at the 2001 conference of the Albany
    Chapter of the American Statistical Association. Accessed on
    2003-05-08. **(Sample Size, Cluster)** *This presentation is a brief
    introduction to the design effect, which is an adjustment that
    should be used to determine survey sample size.*
    www.albany.edu/\~areilly/albany\_asa/confweb01/abstract/Download/shackman.pdf
-   **Sample size calculation for complex clinical trials with survival
    endpoints.** JH Shih. Control Clin Trials 1995: 16(6); 395-407.
    **(Sample Size, Logrank Test)**
-   **CRC Handbook of Sample Size Guidelines for Clinical Trials.**
    Jonathan J. Shuster (1990) Boca Raton, FL: CRC Press. **(Statistics,
    Sample Size)**
-   **Sample size for Poisson regression.** DF Signorini. Biometrika
    1991: 78(2); 446-50. **(Sample Size, Poisson Regression)**
-   **Likelihood ratios with confidence: sample size estimation for
    diagnostic test studies.** DL Simel, GP Samsa, DB Matchar. J Clin
    Epidemiol 1991: 44(8); 763-70.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=1941027&dopt=Abstract)
    **(Sample Size, Diagnostic)**
-   **Confidence limit analyses should replace power calculations in the
    interpretation of epidemiologic studies.** AH Smith, MN Bates.
    Epidemiology 1992: 3(5); 449-52.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=1391138&dopt=Abstract)
    **(Sample Size, Post Hoc Power)**
-   **[One sample
    binomial](http://www.swogstat.org/Stat/Public/one_binomial.htm)**.
    Southwest Oncology Group Statistical Center. Accessed on 2003-08-11.
    **(Sample Size, Proportions)** *One Arm Binomial program calculates
    either estimates of sample size or power for one sample binomial
    problem. The first button calculates approximate power or sample
    size and critical values (reject if \>= critical value). The second
    button calculates "exact" power and alpha for the given null and
    alternative proportions and sample size. Note, sample size and null
    and alternative proportions can be changed before using the second
    button.* www.swogstat.org/Stat/Public/one\_binomial.htm
-   **[One Sample
    Normal](http://www.swogstat.org/Stat/Public/one_normal.htm)**.
    Southwest Oncology Group Statistical Center. Accessed on 2003-08-11.
    **(Sample Size, Normal)** *One Arm Normal is a program to calculate
    either estimates of sample size or power for one sample normal
    problem.* www.swogstat.org/Stat/Public/one\_normal.htm
-   **[Two Arm Normal Sample Size and
    Power](http://www.swogstat.org/Stat/Public/two_normal.htm)**.
    Southwest Oncology Group Statistical Center. Accessed on 2003-08-11.
    **(Sample Size, T)** *Two Arm Normal is a program to calculate
    either estimates of sample size or power for differences in means.
    The program allows for unequal sample size allocation between the
    two groups.* www.swogstat.org/Stat/Public/two\_normal.htm
-   **Persistent erroneous interpretation of negative data and
    assessment of statistical power.** Toshiaki Tachibana. Perceptual
    and Motor Skills 1980: 51; 37-38. **(Sample Size, General)**
-   **Statistical design and monitoring of the Carotene and Retinol
    Efficacy Trial (CARET).** Mark D Thornquist, Gilbert S Omenn, Gary E
    Goodman, James E Grizzle, Linda Rosenstock, Scott Barnhart, Garnet L
    Anderson, Samuel Hammar, John Balmes, Martin Cherniack, James Cone,
    Mark R Cullen, Andrew Glass, James P Keogh, Jr Meyskens, Frank,
    Barbara Valanis, Jr Williams, James H. Controlled Clinical Trials
    1993: 14(4); 308-24.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=8365195&dopt=Abstract)
    **(Sample Size, Example)**
-   **Economics in sample size determination for clinical trials.**
    David J Torgerson. Q J Med 1995: 88; 517-21. **(Sample Size,
    General)**
-   **Power and sample size calculations for generalized regression
    models with covariate measurement error.** TD Tosteson, JS Buzas, E
    Demidenko, M Karagas. Stat Med 2003: 22(7); 1069-82.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=12652554&dopt=Abstract)
    [\[Abstract\]](http://www3.interscience.wiley.com/cgi-bin/abstract/103529485/START)
    **(Sample Size, Logistic)**
-   **[Power Calculator](http://calculators.stat.ucla.edu/powercalc/)**.
    UCLA Department of Statistics. Accessed on 2004-01-19. **(Sample
    Size, Calculators)** *Sorry, the power calculator is provided
    without support. It is based upon the more extensive program STPLAN
    by Barry Brown et al. which is available in the file:
    ftp://odin.mdacc.tmc.edu/pub/source/dstplan-4.2.tar.gz. STPLAN
    contains documentation for the power calculations and the fortran
    program allows power calculations for several other distributions in
    addition to those on our power calculator page. If you encounter any
    errors (the program crashing, the server not responding, files not
    found, etc.) then please let me know through the email link below. I
    hope you find the calculator useful.*
    calculators.stat.ucla.edu/powercalc/
-   **[STRUTS: Statistical Rules of Thumb. Chapter 2. Sample
    Size](http://www.nrcse.washington.edu/research/eo-1.html)**. Gerald
    van Belle, Steve Millard, University of Washington: Departments of
    Environmental Health and Biostatistics. Accessed on 2003-07-10.
    **(Sample Size, Quick)** *Welcome to the Statistical Rules of Thumb
    webpage! Chapter 2 can be downloaded by clicking on Book Contents on
    the left and then selecting Chapter 2. The Monthly Rule section
    discusses additional aspects not found in the book, contains
    comments by readers, or develops a new rule. Check it out; the topic
    is indicated in the month heading. Send me any rules you may have,
    or use, in your work. I will consider listing and will always
    acknowledge. Comments on the webpage are always appreciated. Linked
    you will find an Adobe PDF file: Chapter 2 of STRUTS: Statistical
    Rules of Thumb, by Gerald van Belle and Steve Millard. Our intent is
    to give some simple rules of thumb that are widely applicable,
    robust, elegant and capture key statistical concepts. A statistical
    rule of thumb provides a framework for considering statistical
    questions such as sample size, association design of experiments
    (topics that are usually interrelated).*
    www.nrcse.washington.edu/research/eo-1.html
-   **Sample size and power estimation for studies with health related
    quality of life outcomes: a comparison of four methods using the
    SF-36.** SJ Walters. Health Qual Life Outcomes 2004: 2(1); 26.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=15161494&dopt=Abstract)
    [\[Abstract\]](http://www.hqlo.com/content/2/1/26/abstract) [\[Full
    text\]](http://www.hqlo.com/content/2/1/26)
    [\[PDF\]](http://www.hqlo.com/content/pdf/1477-7525-2-26.pdf)
    **(Sample Size, Ordinal)**
-   **[Power analysis
    examples](http://www.angelfire.com/wv/bwhomedir/spss/power_analysis.txt)**.
    Bruce Weaver. Accessed on 2003-01-20. **(Sample Size, General)**
    *"The following examples are from a paper by D'Amico, Neilands,
    and Zambarano in Behavior Research Methods, Instruments, &
    Computers, 2001, 33(4), 479-484. These examples use the MATRIX DATA
    command to input the data. For a brief explanation of how this
    works, go to www.utexas.edu/cc/faqs/stat/spss/spss33.html. Example
    1: ANCOVA with 3 groups and 2 covariates. Example 2: MANOVA with 3
    groups and 2 dependent variables. Example 3: Mixed design
    (between-within) ANOVA."*
    www.angelfire.com/wv/bwhomedir/spss/power\_analysis.txt
-   **Sample size for logistic repression with small response
    probability.** Alice Whittemore. Journal of the American Statistical
    Association 1981: 76(373); 27-32. **(Sample Size, Logistic)**
-   **Sample-size calculation for a log-transformed outcome measure.**
    Rory Wolfe, John B Carlin. Controlled Clinical Trials 1999: 20;
    547-554. **(Sample Size, Lognormal)**
-   **Sample size nomograms for interpreting negative clinical
    studies.** MJ Young, EA Bresnitz, BL Strom. Annals of Internal
    Medicine 1983: 99(2); 248-251.
    [\[Medline\]](http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&list_uids=6881780&dopt=Abstract)
    **(Sample Size, General)**
-   **[Power
    analysis](http://seamonkey.ed.asu.edu/~alex/teaching/WBI/power_es.html)**.
    Chong-ho Yu. Accessed on 2003-02-10. **(Sample Size, General)**
    *Power is determined by the following: Alpha level, Effect size,
    Sample size. Generally speaking, when the alpha level, the effect
    size, or the sample size increases, the power level increases.
    Please view this QuickTime animated demo to learn the above
    relationships If you want to examine the relationships frame by
    frame, please look at this Shockwave slide show (Caution: Both
    modules are large in file size, please view them through a T1
    network rather than a modem connection).*
    seamonkey.ed.asu.edu/\~alex/teaching/WBI/power\_es.html
