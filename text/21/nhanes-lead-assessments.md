---
title: "Lead assessments in the NHANES survey"
source: new
date: "2021-10-19"
categories:
- Recommendation
tags:
- Secondary data analysis
output: html_document
page_update: complete
---

Here are some resources on the CDC website about NHANES, with special attention to lead assessments.

<!--more-->

2017-2018 Data Documentation, Codebook, and Frequencies. Demographic Variables and Sample Weights (DEMO_J). Available in [html format][cdc17d]. Excerpt: "Masked Variance Units (MVUs): Fifteen masked variance strata and 30 masked primary sampling units (PSUs) are included in the 2017-2018 NHANES demographics file. Each stratum has 2 PSUs. These MVUs are a collection of secondary sampling units that are aggregated into groups for the purpose of variance estimation. The variance estimates that are produced, using the MVUs, closely approximate the variances that would have been estimated using the “true” sample design variance units that are based on the actual survey sample strata and primary sampling units. MVUs are used to protect the confidentiality of information provided by survey participants and to reduce disclosure risks. The use of MVUs is described in the NHANES Analytic Guidelines. Analysts should review the Guidelines carefully prior to analyzing the survey data. Sample Weights: The 2-year sample weights (WTINT2YR, WTMEC2YR) should be used for all NHANES 2017-2018 analyses. Detailed instructions for combining datasets from previous NHANES cycles are provided in the NHANES Analytic Guidelines."

2017-2018 Data Documentation, Codebook, and Frequencies. Lead, Cadmium, Total Mercury, Selenium, & Manganese - Blood (PBCD_J). Available in [html format][cdc17b]. Excerpt: "Examined participants aged 1 year and older were eligible. Due to disclosure concern, blood lead data from participants aged 1-5 years may only be accessed through the NCHS Research Data Center. Blood lead data from participants aged 6 years and older, and blood cadmium, manganese, total mercury, and selenium data from all examined participants 1 years and older are included in this dataset."

2017-2018 Data Documentation, Codebook, and Frequencies. Metals - Urine (UM_J). Available in [html format][cdc17u]. Excerpt: Due to disclosure concern, urine lead data from participants aged 3 to 5 years, as well as urine strontium and uranium from participants 3 years and older may only be accessed through the NCHS Research Data Center. Urine lead data from participants aged 6 years and older, and urine barium, cadmium, cesium, cobalt, manganese, molybdenum, antimony, thallium, tin, and tungsten data from all examined participants 3 years and older are included in this dataset. See Analytic Notes for additional information on urine lead data from participants aged 3 to 5 years and urine strontium and uranium for participants 3 years and older."

2015-2016 Data Documentation, Codebook, and Frequencies. Demographic Variables and Sample Weights (DEMO_I). Available in [html format][cdc15d]. Excerpt: "Masked Variance Units (MVUs): Fifteen masked variance strata and 30 masked primary sampling units (PSUs) are included in the 2015-2016 NHANES demographics file. Each stratum has 2 PSUs. These MVUs are a collection of secondary sampling units that are aggregated into groups for the purpose of variance estimation. The variance estimates that are produced, using the MVUs, closely approximate the variances that would have been estimated using the “true” sample design variance units that are based on the actual survey sample strata and primary sampling units. MVUs are used to protect the confidentiality of information provided by survey participants and to reduce disclosure risks. The use of MVUs is described in the NHANES Analytic Guidelines. Analysts should review the Guidelines carefully prior to analyzing the survey data. Sample Weights: The 2-year sample weights (WTINT2YR, WTMEC2YR) should be used for all NHANES 2015-2016 analyses. Detailed instructions for combining datasets from previous NHANES cycles are provided in the NHANES Analytic Guidelines."

2015-2016 Data Documentation, Codebook, and Frequencies. Lead, Cadmium, Total Mercury, Selenium & Manganese - Blood (PBCD_I). Available in [html format][cdc15b]. Exceprt: "All examined participants aged 1-11 years old, and a one-half sample from participants aged 12 years and older were eligible."

2015-2016 Data Documentation, Codebook, and Frequencies. Metals - Urine (UM_I). Available in [html format][cdc15u].

2015-2016 Data Documentation, Codebook, and Frequencies. Metals - Urine - Special Sample (UMS_I). Available in [html format][cdc15v]

National Health and Nutrition Examination Survey. 1999–2016 Survey Content Brochure. Available in [pdf format][cdccon].

Sample code. Available in [html format][cdcsas].

Example code to download/import NHANES data files (SAS transport .XPT files) as a dataset. Available in [text format][cdcsas1].

Program to Generate Means in SAS Survey Procedures. Available in [text format][cdcsas2].


[cdc17d]: https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DEMO_J.htm
[cdc17b]: https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PBCD_J.htm
[cdc17u]: https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/UM_J.htm
[cdc15d]: https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DEMO_I.htm
[cdc15b]: https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/PBCD_I.htm
[cdc15u]: https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UM_I.htm
[cdc15v]: https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/UMS_I.htm

[cdccon]: https://www.cdc.gov/nchs/data/nhanes/survey_content_99_16.pdf

[cdcsas]: https://wwwn.cdc.gov/nchs/nhanes/tutorials/samplecode.aspx
[cdcsas1]: https://wwwn.cdc.gov/nchs/data/tutorials/file_download_import_SAS.sas
[cdcsas2]: https://wwwn.cdc.gov/nchs/data/tutorials/descriptive_means_sas.sas
