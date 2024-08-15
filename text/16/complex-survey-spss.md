---
title: "So you're thinking about a complex survey analysis (created 2016-05-10)."
author: "Steve Simon"
source: "http://www.pmean.com/16/complex.html"
date: "2016-05-10"
categories: 
- Blog post
tags:
- Complex survey
output: html_document
page_update: complete
---

I'm helping someone who is looking at a secondary data analysis that involves a complex sampling schemes. This means that the survey used cluster sampling, and/or stratified sampling, and/or survey weights. You need to learn specialized software if you want to analyze complex surveys data properly. Here's how you would do it in SPSS.

I'm using as an example the 2012 emergency department data from NHAMCS. I first downloaded the raw data, but then I found an [SPSS file][sps1] with value and variable labels and some (but not all) missing value codes.

[sps1]: ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/dataset_documentation/nhamcs/spss/

You also need to read the documentation, available in [PDF format][sps2].

[sps2]: ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/Dataset_Documentation/NHAMCS/doc12_ed.pdf

and especially Appendix I (A). In particular, the appendix tells you

*To obtain variance estimates which take the sample design into account, IBM SPSS Inc.'s Complex Samples module can be used. This description applies to version 21.0. From the main menu, first click on 'Analyze', then 'Complex Samples', then 'Prepare for Analysis'. The 'Analysis Preparation Wizard' can be used to set CSTRATM as the stratum variable, CPSUM as the cluster variable, and PATWT as the weighting variable.*

I'm using version 22, but things haven't really changed. Here's the first dialog box.

![Figure 1. SPSS dialog box, Analysis Preparation Wizard](http://www.pmean.com/new-images/16/complex01.PNG)

I choose a boring name (ed2012plan) and clicked on the NEXT button.

![Figure 2. SPSS dialog box, Stage 1: Design Variables](http://www.pmean.com/new-imags/16/complex02.PNG)

Then I put the CSTRATM, CPSUM, and PATWT variables in the appropriate spots and clicked on the FINISH button (actually I peeked at what happens if you click NEXT and decided that I wanted the default options all the way through). I decided to run frequencies

![Figure 3. SPSS dialog box, Complex Samples Plan for Frequencies Analysis](http://www.pmean.com/new-images/16/complex03.PNG)

The system gave me a warning message

![Figure 4. SPSS dialog box, Warning message](http://www.pmean.com/new-images/16/complex04.PNG)

I'll investigate this later and report back to you.

![Figure 5. SPSS dialog box, Complex Samples Plan for Frequencies Analysis](http://www.pmean.com/new-images/16/complex32.PNG)

Here are the options under the Statistics button.

![Figure 6. SPSS dialog box, Complex Samples Frequencies: Statistics](http://www.pmean.com/new-images/16/complex31.PNG)

Here's the output.

![Figure 7. SPSS output](http://www.pmean.com/new-images/16/complex11.jpg)

Here's the dialog box for Descriptives

![Figure 8. SPSS dialog box, Complex Samples Descriptives](http://www.pmean.com/new-images/16/complex34.PNG)

and the dialog box you get when you click on Statistics

![Figure 9. SPSS dialog box, Complex Samples Descriptives](http://www.pmean.com/new-images/16/complex33.PNG)

and the output.

![Figure 10. SPSS output](http://www.pmean.com/new-images/16/complex12.jpg)

If you want to compare means across different demographic groups, use the Subpopulations field.

![Figure 11. SPSS dialog box, Complex Samples Descriptives](http://www.pmean.com/new-images/16/complex35.PNG)

Here is the output.

![Figure 12. SPSS output](http://www.pmean.com/new-images/16/complex13.jpg)

Here is the dialog box for the linear regression model.

![Figure 13. SPSS dialog box, Complex Samples General Linear Model](http://www.pmean.com/new-images/16/complex36.PNG)

and the dialog box behind the Model button

![Figure 13. SPSS dialog box, Complex Samples General Linear Model](http://www.pmean.com/new-images/16/complex37.PNG)

and the output.

![Figure 14. SPSS output](http://www.pmean.com/new-images/16/complex14.jpg)

There was an earlier version of this page on my [blog][sim2] but I can't locate it anymore.

[sim2]: http://blog.pmean.com

