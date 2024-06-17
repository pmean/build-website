---
title: Privacy concerns in research
author: Steve Simon
date: 2002-07-12
categories:
- Blog post
tags:
- Ask Professor Mean
- Privacy in research
output: html_document
page_update: partial
---

*Dear Professor Mean, I want to do some research using tissue samples, but the Institutional Review Board has said that I have to get consent first, because the data are not anonymized. The also told me that I might be able to get a waiver from consent if I de-identify the data. What's up with all these privacy concerns in research.*

<!---More--->

Dear Reader,

When you are a statistician, it's hard to understand privacy concerns, because no one is interested in us. Even Professor Mean himself finds it difficult to attract any awareness. He was talking about statistics to his cat and she slept through the whole discussion.

### Short answer

Privacy is indeed a major concern, and there is much that we statisticians can do to help preserve privacy. Every research project has different privacy concerns, but here are some general suggestions.

+ Strip out direct identifiers
+ Beware of indirect identifiers
+ Securely store any linking data
+ Use computer algorithms to preserve confidentiality
+ Understanding privacy concerns

It's easy to overlook the importance of privacy. You can think to yourself, I don't care if anyone knows that I received a flu shot on November 7, 2003, that the nurse used a Big Bird bandage, and that I left with a lollipop even though those were only intended for little kids. But a story I read in the newspapers about a decade ago made me realize the importance of privacy.

The Internal Revenue Service had to fire several employees because they abused the confidentiality of U.S. tax returns. These employees were amusing themselves during work breaks by browsing through the computerized tax returns of rich and famous people. My first reaction was to think how much fun it would be to look at information about Julia Roberts or Steven Spielberg. But then I realized that these people gave this information to the U.S. government reluctantly. They would tolerate the use of these returns for official government business, but they didn't provide this information to entertain every curious civil servant who had access to these records.

If people are protective about their financial records, they are often far more protective of their medical information. They provide this information only reluctantly to health care professionals and they want some assurance that this information is not abused. Inappropriate disclosure of health information can often cause embarrassment, or even financial problems if it gets into the hands of your employer or your insurance company.

Privacy is also a very individual issue. Some people talk openly about the type of birth control they use, for example, and others consider this top secret. A friend of mine (who I shall not name) did not want any of  her co-workers to know she was pregnant until it was clearly visible. She was at high risk for miscarriage and didn't want to deal with the public fallout if her pregnancy ended early.

### Strip out direct identifiers

No statistical analysis will require the use of the actual names of the patients, but people routinely send me data files with names. I will immediately strip out the names, because I don't want to accidentally see the name of one of my neighbor's kids in the data set.

When you are working with a data set of your own patients, it may help you during the data collection and entry phase to include the patient's name. You might possibly catch some errors during data entry because you remember some of the details of a particular patient.

Even so, you might want to avoid recording patient names anyway. The incremental gain in data quality is probably not worth the risk of accidentally disclosing private information.

There is no justification for using patient names if these aren't your patients to begin with. Strip out those names and have a talk with the person who sent you the data.

There are other obvious examples of direct identifiers, such as a full face photograph of the patient, a social security number, or a fingerprint.

A medical record number gives some semblance of anonymity, but according to HIPAA guidelines the medical record number is a direct identifier because it allows anyone with access to medical records to identify the individuals.

### Marketing identifiers

You should also be sensitive about phone numbers, emails, and addresses because they can often identify an individual. My email address, for example, includes my first initial and last name. Even it cannot directly identify an individual, a phone number or address is open to abuse by unscrupulous marketers.

For a drug company, private health information is almost an irresistable temptation. Wouldn't it be nice to have a mailing list narrowly targeted to a disease that your new blockbuster drug can help cure? But people who suffer the heartbreak of psoriasis, do not want to be reminded of this when they open their mailboxes.

People have also learned to closely guard their email addresses. Once your name gets on a spam list, you will never see the end of offers for mail order sales of Viagra and other annoying things.

### Indirect identifiers can also compromise privacy

