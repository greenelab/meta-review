---
author-meta:
- Daniel S. Himmelstein
- Casey S. Greene
- Anthony Gitter
date-meta: '2017-08-04'
keywords:
- collaborative review
- continuous integration
- publishing
title: Meta Review
...

<small><em>
This manuscript was automatically generated
from [greenelab/meta-review@f46e5bf](https://github.com/greenelab/meta-review/tree/f46e5bfd74f8c8749b120b7decd9f221588ddaf0)
on August  4, 2017.
</em></small>

## Authors


+ **Daniel S. Himmelstein**<br>
    ![ORCID icon](images/orcid.svg){height="13px"}
    [0000-0002-3012-7446](https://orcid.org/0000-0002-3012-7446)
    · ![GitHub icon](images/github.svg){height="13px"}
    [dhimmel](https://github.com/dhimmel)
    · ![Twitter icon](images/twitter.svg){height="13px"}
    [dhimmel](https://twitter.com/dhimmel)<br>
  <small>
     Department of Systems Pharmacology and Translational Therapeutics, University of Pennsylvania
     · Funded by GBMF4552
  </small>

+ **Casey S. Greene**<br>
    ![ORCID icon](images/orcid.svg){height="13px"}
    [0000-0001-8713-9213](https://orcid.org/0000-0001-8713-9213)
    · ![GitHub icon](images/github.svg){height="13px"}
    [cgreene](https://github.com/cgreene)
    · ![Twitter icon](images/twitter.svg){height="13px"}
    [GreeneScientist](https://twitter.com/GreeneScientist)<br>
  <small>
     Department of Systems Pharmacology and Translational Therapeutics, University of Pennsylvania
     · Funded by GBMF4552
  </small>

+ **Anthony Gitter**<br>
    ![ORCID icon](images/orcid.svg){height="13px"}
    [0000-0002-5324-9833](https://orcid.org/0000-0002-5324-9833)
    · ![GitHub icon](images/github.svg){height="13px"}
    [agitter](https://github.com/agitter)
    · ![Twitter icon](images/twitter.svg){height="13px"}
    [anthonygitter](https://twitter.com/anthonygitter)<br>
  <small>
     Department of Biostatistics and Medical Informatics, University of Wisconsin-Madison and Morgridge Institute for Research
     · Funded by NIH U54AI117924
  </small>



## Abstract

Offspring of the [Deep Review](https://github.com/greenelab/deep-review).
We cite the Deep Review like [@tJKvnIaZ] or [@tJKvnIaZ].
The source repository is [@1B7Y2HVtw].


## Main text {.page_break_before}

### Introduction

Open research – which includes sharing code, data, and manuscripts – benefits the researchers who engage in open practices [@HQfvK1OF], their scientific peers, and the public.
`TODO: more references needed`
Here we describe the benefits of writing review articles openly, where the planning, organizing, writing, and editing occur collaboratively in a public forum where participants are free to join as they wish.
Reviews presenting the state of the art in a scientific field are often prepared by a single research group or a small team of colleagues.
In contrast, broadly opening the writing process to anyone engaged in the topic can help maximize the review's value by facilitating the representation of diverse opinions and the broad coverage of relevant research.
Review authors can engage with the authors of original research to clarify their methods and results and present them accurately (for example, [@xqvpFrFj]).
`TODO: need archival issue link`
In addition, discussing manuscripts in the open provides one form of pre- and post-publication peer review `TODO: define this or provide a reference?`, incentivizing the reviews with potential manuscript authorship.
However, inviting wide authorship brings many technical and social challenges such as how to fairly distribute credit, coordinate the scientific content, and collaboratively manage extensive reference lists.

We present potential solutions to these challenges based on our recent experience leading a collaborative review "Opportunities And Obstacles For Deep Learning In Biology And Medicine" [@tJKvnIaZ].
Our review attracted 27 authors from 20 different institutions who were not determined in advance.
`TODO: confirm institution count`
We wrote entirely in the open without restrictions on who was welcome to contribute.
Although we requested that some authors participate for their specific expertise, most discovered the manuscript organically through conferences or social media and independently decided to contribute.
`TODO: confirm "most"`
To coordinate this effort, we developed a manuscript writing process using the Markdown language, the GitHub software development platform [@1Dv0Jpu5J], and our new Manubot tool [@1B7Y2HVtw; @cTN2TQIL] for automating manuscript generation.


### Authorship

To determine authorship we followed the International Committee of Medical Journal Editors (ICMJE) guidelines and used GitHub to track contributions.
ICMJE recommends authors substantially contribute to, draft, approve, and agree to be accountable for the manuscript [@jFIYgRfv].
We acknowledged other contributors who did not meet all four criteria, including contributors who provided text but did not review and approve the complete manuscript.
`TODO: In Discussion, mention the challenge of determining contributions of potential authors who worked with someone else on the text but did not make their own commits`
Although these criteria provided a straightforward, equitable way to determine who would be an author, they did not produce a traditionally ordered author list.
In biomedical journals, the convention is that the first and last authors made the most substantial contributions to the manuscript.
This convention can be difficult to reconcile in a collaborative effort.
Using git, we could quantify the number of commits each author made or the number of sentences an author wrote or edited, but these metrics discount intellectual contributions such as discussing primary literature and reviewing pull requests.
However, there is no objective system to compare and weight the different types of contributions and produce an ordered author list.

To address this issue, we generalized the concept of "co-first" authorship, in which two or more authors are denoted as making equal contributions to a paper.
We defined four types of contributions [@tJKvnIaZ], from major to minor, and reviewed the GitHub discussions and commits to assign authors to these categories.
A randomized algorithm then arbitrarily ordered authors within each contribution category, and we combined the category-specific author lists to produce a traditional ordering.
The randomization procedure was shared with the authors in advance (pre-registered) and run in a deterministic manner.
Given the same author contributions, it always produced the same ordered author list.
We annotated the author list to indicate that author order was partly randomized and emphasize that the order did not indicate one author contributed more than another from the same category.
`TODO: In Discussion, present alternative author ordering strategies and literature on contribution in collaborative projects`


## Acknowledgements

`TODO: deep review authors for support in testing this process`
`TODO: manubot-rootstock contributors`

## References