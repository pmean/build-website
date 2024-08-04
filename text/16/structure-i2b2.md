---
title: "The data structure in i2b2"
author: "Steve Simon"
source: "http://blog.pmean.com/structure-i2b2/"
date: "2016-03-03"
categories: Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

I'm working with the Greater Plains Collaborative on a research project and my work requires me to understand the underlying data structure of a system known as i2b2. It's not a difficult data structure, but it is uncommon, so it is worthwhile to document what is going on.

<!---More--->

The key publication about i2b2 is

Murphy SN, Weber G, Mendis M, Gainer V, Chueh HC, Churchill S, Kohane I. Serving the enterprise and beyond with informatics for integrating biology and the bedside (i2b2). Journal of the American Medical Informatics Association 2010. 17(2); 124-130. Available in [html format][mur1].

[mur1]: https://jamia.oxfordjournals.org/content/17/2/124.full

The i2b2 database has five tables. Across the five tables are only few dozen fields (a statistician might use the word "variables" here). How can the i2b2 system store something as complex and heterogenous as the medical record on an individual with so few fields? Many other data bases, such as the [National Ambulatory Medical Care Survey][cdc1], published by the CDC, will have hundreds or even thousands of fields.

[cdc1]: http://www.cdc.gov/nchs/ahcd.htm

The i2b2 system uses a model called the Entity Attribute Value (EAV) model. Pretty much any data table, no matter how many fields, can be restructured into a table with only three fields. Here's a simple example.

```
    id sex race age  bmi
    01   M    W  72 26.7
    02   F    B  45 24.2
    03   F    W  19 37.1
    ...
```

This is a fairly standard format. There is a primary key, id, and four fields: sex, race, age, and bmi. In the EAV format, the primary key becomes the entity, the field names become the attribute, and the data within the various field names become the values.

```
    entity attribute value
        01       sex     M
        01      race     W
        01       age    72  
        01       bmi  26.7
        02       sex     F
        02      race     B
        02       age    45
        02       bmi  24.2
        03       sex     F
        03       race    W
        03       age    19
        03       bmi  37.1
        ...
```

The first time I saw an example of the EAV model, I was a bit bemused. Why would anyone store their data in such a strange way? There's huge variation in the data stored in the value field: some strings of various types and a bunch of numbers, with potentially a huge number of units of measurement among those numbers.

The EAV format is often called the long and skinny format (I like tall and thin, myself). If your original table has hundreds of fields, then the EAV format will have records by the thousands. But no matter how many fields you have the EAV format will only have three. 

There are many advantages of the EAV format, but the most critical one from the perspective of i2b2 is that it represents an efficient storage model for sparse data.

Think about your typical encounter with a doctor. It often starts with a measurement of weight and blood pressure, but then it could go off in many different directions. You might have some blood drawn or maybe not. If you do have blood drawn, it might be to measure hormone levels, or enyzme markers of kidney and liver function, or maybe cholesterol values. You might provide a urine sample instead of or in addition to the blood draw. You might not get either of these, of course. You might leave with a prescription. If you do, it might be for one of thousands of drugs available by prescription. The dosing frequency of the drug, the dosing concentration, and the mode of delivery might change.

The point is that there are thousands of things that might happen, but typically only a few dozen of them actually do happen. If you tried to have a field for every possible thing that could happen, you'd have thousands of fields. But it's worse than this. The things that might happen in a medical context might happen multiple times. So you might have multiple blood draws across different visits and you might leave with the same prescription each time, but probably not.

Each of the various things that end up happening in a health care setting are documented as separate attributes. So your visit might have a weight attribute, a blood pressure attribute (actually two attributes for systolic and diastolic pressures), a cholesterol level attribute (again probably two attributes for your good cholesterol and your bad cholesterol levels), and a prescription attribute (again multiple attributes, defining the drug, dosage, route, frequency of administration, etc.). If something didn't happen to you during your visit (for example, they didn't measure your weight), then that is just an attribute that is not reported for you.

Now my description of the EAV format is a gross oversimplification. You need more than three fields in the EAV format. But the general concept is the same. The entity may be a series of primary keys, for example, and the attributes often require a supporting table to provide important details about the attributes. The medical data stored in i2b2 has to distinguish distinct patient encounters.

Other key references include

Dinua V, Nadkarnia P. "Guidelines for the Effective Use of Entity-Attribute-Value Modeling for Biomedical Databases." Int J Med Inform. 2007; 76(11-12): 769--779. Available in [html format][din1]

[din1]: http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2110957/

Prakash Nadkarni. "An Introduction to Entity-Attribute-Value Design for Generic Clinical Study Data Management Systems." Center for Medical Informatics, Yale University Medical School, n.d. Available in [html format][nad1]

[nad1]: http://ycmi.med.yale.edu/nadkarni/Introduction%20to%20EAV%20systems.htm

Wikipedia. Entity-attribute-value model. Wikipedia, n.d. Available in [html format][wik1].

[wik1]: https://en.wikipedia.org/wiki/Entity%E2%80%93attribute%E2%80%93value\_model

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/structure-i2b2/
[sim2]: http://blog.pmean.com
