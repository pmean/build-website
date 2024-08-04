---
title: "Those darn commas in SQL"
author: "Steve Simon"
source: "http://blog.pmean.com/commas-in-sql/"
date: "2016-10-25"
categories: Blog post
tags:
- SQL
output: html_document
page_update: complete
---

I should know better, but I made a rookie mistake with SQL that took a long time for me to fix. It's one of those detail oriented things and if you aren't detail oriented, you can't call yourself a programmer.

<!---More--->

I was running some SQL code within R, and I could not get what I wanted.

```
> ms <- dbGetQuery(c_connect,
+   "select patient_num start_date
+      from blueherondata.observation_fact
+      where concept_cd LIKE 'CPT:1930%'")
```

was giving me just a single column for start_date, and the start_date values looked nothing like a date. Was I spelling a variable wrong? Did I get the wrong capitalization?

```
> ms <- dbGetQuery(c_connect,
+   "select patient_num
       from blueherondata.observation_fact
+      where concept_cd LIKE 'CPT:1930%'")
```

worked just fine, and

```
> ms <- dbGetQuery(c_connect,
+   "select start_date
       from blueherondata.observation_fact
+      where concept_cd LIKE 'CPT:1930%'")
```

but when you ask for more than one field, you need to separate those fields with a comma. If you don't then this version of SQL considers

```
> ms <- dbGetQuery(c_connect,
+   "select patient_num start_date
       from blueherondata.observation_fact
+      where concept_cd LIKE 'CPT:1930%'")
```

identical to

```
> ms <- dbGetQuery(c_connect,
+   "select patient_num as start_date
       from blueherondata.observation_fact
+      where concept_cd LIKE 'CPT:1930%'")
```

So it was extracting the patient_num field and changing its name to start_date. Boy did I feel stupid when I finally realized my mistake. Those pesky commas are important.

I'm hoping that if I write down my mistake and publish it widely, I won't forget and make the same mistake again next week.




