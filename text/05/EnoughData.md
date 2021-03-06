---
title: Do I have enough data after 24 months of time?
author: Steve Simon
date: 2005-04-05
categories:
- Blog post
tags:
- Clinical importance
- Early stopping
output: html_document
---
Someone asked me about a correlation coefficient that he computed on a
data set that represented 24 months of data collection. A particular
correlation of interest (a correlation between staff turnover and
resident falls) was not significantly different from zero, but this
person wanted to know how much more data to collect before safely
concluding that no relation has been or likely will be established.

First compute a confidence interval for the correlation coefficient. If
that interval is so narrow that you can rule out the possibility of a
clinically important shift, then your sample size is large enough. How
large a correlation is clinically significant? That\'s very hard to say.
The correlation is a unitless quantity, and usually you need some
measure in physical units (meters, kilograms, etc.) before you can talk
about clinical importance.

You might want to look instead at the regression coefficient which does
have units of measure in it. I assume that turnover is your independent
variable and falls is your dependent variable. Think, then, about how
much of an increase in falls per unit change in turnover is important
from a clinical perspective. If that value is (I\'m just making up a
number) 0.5, then your sample size is adequate as long as the confidence
interval for the slope is entirely inside plus/minus 0.5.

Please realize that an outsider like me can\'t tell you what\'s
clinically important, because that requires clinical judgment, something
I lack. A good general overview about clinical importance is on my web
pages at

\--\> [Stats: Confidence intervals](../04/confidence.html)

If this is an ongoing project, perhaps you might also find some value to
using a control chart. A control chart allows for continuous monitoring
of important processes. Who knows, maybe something that is not apparent
now will become apparent because of some of the recent changes in health
care? I have a brief outline of control charts at

\--\> [Stats: Guidelines for quality control models](../99/quality.html)

Another issue is that it is dangerous to look at 12 months worth of
data, then 13, then 14, etc. because you are testing multiple times on a
single hypothesis. It\'s sort of like being dealt three poker hands and
choosing which one you like best. It would be better to select a sample
size (time interval) prior to data collection and then test only once.
If you do test multiple times, you need to adjust your alpha level. See

\--\> [Stats: Interim analysis](../99/interim.html) and

\--\> [Stats: Early stopping in an animal study (July 1,
2004)](../04/EarlyStoppingAnimal.asp)

