---
author-meta:
- Daniel S. Himmelstein
- Casey S. Greene
- Anthony Gitter
date-meta: '2018-02-16'
keywords:
- collaborative review
- continuous integration
- publishing
- manubot
lang: en-US
title: Meta Review
...






<small><em>
This manuscript was automatically generated
from [greenelab/meta-review@1724ccd](https://github.com/greenelab/meta-review/tree/1724ccd9a3d3453518cf9b4837a1a7c2be9ca194)
on February 16, 2018.
</em></small>

## Authors



+ **Daniel S. Himmelstein**<br>
    ![ORCID icon](images/orcid.svg){height="13px" width="13px"}
    [0000-0002-3012-7446](https://orcid.org/0000-0002-3012-7446)
    · ![GitHub icon](images/github.svg){height="13px" width="13px"}
    [dhimmel](https://github.com/dhimmel)
    · ![Twitter icon](images/twitter.svg){height="13px" width="13px"}
    [dhimmel](https://twitter.com/dhimmel)<br>
  <small>
     Department of Systems Pharmacology and Translational Therapeutics, University of Pennsylvania
     · Funded by GBMF4552
  </small>

+ **Casey S. Greene**<br>
    ![ORCID icon](images/orcid.svg){height="13px" width="13px"}
    [0000-0001-8713-9213](https://orcid.org/0000-0001-8713-9213)
    · ![GitHub icon](images/github.svg){height="13px" width="13px"}
    [cgreene](https://github.com/cgreene)
    · ![Twitter icon](images/twitter.svg){height="13px" width="13px"}
    [GreeneScientist](https://twitter.com/GreeneScientist)<br>
  <small>
     Department of Systems Pharmacology and Translational Therapeutics, University of Pennsylvania
     · Funded by GBMF4552
  </small>

+ **Anthony Gitter**<br>
    ![ORCID icon](images/orcid.svg){height="13px" width="13px"}
    [0000-0002-5324-9833](https://orcid.org/0000-0002-5324-9833)
    · ![GitHub icon](images/github.svg){height="13px" width="13px"}
    [agitter](https://github.com/agitter)
    · ![Twitter icon](images/twitter.svg){height="13px" width="13px"}
    [anthonygitter](https://twitter.com/anthonygitter)<br>
  <small>
     Department of Biostatistics and Medical Informatics, University of Wisconsin-Madison; Morgridge Institute for Research
     · Funded by NIH U54AI117924
  </small>



## Abstract {.page_break_before}

Scientific literature reviews are ideal for open, collaborative writing.
Allowing any interested individual to contribute as an author can strengthen a review, providing broad and fair coverage of the subject matter.
However, the traditional multi-author writing process breaks down at scale.
We present techniques for overcoming the challenges of open manuscript writing.
These include approaches for managing distributed authors and our new software for automating citation and manuscript building.


## Introduction {.page_break_before}

Openness in research – which includes sharing code, data, and manuscripts – benefits the researchers who practice it [@HQfvK1OF], their scientific peers, and the public.
`TODO: more references needed`
Traditionally however, review articles, which aim to present the state of the art in a scientific field, are written in private by a single research group or a small team of colleagues.
In contrast, broadly opening the process to anyone engaged in the topic --- such that planning, organizing, writing, and editing occur collaboratively in a public forum where anyone is welcome to participate --- can maximize a review's value.
Open drafting of reviews can be especially helpful for rapidly developing fields where integrating diverse opinions and expertise can best capture state-of-the-art knowledge.

Therefore, in August 2016 we embarked on the "Deep Review" to survey deep learning in precision medicine.
In May 2017, the project released a complete review titled "Opportunities and obstacles for deep learning in biology and medicine" [@tJKvnIaZ].
Subsequently, we have continued to maintain the project and accept new contributions as the manuscript undergoes traditional peer review at a journal.
Here we'll discuss our experience leading the Deep Review, including the pros and cons of open collaborative reviews, as well as the infrastructure we created, termed Manubot, to enable open manuscript writing online.

## The Deep Review

We initiated the Deep Review by creating a GitHub repository (https://github.com/greenelab/deep-review) to coordinate and manage contributions.
GitHub is a platform designed for collaborative software development that's adaptable for collaborative writing.
From the start, we made the GitHub repository public, applying a Creative Commons Attribution [License](https://github.com/greenelab/deep-review/blob/master/LICENSE.md) to the manuscript.
Next, we encouraged anyone interested to contribute by proposing changes or additions.
Although we requested that some authors participate for their specific expertise, most discovered the manuscript organically through conferences or social media, deciding without solicitation to contribute.
In total, the Deep Review attracted 36 authors from 20 different institutions (and counting) who were not determined in advance.

To coordinate this effort, we developed a manuscript writing process using the Markdown language, [GitHub](https://github.com/greenelab/deep-review/), and our new [Manubot](https://github.com/greenelab/manubot) tool for automating manuscript generation.

## Results

Writing review articles in a public forum allows review authors to engage with the original researchers to clarify their methods and results and present them accurately, as exemplified [here](https://github.com/greenelab/deep-review/issues/213).

`TODO: need archival issue link`
In addition, discussing manuscripts in the open provides one form of pre- and post-publication peer review `TODO: define this or provide a reference?`, incentivizing the reviews with potential manuscript authorship.
However, inviting wide authorship brings many technical and social challenges such as how to fairly distribute credit, coordinate the scientific content, and collaboratively manage extensive reference lists.

## Contribution workflow

There are many existing collaborative writing platforms ranging from rich text editors, which support Microsoft Word documents or similar formats, to LaTeX-based systems for  technical writing [@AylLD9F8] such as [Overleaf](https://www.overleaf.com/) and [Authorea](https://www.authorea.com/).
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
GitHub's review interface allows anyone to comment on the changes, globally or at specific lines, asking questions or requesting modifications as depicted in @opQBBK06.
Conversations during review can reference other pull requests, issues, or authors, linking the relevant people and content.
Reviewing batches of revisions that focus on a single theme is more efficient than independently discussing isolated comments and edits, and it helps maintain consistent content and tone across different authors and reviewers.
Once all requested modifications are made, the manuscript maintainers, a subset of authors with elevated GitHub permissions, formally approve the pull request and merge the changes into the official version.
`TODO: need a figure with a flowchart showing this process`
The entire process can be orchestrated through GitHub with a web browser if a contributor does not want to use a git client on their own computer.

We found that this workflow was an effective compromise between fully unrestricted editing and a more heavily-structured approach that limited the authors or the sections they could edit.
In addition, authors are associated with their commits, which makes it easy for contributors to receive credit for their work and helps prevent ghostwriting [@RK9sIADd].
Figure @fig:contrib and the GitHub [contributors page](https://github.com/greenelab/deep-review/graphs/contributors) summarize all edits and commits from each author, providing aggregated information that is not available on other collaborative writing platforms.
Because our writing process, like others backed by the open git version control system (including Overleaf and Authorea), tracks the complete commit history, it also enables detailed retrospective contribution analysis.
`TODO: confirm Overleaf and Authorea provide this type of git integration versus something more coarse`

![
**Deep Review contributions by author over time.**
The total words added to the Deep Review by each author is plotted over time (final values in parentheses).
These statistics were extracted from git commit diffs of the manuscript's markdown source.
This figure reveals the composition of written contributions to the manuscript at every point in its history.
](images/deep-review-contribution-ridge.svg){#fig:contrib width="100%"}

## Manubot

We developed Manubot, a system for writing scholarly manuscripts via GitHub.
With Manubot, manuscripts are written as plain-text markdown files, which is well suited for version control using git.
The markdown standard itself provides limited yet crucial formatting syntax, including the ability to embed images and format text via bold, italics, hyperlinks, headers, inline code, codeblocks, blockquotes, and numbered or bulleted lists.
In addition, Manubot relies on extensions from [Pandoc markdown](https://pandoc.org/MANUAL.html#pandocs-markdown) to enable citations, tables, captions, and equations specified using the popular TeX math syntax.

Manubot includes an additional layer of citation processing, currently unique to the system.
All citations point to a standard identifier, for which Manubot automatically retrieves bibliographic metadata.
Currently, citations to DOIs (Digital Object Identifiers), PubMed or PubMed Central identifiers, arXiv identifiers, and URLs (web addresses) are supported.
Metadata is retrieved using DOI [Content Negotiation](https://citation.crosscite.org/docs.html), NCBI's [E-utilities](https://www.ncbi.nlm.nih.gov/books/NBK25501/) and [Citation Exporter](https://www.ncbi.nlm.nih.gov/pmc/tools/ctxp/), the [arXiv API](https://arxiv.org/help/api/index), and [Greycite](http://greycite.knowledgeblog.org/) [@GKPtRdAw].
Metadata is exported to [CSL JSON Items](http://citeproc-js.readthedocs.io/en/latest/csl-json/markup.html#items), an open standard that's widely supported by reference managers [@9KfVIq3s; @K7WVgf8X].
In cases where automatic retrieval of metadata fails or produces incorrect references --- which is most common for URL citations --- users can manually provide the correct CSL JSON.

The Manubot formats bibliographies according to a [Citation Style Language](http://citationstyles.org/) (CSL) specification.
As a result, users can choose from thousands of existing CSL styles or use Manubot's default style.
Styles define how references are constructed from bibliographic metadata, controlling layout details such as the max number of authors to list per reference.
Thousands of journals have [predefined styles](http://editor.citationstyles.org/searchByName/).
As a result, adopting the specific bibliographic format required by a journal usually just requires specifying the style's source URL in the Manubot configuration.

Manubot uses [Pandoc](https://pandoc.org/) to convert manuscripts from markdown to HTML, PDF, and optionally DOCX outputs.
Pandoc supports conversion between additional formats — such as LaTeX, AsciiDoc, EPUB, and JATS — offering Manubot users broad interoperability.
[Journal Article Tag Suite](https://jats.nlm.nih.gov/) (JATS) is a standard XML format for scholarly articles that is used by publishers, archives, and text miners [@JU3KpeyB; @AAwqxolU; @bCyfIm6z].
Going forward, we hope to integrate Manubot with the larger JATS ecosystem.
For now however, the primary Manubot output is HTML intended to be viewed in a web browser.

Manubot performs continuous publication: every update to a manuscript's source is automatically reflected in the online outputs.
The approach uses continuous integration (CI) [@18w6XKsQO; @Qh7xTLwz], specifically [Travis CI](https://travis-ci.org/) at the moment, to monitor for changes.
When changes occur, the CI service generates an updated manuscript.
If this process is error free, the CI service timestamps the manuscript and uploads the output files to the GitHub repository.
Since the HTML manuscript is hosted using [GitHub Pages](https://pages.github.com/), the CI service automatically deploys the new manuscript version when it pushes the updated outputs to GitHub.

For this article, the source GitHub repository is https://github.com/greenelab/meta-review.
When this repository changes, Travis CI [rebuilds](https://travis-ci.org/greenelab/meta-review) the manuscript.
If successful, the output is deployed back to GitHub (to dedicated [`output`](https://github.com/greenelab/meta-review/tree/output) and [`gh-pages`](https://github.com/greenelab/meta-review/tree/gh-pages) branches).
As a result, https://greenelab.github.io/meta-review stays up to date with the latest HTML manuscript.

Manubot uses [OpenTimestamps](https://opentimestamps.org/) to timestamp the HTML and PDF outputs on the Bitcoin blockchain before deploying to GitHub.
This procedure allows one to retrospectively prove that a manuscript version existed prior to its blockchain-verifiable timestamp [@Y2XyzLMc; @6MR50hyY; @QBWMEuxW; @6yyYojgV].
The implications for scientific writing are twofold.
First, scientific precedence can now be indisputably established.
Second, timestamps can protect against attempts to rewrite a manuscript's history.
Since timestamps cannot be backdated, alternative histories would have to be created in advance, which is generally infeasible.
Therefore, timestamping can help ensure accurate manuscript histories, potentially alleviating certain authorship disputes.
Note that OpenTimestamps is highly scalable and free to use since it encodes many timestamps into a single Bitcoin transaction.
However, as a result, timestamps are reliant on third-party calendar services until they are upgraded at which point their lineage to the blockchain becomes self-contained.

We designed Manubot to power the next generation of scholarly manuscript.
Manubot transforms publication, making it permissionless, reproducible, free of charge, and largely open source.
Manubot does rely on gratis services from two proprietary platforms: GitHub and Travis CI.
Fortunately, lock-in to these services is minimal, and several substitutes already exist.
One direction Manubot is working towards is end-to-end document reproducibility, where every figure or piece of data in a manuscript can be traced back to its origin [@sWD9uVuF].
Already, Manubot is well suited for preserving provenance.
For example, figures can be specified using versioned URLs that refer to the code that created them.
In addition, manuscripts can be templated, so that numerical values or tables get inserted directly from the repository that created them.
An [example repository](https://github.com/greenelab/manubot-rootstock) demonstrates Manubot's features and serves as a template for users to write their own manuscript with Manubot.


### Authorship

To determine authorship we followed the International Committee of Medical Journal Editors (ICMJE) [guidelines](http://www.icmje.org/recommendations/browse/roles-and-responsibilities/defining-the-role-of-authors-and-contributors.html) and used GitHub to track contributions.
ICMJE recommends authors substantially contribute to, draft, approve, and agree to be accountable for the manuscript.
We acknowledged other contributors who did not meet all four criteria, including contributors who provided text but did not review and approve the complete manuscript.
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

Many others have embraced open science principles and piloted open approaches toward drug discovery [@O21tn8vf; @HnZE3JiU], data management [@1A97a4UwU; @6DjakjNS; @otY3SefD], and manuscript review [@nhLnUPJo].
`TODO: need help deciding what related topics to include here and which references to use, these are arbitrary examples`
`TODO: more ideas in doi:10.7287/peerj.preprints.2711v2`
Several of these open science efforts are GitHub-based like our collaborative writing process.
The ReScience [@pKdkaWKn], the Journal of Open Source Software [@oGNtTmrp], and some other [Open Journals](http://www.theoj.org/) rely on GitHub for peer review and hosting.
GitHub is also increasingly used for resource curation [@vf9t7xMG], and collaborative scholarly reviews combine literature curation with discussion and interpretation.
`TODO: describe Manubot related work here?` [@17wKkS4DV] and https://github.com/ewanmellor/gh-publisher

There are potential limitations of our GitHub-based approach.
Because our review manuscript pertained to a computational topic, most of the authors had computational backgrounds, including previous experience with version control workflows and GitHub.
In other disciplines, collaborative writing via GitHub and Manubot could present a steeper barrier to entry and deter participants.
In addition, git carefully tracks all revisions to the manuscript text but not the surrounding conversations that take place through GitHub issues and pull requests.
These discussions must be archived to ensure that important decisions about the manuscript are preserved and authors receive credit for intellectual contributions that are not directly reflected in the manuscript's text.
GitHub supports programmatic access to issues, pull requests, and reviews so tracking these conversations is feasible in the future.

In our open review paper, we established [contributor guidelines](https://github.com/greenelab/deep-review/blob/v0.9-preprint/CONTRIBUTING.md) that discussed norms in the areas of of text contribution, peer review, and authorship, which we identified in advance as potential areas of disagreement.
Our contributor guidelines required verifiable participation: either directly attributable changes to the text or participation in the discussion on GitHub.
We maintained our guidelines, even when a case arose where two authors had written text together but only one had directly attributable changes and participation.
These guidelines did not discuss broader community norms that may have improved inclusiveness.
It is also important to consider how the move to an open contribution model affects under-represented minority members of the scientific community [@zBl3qgGT].
Recent work has identified clear social norms and processes as helpful to maintaining a collaborative culture [@NuDPNceu].
<!-- cited a previous version of doi:10.1080/08874417.2009.11645338 (see https://git.io/vdSSR) -->
Conferences and open source projects have used codes of conduct to establish these norms [@HPKoE9m3=35801; @aRZRiJPk].
We would encourage the maintainers of similar projects to consider broader codes of conduct for project participants that establish on social as well as academic norms.

Open writing presents new opportunities for scholarly communication.
`TODO: reference "paper of the future"? arXiv:1601.02927 doi:10.22541/au.149693987.70506124 doi:10.22541/au.148769949.92783646 http://blogs.nature.com/naturejobs/2017/06/01/techblog-c-titus-brown-predicting-the-paper-of-the-future`
Though it is still valuable to have versioned drafts of a review manuscript with digital identifiers, journal publication may not be the terminal endpoint for collaborative manuscripts.
After releasing the first version of our collaborative review [@tJKvnIaZ], 12 new contributors have updated the manuscript (Figure @fig:contrib) and existing authors continue to discuss new literature, [creating a living document](https://github.com/greenelab/deep-review/).
`TODO: update new author count before submitting`
The Manubot system can also facilitate open research [@11cb5HXoY] in addition to review articles.
`TODO: get permission and add https://slochower.github.io/nonequilibrium-barrier/ https://zietzm.github.io/Vagelos2017/`

Our process represents an early step toward open massively collaborative reviews, and there are certainly aspects that can be improved.
We invite the scientific community to adapt and build upon our experience and open software.


## Acknowledgements

`TODO: deep review authors for support in testing this process`
`TODO: manubot-rootstock contributors`

## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
