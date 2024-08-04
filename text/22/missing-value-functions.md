---
title: "Missing value functions"
author: "Steve Simon"
date: "2022-10-27"
output:
  html_document: default
categories: Blog post
tags:
- Data management
source: new
page_update: complete
---

Comparisons involving missing values are tricky. 

### Hunting for missing values 

Every statistical package has a different internal code used for missing values, and this can cause problems if you are not aware of them.

SAS stores the missing value as the most extremely negative number that could be stored in floating point precision. You are not likely to have extremely negative values in a real application, so this protects you from a legitimate data value being mistaken for a missing value.

But there's a trap waiting for you. Consider the following statement:

```
if age<=18 then child="Yes";
  else child="No";
```

The child variable would be "Yes" for any 18 or younger or anyone with a missing age. That's probably not what you wanted.

In Stata, the missing value is coded as the largest possible floating point number. Again, a reasonable choice, but now the child variable would be "No" for all adults and all missing values.

In R, comparisons involving missing values are handled quite differently. If you test whether a missing age is less than or equal to 18, it won't tell you it is true, like SAS does. It won't tell you false, like Stata does. It returms missing, which you can interpret as "I don't know if this statement is true or false." This seems fair enough, but it does cause problems with equality checks.

The statement

```
10==NA
```

returns a missing logic value. If the right hand side of the comparison is unknown, it might equal 10 if it were known, but it might not. So a missing logic value seems reasonable. Likewise

```
NA==10
```

returns a missing logic value because the left hand side of the comparison is unknown. What's totally surprising is that

```
NA==NA
```

also returns a missing logic value. The left hand side could be anything 10, 82, 53. The right hand side could be anything, 23, 10, 92. So maybe the two unknown values are equal and maybe they are unequal. You can't be sure, so you get a missing logic value.

The solution in all of these cases is to hunt for the missing values explicitly. SAS, SPSS, and Stata have a "missing"" function. In R, you check for missing with the "is.na" function. Use these functions aggressively in any code that might have missing values.

### Conclusions

Missing values are one of the most troublesome aspects of data management. Every statistical package stores missing values differently. Be aware of how your package treats missing values and use the function that they provide for detecting missing value codes.