You can find an [earlier version](http://www.pmean.com/05/EnoughData.html) of this page on my [original website](http://www.pmean.com/original_site.html).
You can find an [earlier version](http://www.pmean.com/05/EntirePopulation.html) of this page on my [original website](http://www.pmean.com/original_site.html). Sampling the entire population
You can find an [earlier version](http://www.pmean.com/05/Equipoise.html) of this page on my [original website](http://www.pmean.com/original_site.html). More thoughts on equipoise
You can find an [earlier version](http://www.pmean.com/05/EquipoiseA.html) of this page on my [original website](http://www.pmean.com/original_site.html). Two articles debating equipoise
You can find an [earlier version](http://www.pmean.com/05/EthicsCAM.html) of this page on my [original website](http://www.pmean.com/original_site.html). Ethical principles for Complementary and Alternative Medicine 
You can find an [earlier version](http://www.pmean.com/05/EthicsRandomization.html) of this page on my [original website](http://www.pmean.com/original_site.html). The ethics of randomization
You can find an [earlier version](http://www.pmean.com/05/EvidenceBasedMedicine.html) of this page on my [original website](http://www.pmean.com/original_site.html). Overview of evidence-based-medicine
You can find an [earlier version](http://www.pmean.com/05/FairUse.html) of this page on my [original website](http://www.pmean.com/original_site.html). Fair Use of copyrighted material
You can find an [earlier version](http://www.pmean.com/05/FalsePositive.html) of this page on my [original website](http://www.pmean.com/original_site.html). The costs of a false positive test
You can find an [earlier version](http://www.pmean.com/05/FindingGenes.html) of this page on my [original website](http://www.pmean.com/original_site.html). Finding more information about a gene
You can find an [earlier version](http://www.pmean.com/05/FindingGenesB.html) of this page on my [original website](http://www.pmean.com/original_site.html). More on discovering gene information
You can find an [earlier version](http://www.pmean.com/05/FishersExact.html) of this page on my [original website](http://www.pmean.com/original_site.html). Web page for Fisher's Exact test
You can find an [earlier version](http://www.pmean.com/05/ForestPlots.html) of this page on my [original website](http://www.pmean.com/original_site.html). Forest plots
You can find an [earlier version](http://www.pmean.com/05/FunnyFractions.html) of this page on my [original website](http://www.pmean.com/original_site.html). Fractions are funny
You can find an [earlier version](http://www.pmean.com/05/GeneExpression.html) of this page on my [original website](http://www.pmean.com/original_site.html). Analysis of Gene Expression Data Short Course
You can find an [earlier version](http://www.pmean.com/05/GeometricDistribution.html) of this page on my [original website](http://www.pmean.com/original_site.html). Geometric distribution
You can find an [earlier version](http://www.pmean.com/05/GoogleScholar.html) of this page on my [original website](http://www.pmean.com/original_site.html). Counterpoint on Google Scholar
You can find an [earlier version](http://www.pmean.com/05/GroupSequential.html) of this page on my [original website](http://www.pmean.com/original_site.html). Group Sequential Monitoring of Clinical Trials in R
You can find an [earlier version](http://www.pmean.com/05/GrowthCurves.html) of this page on my [original website](http://www.pmean.com/original_site.html). Growth curves
You can find an [earlier version](http://www.pmean.com/05/HapMap.html) of this page on my [original website](http://www.pmean.com/original_site.html). The HapMap project
You can find an [earlier version](http://www.pmean.com/05/HardLessons.html) of this page on my [original website](http://www.pmean.com/original_site.html). Hard learned lessons
You can find an [earlier version](http://www.pmean.com/05/HarmonicMean.html) of this page on my [original website](http://www.pmean.com/original_site.html). A surprising application of the harmonic mean
You can find an [earlier version](http://www.pmean.com/05/HedgesG.html) of this page on my [original website](http://www.pmean.com/original_site.html). Hedge's G
You can find an [earlier version](http://www.pmean.com/05/IncidenceDensity.html) of this page on my [original website](http://www.pmean.com/original_site.html). Incidence density ratio
You can find an [earlier version](http://www.pmean.com/05/InferentialDescriptive.html) of this page on my [original website](http://www.pmean.com/original_site.html). Inferential and descriptive statistics
You can find an [earlier version](http://www.pmean.com/05/InformationTheory.html) of this page on my [original website](http://www.pmean.com/original_site.html). More on information theory models
You can find an [earlier version](http://www.pmean.com/05/InformationTheoryA.html) of this page on my [original website](http://www.pmean.com/original_site.html). Information theory and microarrays
You can find an [earlier version](http://www.pmean.com/05/InformationTheoryB.html) of this page on my [original website](http://www.pmean.com/original_site.html). Information content of a continuous distribution
You can find an [earlier version](http://www.pmean.com/05/Intuition.html) of this page on my [original website](http://www.pmean.com/original_site.html). How good is your intuition?
You can find an [earlier version](http://www.pmean.com/05/LanguageResources.html) of this page on my [original website](http://www.pmean.com/original_site.html). Language resources
You can find an [earlier version](http://www.pmean.com/05/LibrariesR.html) of this page on my [original website](http://www.pmean.com/original_site.html). Two nice R libraries
You can find an [earlier version](http://www.pmean.com/05/MMalgorithm.html) of this page on my [original website](http://www.pmean.com/original_site.html). Optimization using the MM algorithm
You can find an [earlier version](http://www.pmean.com/05/MathematicaMatlab.html) of this page on my [original website](http://www.pmean.com/original_site.html). Using Mathematica and Matlab for Statistics
You can find an [earlier version](http://www.pmean.com/05/MeasuringAgreement.html) of this page on my [original website](http://www.pmean.com/original_site.html). Measuring agreement
You can find an [earlier version](http://www.pmean.com/05/MedStats.html) of this page on my [original website](http://www.pmean.com/original_site.html). MedStats discussion group
You can find an [earlier version](http://www.pmean.com/05/MediaInterviews.html) of this page on my [original website](http://www.pmean.com/original_site.html). Media interview tips
You can find an [earlier version](http://www.pmean.com/05/MergingInR.html) of this page on my [original website](http://www.pmean.com/original_site.html). Merging in R
You can find an [earlier version](http://www.pmean.com/05/MetaanalysisArticles.html) of this page on my [original website](http://www.pmean.com/original_site.html). Some articles on meta-analysis
You can find an [earlier version](http://www.pmean.com/05/MetaanalysisCritique.html) of this page on my [original website](http://www.pmean.com/original_site.html). Responding to a critique of meta-analysis
You can find an [earlier version](http://www.pmean.com/05/MetaanalysisTalk.html) of this page on my [original website](http://www.pmean.com/original_site.html). Meta-analysis talk
You can find an [earlier version](http://www.pmean.com/05/MicroArrayA.html) of this page on my [original website](http://www.pmean.com/original_site.html). Review articles on microarrays
You can find an [earlier version](http://www.pmean.com/05/MicroArrayB.html) of this page on my [original website](http://www.pmean.com/original_site.html). More articles on microarrays
You can find an [earlier version](http://www.pmean.com/05/MicroArrayD.html) of this page on my [original website](http://www.pmean.com/original_site.html). More on normalization
You can find an [earlier version](http://www.pmean.com/05/MicroArrayE.html) of this page on my [original website](http://www.pmean.com/original_site.html). Publicly available microarray data
You can find an [earlier version](http://www.pmean.com/05/MicroArrayF.html) of this page on my [original website](http://www.pmean.com/original_site.html). Statistical Analysis of Microarrays by Insightful
You can find an [earlier version](http://www.pmean.com/05/MicroarrayC.html) of this page on my [original website](http://www.pmean.com/original_site.html). Microarray data analysis, again
You can find an [earlier version](http://www.pmean.com/05/MicroarrayG.html) of this page on my [original website](http://www.pmean.com/original_site.html). RMA normalization of microarrays
You can find an [earlier version](http://www.pmean.com/05/ModeratorVariable.html) of this page on my [original website](http://www.pmean.com/original_site.html). Moderator variables
You can find an [earlier version](http://www.pmean.com/05/MolassesMilk.html) of this page on my [original website](http://www.pmean.com/original_site.html). Searching for information about the molasses with milk enema 
You can find an [earlier version](http://www.pmean.com/05/Moments.html) of this page on my [original website](http://www.pmean.com/original_site.html). Expected value and moments
You can find an [earlier version](http://www.pmean.com/05/MonetaryIncentives.html) of this page on my [original website](http://www.pmean.com/original_site.html). Monetary incentives
You can find an [earlier version](http://www.pmean.com/05/MovingRObjects.html) of this page on my [original website](http://www.pmean.com/original_site.html). Moving R objects
You can find an [earlier version](http://www.pmean.com/05/MultipleComparisons.html) of this page on my [original website](http://www.pmean.com/original_site.html). Step-down procedures for multiple comparisons
You can find an [earlier version](http://www.pmean.com/05/NamingGenes.html) of this page on my [original website](http://www.pmean.com/original_site.html). Naming conventions for genes, proteins, etc.
You can find an [earlier version](http://www.pmean.com/05/NegativeMicroarray.html) of this page on my [original website](http://www.pmean.com/original_site.html). A totally negative microarray experiment
You can find an [earlier version](http://www.pmean.com/05/NondestructiveEditing.html) of this page on my [original website](http://www.pmean.com/original_site.html). Non-destructive data editing
You can find an [earlier version](http://www.pmean.com/05/NonrandomSamples.html) of this page on my [original website](http://www.pmean.com/original_site.html). Non-random samples
You can find an [earlier version](http://www.pmean.com/05/NonspecificDiagnostic.html) of this page on my [original website](http://www.pmean.com/original_site.html). A nonspecific diagnostic test
You can find an [earlier version](http://www.pmean.com/05/NormalProbabilities.html) of this page on my [original website](http://www.pmean.com/original_site.html). Computing normal probabilities
You can find an [earlier version](http://www.pmean.com/05/NumbersTablesCharts.html) of this page on my [original website](http://www.pmean.com/original_site.html). Presenting Numbers, Tables, and Charts
You can find an [earlier version](http://www.pmean.com/05/ObjectOrientedR.html) of this page on my [original website](http://www.pmean.com/original_site.html). Object oriented features of R
You can find an [earlier version](http://www.pmean.com/05/OddsRatios.html) of this page on my [original website](http://www.pmean.com/original_site.html). Odds ratios less than one
You can find an [earlier version](http://www.pmean.com/05/OpenEndedQuestions.html) of this page on my [original website](http://www.pmean.com/original_site.html). Open-ended questions on a survey
You can find an [earlier version](http://www.pmean.com/05/OpenSite.html) of this page on my [original website](http://www.pmean.com/original_site.html). Another open site closes
You can find an [earlier version](http://www.pmean.com/05/OptimalThreshold.html) of this page on my [original website](http://www.pmean.com/original_site.html). Determining the optimal threshold for a diagnostic test
You can find an [earlier version](http://www.pmean.com/05/OrdinalData.html) of this page on my [original website](http://www.pmean.com/original_site.html). Summing ordinal data
You can find an [earlier version](http://www.pmean.com/05/PairedAvailability.html) of this page on my [original website](http://www.pmean.com/original_site.html). The paired availability design
You can find an [earlier version](http://www.pmean.com/05/PatientsReactions.html) of this page on my [original website](http://www.pmean.com/original_site.html). Patients' reactions to finding out they were in the placebo 
You can find an [earlier version](http://www.pmean.com/05/PermutationTests.html) of this page on my [original website](http://www.pmean.com/original_site.html). Permutation tests for microarrays
You can find an [earlier version](http://www.pmean.com/05/PostHocPower.html) of this page on my [original website](http://www.pmean.com/original_site.html). Post hoc power is never justified
You can find an [earlier version](http://www.pmean.com/05/PowerPointA.html) of this page on my [original website](http://www.pmean.com/original_site.html). PowerPoint Counterpoint
You can find an [earlier version](http://www.pmean.com/05/PracticeGuidelines.html) of this page on my [original website](http://www.pmean.com/original_site.html). Developing good practice guidelines
You can find an [earlier version](http://www.pmean.com/05/ProfileAnalysis.html) of this page on my [original website](http://www.pmean.com/original_site.html). Profile analysis and MANOVA
You can find an [earlier version](http://www.pmean.com/05/PubMedTags.html) of this page on my [original website](http://www.pmean.com/original_site.html). PubMed tags
You can find an [earlier version](http://www.pmean.com/05/PublicAccess.html) of this page on my [original website](http://www.pmean.com/original_site.html). Public access to publications from NIH-funded research
You can find an [earlier version](http://www.pmean.com/05/PublicationQuality.html) of this page on my [original website](http://www.pmean.com/original_site.html). Quality of published research
You can find an [earlier version](http://www.pmean.com/05/Publicon.html) of this page on my [original website](http://www.pmean.com/original_site.html). Publicon software
You can find an [earlier version](http://www.pmean.com/05/QualityControlExercises.html) of this page on my [original website](http://www.pmean.com/original_site.html). Quality control exercises
You can find an [earlier version](http://www.pmean.com/05/QualityControlExercsiesPart2.html) of this page on my [original website](http://www.pmean.com/original_site.html). Quality control exercises, Part 2
You can find an [earlier version](http://www.pmean.com/05/QuotesFebruary.html) of this page on my [original website](http://www.pmean.com/original_site.html). Quotes for February
You can find an [earlier version](http://www.pmean.com/05/QuotesJanuary.html) of this page on my [original website](http://www.pmean.com/original_site.html). Quotes for the month of January
You can find an [earlier version](http://www.pmean.com/05/QuotesMarch.html) of this page on my [original website](http://www.pmean.com/original_site.html). Quotes for the month of March
You can find an [earlier version](http://www.pmean.com/05/ROCcurve.html) of this page on my [original website](http://www.pmean.com/original_site.html). Application of the ROC curve to microarray data
You can find an [earlier version](http://www.pmean.com/05/RaceEthnicity.html) of this page on my [original website](http://www.pmean.com/original_site.html). Coding race/ethnicity
You can find an [earlier version](http://www.pmean.com/05/Randomization.html) of this page on my [original website](http://www.pmean.com/original_site.html). An inefficient approach to randomization
You can find an [earlier version](http://www.pmean.com/05/RandomizedTrials.html) of this page on my [original website](http://www.pmean.com/original_site.html). More on the weaknesses of randomized trials
You can find an [earlier version](http://www.pmean.com/05/RandomizedTrialsA.html) of this page on my [original website](http://www.pmean.com/original_site.html). Effective communication about randomized clinical trials 
You can find an [earlier version](http://www.pmean.com/05/RegularExpressions.html) of this page on my [original website](http://www.pmean.com/original_site.html). More on regular expressions
You can find an [earlier version](http://www.pmean.com/05/ReportCards.html) of this page on my [original website](http://www.pmean.com/original_site.html). Stats: Report cards
You can find an [earlier version](http://www.pmean.com/05/RetractedArticles.html) of this page on my [original website](http://www.pmean.com/original_site.html). The fate of retracted articles
You can find an [earlier version](http://www.pmean.com/05/RetroactivePrayer.html) of this page on my [original website](http://www.pmean.com/original_site.html). More on the retroactive prayer study
You can find an [earlier version](http://www.pmean.com/05/ReweightingData.html) of this page on my [original website](http://www.pmean.com/original_site.html). Re-weighting the data
You can find an [earlier version](http://www.pmean.com/05/SPSSversion14.html) of this page on my [original website](http://www.pmean.com/original_site.html). What's New in SPSS version 14.0
You can find an [earlier version](http://www.pmean.com/05/SafetyMiner.html) of this page on my [original website](http://www.pmean.com/original_site.html). Seminar notes, S-PLUS Clinical Safety Miner
You can find an [earlier version](http://www.pmean.com/05/SampleSize.html) of this page on my [original website](http://www.pmean.com/original_site.html). Relationship between sample size and p-values
You can find an [earlier version](http://www.pmean.com/05/SampleSizeA.html) of this page on my [original website](http://www.pmean.com/original_site.html). Sample size calculation for a nonparametric test
You can find an [earlier version](http://www.pmean.com/05/SampleSizeB.html) of this page on my [original website](http://www.pmean.com/original_site.html). Sample size for a binomial confidence interval
You can find an [earlier version](http://www.pmean.com/05/SampleSizeBinary.html) of this page on my [original website](http://www.pmean.com/original_site.html). Sample size for a binary endpoint
You can find an [earlier version](http://www.pmean.com/05/ScienceMentoring.html) of this page on my [original website](http://www.pmean.com/original_site.html). Science mentoring
You can find an [earlier version](http://www.pmean.com/05/ScientificMisconduct.html) of this page on my [original website](http://www.pmean.com/original_site.html). Allegations of scientific misconduct
You can find an [earlier version](http://www.pmean.com/05/ScientificValidity.html) of this page on my [original website](http://www.pmean.com/original_site.html). IRBs and scientific validity
You can find an [earlier version](http://www.pmean.com/05/SearchInternet.html) of this page on my [original website](http://www.pmean.com/original_site.html). Searching the Internet
You can find an [earlier version](http://www.pmean.com/05/SearchLiterature.html) of this page on my [original website](http://www.pmean.com/original_site.html). Searching the literature
You can find an [earlier version](http://www.pmean.com/05/SearchLiteratureA.html) of this page on my [original website](http://www.pmean.com/original_site.html). More on searching the literature
You can find an [earlier version](http://www.pmean.com/05/SearchLiteratureB.html) of this page on my [original website](http://www.pmean.com/original_site.html). Another search for evidence
You can find an [earlier version](http://www.pmean.com/05/SearchLiteratureC.html) of this page on my [original website](http://www.pmean.com/original_site.html). A third search for the evidence
You can find an [earlier version](http://www.pmean.com/05/SelectiveReporting.html) of this page on my [original website](http://www.pmean.com/original_site.html). Selective reporting of research findings
You can find an [earlier version](http://www.pmean.com/05/SelfExperimentation.html) of this page on my [original website](http://www.pmean.com/original_site.html). Self experimentation
You can find an [earlier version](http://www.pmean.com/05/SensitivityError.html) of this page on my [original website](http://www.pmean.com/original_site.html). An error slips through the peer review process
You can find an [earlier version](http://www.pmean.com/05/SeventeenYears.html) of this page on my [original website](http://www.pmean.com/original_site.html). Seventeen years between research and practice
You can find an [earlier version](http://www.pmean.com/05/SideEffects.html) of this page on my [original website](http://www.pmean.com/original_site.html). Side effects of Cox-2 inhibitors
You can find an [earlier version](http://www.pmean.com/05/SingleObservation.html) of this page on my [original website](http://www.pmean.com/original_site.html). When one group only has a single observation
You can find an [earlier version](http://www.pmean.com/05/SixtyPercentDrop.html) of this page on my [original website](http://www.pmean.com/original_site.html). What does a 60% drop mean?
You can find an [earlier version](http://www.pmean.com/05/SlowProgress.html) of this page on my [original website](http://www.pmean.com/original_site.html). Slow progress on my weblog
You can find an [earlier version](http://www.pmean.com/05/SmallPvalue.html) of this page on my [original website](http://www.pmean.com/original_site.html). A small p-value does not mean a large difference
You can find an [earlier version](http://www.pmean.com/05/SmallRelativeRisk.html) of this page on my [original website](http://www.pmean.com/original_site.html). Small relative risks
You can find an [earlier version](http://www.pmean.com/05/SpacingHtml.html) of this page on my [original website](http://www.pmean.com/original_site.html). Preserving spacing in html code
You can find an [earlier version](http://www.pmean.com/05/SpectrumBias.html) of this page on my [original website](http://www.pmean.com/original_site.html). Spectrum Bias
You can find an [earlier version](http://www.pmean.com/05/SplusCorrelatedData.html) of this page on my [original website](http://www.pmean.com/original_site.html). The S+ CorrelatedData Library
You can find an [earlier version](http://www.pmean.com/05/SplusVersion7.html) of this page on my [original website](http://www.pmean.com/original_site.html). S-plus version 7
You can find an [earlier version](http://www.pmean.com/05/StandardError.html) of this page on my [original website](http://www.pmean.com/original_site.html). Standard deviation versus standard error
You can find an [earlier version](http://www.pmean.com/05/StatisticsSoftware.html) of this page on my [original website](http://www.pmean.com/original_site.html). Free statistics software
You can find an [earlier version](http://www.pmean.com/05/StepwiseRegression.html) of this page on my [original website](http://www.pmean.com/original_site.html). Stepwise regression to screen for covariates
You can find an [earlier version](http://www.pmean.com/05/StopStudy.html) of this page on my [original website](http://www.pmean.com/original_site.html). When can I stop my CQI study?
You can find an [earlier version](http://www.pmean.com/05/StratifiedCoxRegression.html) of this page on my [original website](http://www.pmean.com/original_site.html). Stratified Cox regression models
You can find an [earlier version](http://www.pmean.com/05/StringsR.html) of this page on my [original website](http://www.pmean.com/original_site.html). String manipulations in R
You can find an [earlier version](http://www.pmean.com/05/SummaryROC.html) of this page on my [original website](http://www.pmean.com/original_site.html). Summary Receiver Operating Characteristic Curve
You can find an [earlier version](http://www.pmean.com/05/SurrogateOutcomes.html) of this page on my [original website](http://www.pmean.com/original_site.html). Surrogate outcomes
You can find an [earlier version](http://www.pmean.com/05/TaguchiMethods.html) of this page on my [original website](http://www.pmean.com/original_site.html). Taguchi methods
You can find an [earlier version](http://www.pmean.com/05/TenStudies.html) of this page on my [original website](http://www.pmean.com/original_site.html). Ten research studies that anyone teaching EBM should be familiar 
You can find an [earlier version](http://www.pmean.com/05/TenStudiesA.html) of this page on my [original website](http://www.pmean.com/original_site.html). Another top ten study in EBM
You can find an [earlier version](http://www.pmean.com/05/TenStudiesB.html) of this page on my [original website](http://www.pmean.com/original_site.html). More on the top ten studies in EBM
You can find an [earlier version](http://www.pmean.com/05/TestsNormality.html) of this page on my [original website](http://www.pmean.com/original_site.html). I abhor Lilliefor and other tests of normality
You can find an [earlier version](http://www.pmean.com/05/ToleranceLimits.html) of this page on my [original website](http://www.pmean.com/original_site.html). Tolerance limits
You can find an [earlier version](http://www.pmean.com/05/TrialRegistration.html) of this page on my [original website](http://www.pmean.com/original_site.html). Registration of clinical trials
You can find an [earlier version](http://www.pmean.com/05/TrickR.html) of this page on my [original website](http://www.pmean.com/original_site.html). A simple trick in R
You can find an [earlier version](http://www.pmean.com/05/TukeyTest.html) of this page on my [original website](http://www.pmean.com/original_site.html). When the F test is significant, but Tukey is not
You can find an [earlier version](http://www.pmean.com/05/ValueLabels.html) of this page on my [original website](http://www.pmean.com/original_site.html). Importing value labels from Access into SPSS
You can find an [earlier version](http://www.pmean.com/05/VoteForMe.html) of this page on my [original website](http://www.pmean.com/original_site.html). Vote for me
You can find an [earlier version](http://www.pmean.com/05/WebLinksApril.html) of this page on my [original website](http://www.pmean.com/original_site.html). Interesting web links and quotes for the month of April
You can find an [earlier version](http://www.pmean.com/05/WebLinksAugust.html) of this page on my [original website](http://www.pmean.com/original_site.html). Interesting web sites, publications, and quotes for the month of 
You can find an [earlier version](http://www.pmean.com/05/WebLinksDecember.html) of this page on my [original website](http://www.pmean.com/original_site.html). Interesting web sites, publications, and quotes for the month of 
You can find an [earlier version](http://www.pmean.com/05/WebLinksFebruary.html) of this page on my [original website](http://www.pmean.com/original_site.html). Recommended web links for the month of February
You can find an [earlier version](http://www.pmean.com/05/WebLinksJanuary.html) of this page on my [original website](http://www.pmean.com/original_site.html). Interesting web links for the month of January
You can find an [earlier version](http://www.pmean.com/05/WebLinksJuly.html) of this page on my [original website](http://www.pmean.com/original_site.html). Interesting web links and quotes for the month of May
You can find an [earlier version](http://www.pmean.com/05/WebLinksJune.html) of this page on my [original website](http://www.pmean.com/original_site.html). Interesting quotes, web pages, and publications for the month of 
You can find an [earlier version](http://www.pmean.com/05/WebLinksMarch.html) of this page on my [original website](http://www.pmean.com/original_site.html). Interesting web links for the month of March
You can find an [earlier version](http://www.pmean.com/05/WebLinksMay.html) of this page on my [original website](http://www.pmean.com/original_site.html). Interesting web links and quotes for the month of May
You can find an [earlier version](http://www.pmean.com/05/WebLinksSeptember.html) of this page on my [original website](http://www.pmean.com/original_site.html). Interesting web sites, publications, and quotes for the month 
You can find an [earlier version](http://www.pmean.com/05/WeblinksOctober.html) of this page on my [original website](http://www.pmean.com/original_site.html). Interesting web sites, publications, and quotes for the month 
You can find an [earlier version](http://www.pmean.com/05/WithholdingInformation.html) of this page on my [original website](http://www.pmean.com/original_site.html). Withholding information
