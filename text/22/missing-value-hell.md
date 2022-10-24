---
title: "Missing value hell"
author: "Steve Simon"
date: "2022-07-04"
output:
  word_document: default
  html_document: default
category: Blog post
tags: Analysis of means
source: new
---

There's no mincing words here. Missing values are hell for every statistician. Here are a few examples.

### The null license plate

Joseph Tartaro thought it would be funny to get the following California vanity license plate.

![Figure 1. Null license plate](http://www.pmean.com/new-images/22/missing-value-hell-01.png)

The joke is that NULL is the missing value code used by many databases. But, as described in Wired Magazine, his life turned into a living hell. Police officers will always write the license plate number of any car that was caught speeding or parking illegally. Well, almost always. In the very rare cases that the officer forgets, this is converted to a NULL value in the database. This is then matched to Joseph Tartaro and the ticket was sent his way. He got tickets from all over California--Corona, Fresno, Rancho Cucamonga--mostly to places he'd never been. These tickets were written for all sorts of different automobiles that he had never driven--Mercedes, Toyotas. He got hundreds of tickets worth tens of thousands of dollars. It was not an easy problem to fix.

This is caused by a programming error. The four letters N-U-L-L are not the same thing as the internal code of Null in a database. But a programmer writes a statement like

```{}
if var="NULL" then ...
```

and everything goes to hell.

### The \$9,700 bargain

A while back I was browsing through the geekier parts of Office Max and noticed the following tag.

![Figure 2. Printer pricing tag](http://www.pmean.com/new-images/22/missing-value-hell-02.jpg)

The computer database used the common practice of using all 9's to denote a missing value. That's fine, but then whoever programmed the calculation of how much saving you would get blew it. They calculated the savings a simple subtraction that ended up ignoring the obvious missing value code. So you can sue Office Max for false advertising, because there's no way that you would end up saving \$9,700!

### Hunting for missing values 

Whenever I see stories like this, I think of the quote from John Bradford, a sixteenth century preacher--"There but for the grace of God go I."

How easy it is to forget to account for missing values. To avoid this, you must develop an obsession about missing values.

Unfortunately, every statistical package has a different internal code used for missing values. All approaches lead to problems and the only way to protect yourself is to be aware of the approach your favorite package uses to designate missingness.

SAS stores the missing value as the most extremely negative number that could be stored in floating point precision. It is usually -3.4E38. It might be different on different hardware platforms, but it will still be a really extreme value. You are not likely to have something as weird as -3.4E38 in a real application, so this protects you from a legitimate data value being mistaken for a missing value.

But there's a trap waiting for you. Consider the following statement:

```{}
if age<=18 then child="Yes";
  else child="No";
```

The child variable would be "Yes" for any 18 or younger. But -3.4E38 is also less than or equal to 18. So a child value of "Yes" would also include those missing values. That may or may not be what you wanted.

In Stata, the missing value is coded as the largest possible floating point number (3.4E38). Again, a reasonable choice, but now the child variable would be "No" for all adults and all missing values.

SPSS has two different codes for missing values. There is an internal code, known as system missing that occurs when you read in data with an empty place where data should be. You can also designate missing value codes for particular values, like the \$9,999.99 list price at Office Max. So which side does SPSS put the missing value on? It effectively appears on both sides. In SPSS, the missing values go along for the ride with either age<=18 or age>18. It's more than that. If you wanted age=15, you'd not only get the subjects preparing for their quinceanera, but also any missing values. SPSS thinks its better to be on the inclusive side, and that means that a senior citizen who forgot to write down her age on the survey gets 50+ years removed from her life. 

In R, comparisons involving missing values are handled quite differently than any of these other packages. If you test whether a missing age is less than or equal to 18, it won't tell you it is true, like SAS and SPSS do. It won't tell you false, like Stata does. It returns missing, which you can interpret as "I don't know if this statement is true or false." This seems fair enough, but it does cause problems with equality checks.

The statement

```{}
15==NA
```

returns a missing logic value. If the right hand side of the comparison is unknown, it might equal 15 if it were known, but it might not. So a missing logic value seems reasonable here. Likewise

```{}
NA==15
```

returns a missing logic value because the left hand side of the comparison is unknown. What's totally surprising is that

```{}
NA==NA
```

also returns a missing logic value. The left hand side could be anything 15, 82, 53, etc. The right hand side could be anything, 23, 15, 92, etc. So maybe the two unknown values are equal and maybe they are unequal. You can't be sure, so you get a missing logic value.

The solution in all of these cases is to hunt for the missing values explicitly. SAS, Stata, and SPSS have a missing function. In R, you check for missing with the is.na function. Use these functions aggressively in any code that might have missing values.

### Recodes with missing values

If you recode any variable, always account for missing values first and last. So start off any recodes with the case where the original variable is missing and end with a catch-all code. Consider a variable for gender with 1 for male, 2 for female, and 9 for unknown. Then a recode in SAS might look like

```{}
if missing(gender) then gender_label="Unknown";
  else if gender=1 then gender_label="Male";
  else if gender=2 then gender_label="Female";
  else gender_label="Error";
```

The syntax changes slightly with other statistical packages, but the general concept applies. Account for missing value codes first and then catch anything that fails to match at the end.

Here's how you would do this with the SPSS dialog box for recoding.

![Figure 3. SPSS recode dialog box](http://www.pmean.com/new-images/22/missing-value-hell-04.png)

SPSS gets a bonus star for explicitly listing missing value options on the left and right hand side of this dialog box. This makes is harder for you to overlook the handling of missing values.

### Conclusions

Missing values are one of the most troublesome aspects of data management. Every statistical package stores missing values differently. Be aware of how your package treats missing values, use the correct functions detecting missing value codes, and account for missing values at the start and at the end of any recodes.