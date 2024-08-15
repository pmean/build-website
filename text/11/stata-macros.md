---
title: Macros in Stata
author: Steve Simon
date: 2011-03-08
categories:
- Blog post
tags:
- Stata software
output: html_document
page_update: partial
---

This page is currently being updated from the earlier version of my website. Sorry that it is not yet fully available.

<!---More--->

I have just started using macros in Stata. I like R better, but Stata has a pretty good set of macro facilities, once you get the hang of things. Here is a simple example.

I wanted to produce a file that checks the size of several files and places these sizes in a text file. When the program changes substantially, I want the name of the text file to change, so that I can compare the current results to previous results. Here's the code:

```
local pid "93"
log using check`pid'.txt, text replace
display c(current_date) " - " c(current_time)
forvalues k=5/8 {
  use ed0`k', clear
  gen one=1
  display " "
  display "***"
  display "***Count for ed0`k'"
  display "***"
  table one
}
log close
```

Notice that the first two lines could have been written

```
log using check93.txt, text replace
```

but I wanted to reopen the file later on in the program and add some extra information. Rather than use check93 each time, and trying to remember to change it in every location, I just change the line

```
local pid "93"
```

to

```
local pid "94"
```

if I want a different version number.

The forvalues statement creates a loop. In this case, it loops four times for k=5, k=6, k=7, and k=8. The use command opens the files ed05, ed06, edo07, and ed08. The display command, a very useful command with macros places text in the output stream. In this case, it helps document which file the table command is using. Here is what the check93.txt file looks like.

The macro feature in Stata can also help when the variable names change from one year to the next. In the ed05 and ed06 files, race and ethnicity were designated using the names race and ethnic. In the ed07 and ed08 files, they were renamed to raceim and ethim to remind users that these variables included imputed values. Here's how you can switch variable names in midstream.

```
local eth_list "ethnic ethnic ethim ethim"
local rac_list "race race raceim raceim"
local kyr_list "5 6 7 8"
forvalues k=1/4 {
  local eth : word `k' of `eth_list'
  local rac : word `k' of `rac_list'
  local kyr : word `k' of `kyr_list'
  use ed0`kyr', clear
  gen id=`kyr'*100000+_n
  gen rceth=99
  replace rceth=1 if (`eth'>1&`rac'==1)
  replace rceth=2 if (`eth'==1)
  replace rceth=3 if (`eth'>1&`rac'==2)
  replace rceth=4 if (`eth'>1&`rac'>2)
  keep id rceth sex msa age year
  save dm0`kyr', replace
}
```

Notice the list eth_list repeats ethnic twice (for ed05 and ed06) and ethim twice (for ed07 and ed08). The local command pulls out the values from each list in sequence. So for ed05 and ed06, the command

```
replace rceth=2 if (`eth'==1)
```

would end up like

```
replace rceth=2 if (ethnic==1)
```
but for ed07 and ed08, it would end up like

```
replace rceth=2 if (ethim==1)
```

Also note that we cannot use k=5/8 in the forvalues loop because it would end up selecting the 5th through 8th values in the list.

Now for all of these examples, you don't end up saving a lot of time. But when the tasks are repeated in a few dozen different areas of the program, the time savings can really add up.

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/11/StataMacro.html
[sim2]: http://www.pmean.com/original_site.html 
