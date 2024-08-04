---
title: "The need for documentation standards"
author: "Steve Simon"
source: "http://blog.pmean.com/documentation-standards/"
date: "2016-02-25"
categories: Blog post
tags:
- Statistical computing
output: html_document
page_update: complete
---

I'm working in a team programming environment and I would have to characterize the quality of the documentation as uneven. I'm going to make the case for having detailed documentation standards at a meeting tomorrow. Here's the a general overview of what I will say.

<!---More--->

I have been on the receiving end of lots of programs and data sets that are poorly documented and lots that are well documented. I also have helped set up and run a working group on secondary data analysis, so I have lots of experience seeing how the professionals at groups like the Centers for Disease Control and Prevention set up clear and easy to follow documentation for some pretty complex data sets.

So if you're like me and you're creating programs and data sets that others statisticians will use, you need (I will argue at my meeting) formal written programming standards. What are some of the things that you should put in your programming standards document?

**Variable naming convention**

One of the simplest things you need is a variable naming convention.This may seem trivial, and sometimes it is, but at a minimum a consistent naming convention will make a program easier to read. It also greatly simplifies program maintenance.

The story I tell when I talk about variable naming conventions is a true one, actually. There was a group called Writer's Exchange that wanted to set up a website. They named it www.writersexchange.com, which seems like a pretty good name except that you can accidentally read it as "writer sex change. So to avoid confusion, you need some way to easily separate words in a variable name. You can't use blanks: most programs won't allow it, so the three common approaches are camelCaseNames, underscore\_separated\_names, and dot.separated.names. The actual choice varies. [Microsoft](https://msdn.microsoft.com/en-us/library/ms229043(v=vs.110).aspx) likes camelCaseNames (and a closely related variant they call PascalCaseNames). Google likes underscore\_separated\_names for some of their programming languages, camelCaseNames for others, and a mix depending on the type of variable for still others. Their [R programming style guide](https://google.github.io/styleguide/Rguide.xml) recommends dot.separated.names but says that camelCaseNames are acceptable. The Google Style Guide for R recommends AGAINST underscore\_separated\_names, but [other style guides](http://r-pkgs.had.co.nz/style.html) recommend AGAINST dot.separated.names instead.

I like underscore_separated_names, but would be fine with any convention. R itself is terribly inconsistent. So, for example, the argument for handling missing values in the mean function is dot separated (na.rm). But in the table function, it is camel case (useNA).

But don't you be like R itself. If you adopt a naming convention, you should follow it religiously. Here's some of the reasons why.

First, a mix of naming conventions makes your code fragile. Suppose one programmer is cumulating events in event.counter, and a second programmer starts accumulating the events in event\_counter, then the best you can hope for is that you get an error code that one of the variables is uninitialized. If you don't get that message, then some of your events will not get counted properly.

Second, a mix of naming conventions messes up an alphabetical listing. If you have variables named

- vowel_A
- vowel.E
- vowel_I,
- vowel.O
- vowel.U

when you list them with ls(), they come out listed as

- vowel.E
- vowel.O
- vowel_A
- vowel_I
- vowel_U

Finally, variable names in R can be manipulated as easy as data sets. If you name variables consistently, then you can more easily loop across variables, pull out subsets of variables, and re-order your variables.

Another convention that a lot of R programmers use is that they use nouns for variables and verbs for functions. An experienced R programmer will recognize a function because it is usually followed by a parenthesis, while most variables (except scalars) are followed by one or two square brackets. But less experienced R programmers and even experienced R programmers who are sleep deprived will get confused. So "age.in.years" might be a vector of patient ages and "calculate.age" might be a function that calculates an age from a exam date and a birth date. This also kind of makes sense because a function takes an action on one or more variables. Here's an example:

age.in.years <- calculate.age(event.date,birth.date,units="years").

It almost reads like an English sentence.

Some programmers use all upper case for constants, but I dislike this approach. It especially bad to have upper case and lower case versions of the same name. R is case sensitive, but if you start relying on this, then you will get in trouble when you switch to coding in a program like SAS which is not case sensitive.

Finally, avoid acronyms and abbreviations. A few acronyms like bmi for body mass index might be okay, but try to spell out anything that is not instantly recognizable. You should also avoid abbreviations. They can sometimes be misread. So, does "temp" refer to temperature or a temporary variable? There's also more than one way to abbreviate. Your temperature variable could easily by "temp" or "tmp" or even "t".� This can lead to the same sort of problems that you might have with "event.counter" and "event_counter".

One last word. If you decide to adopt a naming convention, don't settle for 90% consistency or 95% consistency or even 99% consistency. The closer you get to 100% consistency, the more the exceptions will bother you. There's a quote from one of the earlier Star Wars movies where Yoda says "Do or do not. There is no try." A partial attempt at enforcing a naming convention is worse than not having a naming convention at all.

Now when I said 100% consistency, I didn't really mean it. There might be a few exceptions to variable naming conventions. First, don't go back and rename all the variables in a program that already works. That's a fool's errand and will probably end up breaking the program. Second, external demands might require you to deviate from a naming convention. This could occur if you are inserting code from a different language. So if you are running SQL statements within R, don't feel that you have to abandon the norms of SQL. Dots in SQL have a special meaning, so dot.separated.names are at a minimum, going to cause confusion. You might also need to deviate from a naming convention if some of the data sets you produce need to be read by a different statistical package with conflicting requirements or different naming conventions. The point is that you only deviate for a very good reason, and then you document that deviation explicitly in the program.

**Documentation headers**

Every function in R should have have a documentation header. This is a brief explanation of what the function does. It also explains what form the input takes and what the output looks like.

The documentation header is written before the code, or sometimes, it is written simultaneously with the code. But it is never written after the code is written. If you defer writing the documentation header, you will end up skipping it, or skimping on it.

In R, a function often can take different types of input. So the sqrt function, for example, can accept either a scalar, a vector, a matrix, a data frame as input, but not a list. This can save you a lot of time by avoiding various loops, but if you don't know this, you can't take advantage of it.

**All small files are readable by a human**

There are some files that are stored in binary format for speed or storage efficiency. But for small files, the gains are not worth it. You should strive to use formats that are easily readable by a human. Some of the people who read your code will not have the tools to open a binary file and inspect it. Examples of machine readable files are comma separated values, [json](http://json.org/), [yaml](http://yaml.org/), and [xml](https://www.w3.org/XML/) (some might argue that xml files are too dense to be easily read).

Every file should, if possible, follow the same naming conventions. So use nouns for files that contain data and verbs for files that contain programs. Take the time to spell out abbreviations and avoid acronyms. Don't mix comma.separated.file.names, underscore_separated_file_names, and camelCaseFileNames.

Place a brief comment header on the top line of every file. In R, the default for reading in comma separated value files is to ignore any line that starts with a pound sign (though you can override this if you need to). For a program file, note any other program or data files that this program depends on. Also explain briefly what the program does.

The brief comment helps a lot because many file management programs offer a preview of the first few lines of a file. This can help an outsider quickly browse through a large set of files and pick the ones that are most relevant for further study.

You can find an [earlier version][sim1] of this page on my [blog][sim2].

[sim1]: http://blog.pmean.com/documentation-standards/
[sim2]: http://blog.pmean.com