Although a person's name is an obvious identifier, there are other pieces of information that are indirect identifiers that could potentially compromise patient privacy. An indirect identifier is a data values that narrow down the scope of possible patients so that when combined with other information, would potentially allow you able to identify an individual patient.

As an example (this example is only meaningful if you live in the Kansas City area), I have a famous neighbor who lives in the next cul-de-sac. I could tell you two things about him, and either fact alone would tell you nothing about him but the combination identifies him exactly. This person is currently plays wide receiver for the Kansas City Chiefs football team. This person also used to play for the Denver Broncos football team.

If you are a big football fan, you will know who I am talking about. Even if you are not a football fan, this is a potential disclosure. Keep this in mind for health information; just because you are unable to identify someone does not mean that it is private.

For example, I have been told that if you know someone's birthdate and their zip code, you would be able to identify that person. I don't know how you could do this, but I'm sure that it could be done.

### How to handle indirect identifiers

Be sure to keep information about indirect identifiers inside the hospital. If you must share some of this information for research purposes you should get a limited data set use agreement (see below).

**Geographic divisions**: Any information that allows you to limit the location of someone to a very narrow geographical region has the potential to compromise security. This includes zip codes, a piece of information commonly used in statistical analyses. If your data are coded into very large geographic groups, such as the first three digits of the zip code or the state of residence, then you should not have any concerns about privacy, unless you are dealing with a very rare disease or a very exclusive population.

**Birthdates and ages**: Knowing when a person was born can also compromise confidentiality.  You can also implicitly calculate a birthdate if you know that person's exact age on a certain date. This is especially relevant to studies of infants, where you might often measure the age in weeks or days. Rounding ages to the year will usually avoid privacy issues. 

**Dates of exams and procedures**: The actual dates of certain procedures can also sometimes cause problems. Dates of admission to a hospital or surgery dates should be treated with caution, unless they are recorded in very broad categories such as the year.

For all of the information described above, context is important. In some situations, the restrictions described above have to be tightened. For example, there are so few people ages 90 and above that it is not a good idea to identify their ages, even rounded to the year. When you are dealing with a very rare disease, like certain childhood cancers or a very rare procedures like heart-lung transplants, there are so few people in the population that you need to be extra cautious about indirect identifiers.

**Exceptions**: In some situations, you can loosen these standards, but you have to get some certification from a professional that the information has very little chance of compromising security.

As a very very rough rule of thumb, if a combination of variables could only narrow down the list of people to groups of three or more, then some semblance of confidentiality is maintained. So, as an example, you want to include information about the location of a patient who has had a bone marrow transplant, as well as their gender and their age rounded to the year. If you reported it at the county level, then you need to guarantee that for every combination of age, gender, and county that there are at least three patients. If certain combinations are rare, such as there are only two male bone marrow transplants of age 2 in Jackson County, then you need to create bigger groups. Make the geographic region larger (Western Missouri) or the age group broader (0-3 years of age) so that the minimum number in a crosstabulation is large enough. If you had hundreds of patients in each group, then you could afford to go to a higher level of detail, like zip code instead of county, or age in months rather than age in years.

### Sharing data outside the hospital

When you share data with researchers outside the hospital, you have three choices.

At one extreme, you could ask for permission from the patient before you share this information. This is a reasonable approach for some prospective studies where you know in advance what information needs to be shared.

At the other extreme, you could strip out any direct or indirect identifiers in the data set. This creates a de-identified data set that can be shared without any privacy concerns.

In between the two extremes is a limited use data set. This is a data set without any direct identifiers and only those indirect identifiers that are needed for research purposes. The person getting the data has to sign an agreement to use the data only as permitted, limit who else can see the data, and promise to not identify or contact anyone in the data set.

With some data that you share, you might need to link this information back at a later date to individual patient records, you can develop a code link, but it cannot be something like a medical record number. Store the linking information in a secure location, like a locked file cabinet.

### Use computer security algorithms to preserve confidentiality

