---
author-meta:
- Daniel S. Himmelstein
- Casey S. Greene
- Anthony Gitter
date-meta: '2017-09-30'
keywords:
- collaborative review
- continuous integration
- publishing
title: Meta Review
...






<small><em>
This manuscript was automatically generated
from [greenelab/meta-review@9fc917b](https://github.com/greenelab/meta-review/tree/9fc917b31661f87b80bc015b877c302d7cb0f4be)
on September 30, 2017.
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



## Abstract {.page_break_before}




## Main text {.page_break_before}

### Introduction

Open research – which includes sharing code, data, and manuscripts – benefits the researchers who engage in open practices [@HQfvK1OF], their scientific peers, and the public.
`TODO: more references needed`
Here we describe the benefits of writing review articles openly, where the planning, organizing, writing, and editing occur collaboratively in a public forum where participants are free to join as they wish.
Reviews presenting the state of the art in a scientific field are often prepared by a single research group or a small team of colleagues.
In contrast, broadly opening the writing process to anyone engaged in the topic can help maximize the review's value by facilitating the representation of diverse opinions and the broad coverage of relevant research.
Review authors can engage with the authors of original research to clarify their methods and results and present them accurately (for example, @xqvpFrFj).
`TODO: need archival issue link`
In addition, discussing manuscripts in the open provides one form of pre- and post-publication peer review `TODO: define this or provide a reference?`, incentivizing the reviews with potential manuscript authorship.
However, inviting wide authorship brings many technical and social challenges such as how to fairly distribute credit, coordinate the scientific content, and collaboratively manage extensive reference lists.

We present solutions to these challenges based on our recent experience leading a collaborative review "Opportunities And Obstacles For Deep Learning In Biology And Medicine" [@tJKvnIaZ].
Our review attracted 27 authors from 20 different institutions who were not determined in advance.
`TODO: confirm institution count`
We wrote entirely in the open without restrictions on who was welcome to contribute.
Although we requested that some authors participate for their specific expertise, most discovered the manuscript organically through conferences or social media and independently decided to contribute.
`TODO: confirm "most"`
To coordinate this effort, we developed a manuscript writing process using the Markdown language, the GitHub software development platform [@1Dv0Jpu5J], and our new Manubot tool [@1B7Y2HVtw; @cTN2TQIL] for automating manuscript generation.


### Collaborative writing and reviewing

There are many existing collaborative writing platforms ranging from rich text editors, which support Microsoft Word documents or similar formats, to LaTeX-based systems for more technical writing [@AylLD9F8; @qtk0dPt8; @S3mA7bTr].
These platforms ideally offer version control, multiple permission levels, or other functionality to support multi-author document editing.
Although they work well for editing, they lack sufficient features for managing a collaborative manuscript and attributing precise credit, which are important for open writing.

We adopted standard software development strategies in order to enable any contributor to edit any part of the manuscript but enforce discussion and review of all proposed changes.
The GitHub platform provided support for organizing and editing the manuscript.
We used GitHub _issues_ for organization, opening a new issue for each paper under consideration.
Within the issue, contributors summarized the research, discussed it (sometimes with the original authors), and assessed its relevance to the review.
Issues also served as an open to-do list and a forum for debating the main message, themes, and topics of the review.

GitHub and the underlying git version control system [@PlcxShQU; @kEX5dgzK] also structured the writing process.
The official version of the manuscript is _forked_ by individual contributors.
A contributor then adds and revises files, grouping these changes into _commits_.
When the changes are ready to be reviewed, the series of commits are submitted as a _pull request_ through GitHub, which notifies other authors of the pending changes.
GitHub's review interface allows anyone to comment on the changes, globally or at specific lines, asking questions or requesting modifications as depicted in [@opQBBK06].
Conversations during review can reference other pull requests, issues, or authors, linking the relevant people and content.
Reviewing batches of revisions that focus on a single theme is more efficient than independently discussing isolated comments and edits, and it helps maintain consistent content and tone across different authors and reviewers.
Once all requested modifications are made, the manuscript maintainers, a subset of authors with elevated GitHub permissions, formally approve the pull request and merge the changes into the official version.
`TODO: need a figure with a flowchart showing this process`
The entire process can be orchestrated through GitHub with a web browser if a contributor does not want to use a git client on their own computer.

We found that this workflow was an effective compromise between fully unrestricted editing and a more heavily-structured approach that limits the authors or the sections they can edit.
In addition, authors are associated with their commits, which makes it easy for contributors to receive credit for their work and helps prevent ghostwriting [@RK9sIADd].
The GitHub contributors page summarizes all edits and commits from each author, providing aggregated information that is not available on other collaborative writing platforms.
Because our writing process, like others backed by the open git version control system [@qtk0dPt8; @S3mA7bTr], tracks the complete commit history, it also enables detailed retrospective contribution analysis.
`TODO: confirm Overleaf and Authorea provide this type of git integration versus something more coarse`

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

### Discussion

Many others have embraced open science principles and piloted open approaches toward drug discovery [@11rVTcUCK; @HnZE3JiU], data management [@1A97a4UwU; @6DjakjNS; @otY3SefD], and manuscript review [@nhLnUPJo].
`TODO: need help deciding what related topics to include here and which references to use, these are arbitrary examples`
`TODO: more ideas in doi:10.7287/peerj.preprints.2711v2`
Several of these open science efforts are GitHub-based like our collaborative writing process.
The Journal of Open Source Software [@oGNtTmrp] and ReScience [@pKdkaWKn] journals rely on GitHub for peer review and hosting.
`TODO: describe Manubot related work here?` [@17wKkS4DV; @c8td0dsz]

There are potential limitations of our GitHub-based approach.
Because our review manuscript pertained to a computational topic, most of the authors had computational backgrounds, including previous experience with version control workflows and GitHub.
In other disciplines, collaborative writing via GitHub and Manubot could present a steeper barrier to entry and deter participants.
In addition, git carefully tracks all revisions to the manuscript text but not the surrounding conversations that take place through GitHub issues and pull requests.
These discussions must be archived to ensure that important decisions about the manuscript are preserved and authors receive credit for intellectual contributions that are not directly reflected in the manuscript's text.
GitHub supports programmatic access to issues, pull requests, and reviews so tracking these conversations is feasible in the future.

`TODO: cgreene paragraph on diversity, open science culture, possibly author disagreements and conduct`

Open writing presents new opportunities for scholarly communication.
`TODO: reference "paper of the future"? arXiv:1601.02927 doi:10.22541/au.149693987.70506124 doi:10.22541/au.148769949.92783646 http://blogs.nature.com/naturejobs/2017/06/01/techblog-c-titus-brown-predicting-the-paper-of-the-future`
Though it is still valuable to have versioned drafts of a review manuscript with digital identifiers, journal publication may not be the terminal endpoint for collaborative manuscripts.
After releasing the first version of our collaborative review [@tJKvnIaZ], six new authors have contributed text and existing authors continue to discuss new literature, creating a living document [@1Dv0Jpu5J].
`TODO: update new author count before submitting`
The Manubot system can also facilitate open research [@11cb5HXoY] in addition to review articles.
`TODO: get permission and add https://slochower.github.io/nonequilibrium-barrier/ https://zietzm.github.io/Vagelos2017/`

Our process represents an early step toward open massively collaborative reviews, and there are certainly aspects that can be improved.
We invite the scientific community to adapt and build upon our experience and open software.


## Acknowledgements

`TODO: deep review authors for support in testing this process`
`TODO: manubot-rootstock contributors`

## References


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