If you regularly store confidential information on your computer, you can do some common sense security measures. One very simple and effective approach is to put password protection on your screen saver. This will provide assurance that no one can rummage around on your computer while you are gone.

You should also avoid storing confidential information on a floppy disk that could easily be left somewhere public or on a laptop that could get stolen. There are, however, password protection systems available for laptops and floppy disks. Just make sure that your password is not left up on a sticky note by your computer monitor.

![Figure 1. A schematic diagram of the use of a linked table to preserve confidentiality](http://www.pmean.com/new-images/02/privacy1.jpg)

A database can help insure security by segregating private and open data. For people who need to see both types of data, you can link the private and open data (see above) but when you send the database outside, you can insure privacy simply by deleting the table with private information.

There are other computer methods for security that you might want to investigate. In particular, public key cryptography is a really useful technology for maintaining security.

Cryptography is the use of codes to hide information from the eyes of people you don't trust. Most code systems involve the use of a key that allows you to encode and decode information. Public key cryptography is different. There is one key that will allow you to encode information and a different key that will allow you to decode information. This allows a lot of options for one way information transfer that maintains security.

Suppose, for example, you are collecting monthly survey information from Professor Mean and others and would like to track the results for each individual without having to keep the personal identifiers for Professor Mean and others on hand.

Every month when you get Professor Mean's survey, use the encryption key to translate the string "ProfMean" to the coded string "GaEtNrIuUeS" and use that value in the database. Anyone working with the database will know which surveys belong to "GaEtNrIuUeS" but will not be able to translate it back to the original "ProfMean" unless they already know the names of some of the participants or they know the value of the decryption key.

Public key encryption can help with other situations, like multi-center trials. In these trials you often have multiple people are entering data, but you still need a strong level of security. All these data entry specialists could encrypt the data, and store it in a common location, but they would be unable to decode the master file.

The technical details of public key encryption are quite CaObNsFtUrSaIcNtG, so you should consult with a programming expert to set this up properly.

### Further reading

American Statistical Association. Committee on Privacy and Confidentiality. Available in [html format][asa1].

[asa1]: https://community.amstat.org/cpc/home

Jennifer Kulynych, David Korn. The Effect of the New Federal Medical-Privacy Rule on Research. NEJM 2002: 346(3); 201-204. Article is [behind a paywall][kul1].

[kul1]: https://www.nejm.org/doi/full/10.1056/nejm200201173460312

Carol Tavris. The High Cost of Skepticism. Skeptical Inquirer 2002: 25(4); 41-44. Available in [pdf format][tav1].

[tav1]: https://cdn.centerforinquiry.org/wp-content/uploads/sites/29/2002/07/22164741/p41.pdf

Issues to Consider in the Research Use of Stored Data or Tissues. Office for Protection from Research Risks, U.S. Department of Health and Human Services. Available in [html format][opr1].

[opr1]: https://www.hhs.gov/ohrp/regulations-and-policy/guidance/issues-to-consider-in-use-of-stored-data-or-tissues/index.html

George J. Annas. Medical privacy and medical research--judging the new federal regulations. New England Journal of Medicine 2002: 346(3); 216-20. Article is [behind a paywall][ann1].

[ann1]: https://pubmed.ncbi.nlm.nih.gov/11796863/

Protecting Personal Health Information in Research: Understanding the HIPAA Privacy Rule. U.S. Department of Health and Human Services. Available in [html format][hhs1].

[hhs1]: https://privacyruleandresearch.nih.gov/pr_02.asp

What's so important about conducting research involving third parties? L. Murrelle, C. R. McCarthy. J Contin Educ Health Prof 2001: 21(4); 198-202. Article is [behind a paywall][mur1].

[mur1]: https://journals.lww.com/jcehp/Abstract/2001/21040/What_s_so_important_about_conducting_research.2.aspx

You can find an [earlier version][sim1] of this page on my [original website][sim2].

[sim1]: http://www.pmean.com/02/privacy.html
[sim2]: http://www.pmean.com/original_site.html
