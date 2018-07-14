---
author-meta:
- Daniel S. Himmelstein
- David R. Slochower
- Venkat S. Malladi
- Casey S. Greene
- Anthony Gitter
date-meta: '2018-07-14'
keywords:
- collaborative review
- continuous integration
- publishing
- Manubot
lang: en-US
title: Open collaborative writing with Manubot
...






<small><em>
This manuscript
([permalink](https://greenelab.github.io/meta-review/v/87a8d38f57f1ab07c692adc7dc295738e2c20914/))
was automatically generated
from [greenelab/meta-review@87a8d38](https://github.com/greenelab/meta-review/tree/87a8d38f57f1ab07c692adc7dc295738e2c20914)
on July 14, 2018.
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

+ **David R. Slochower**<br>
    ![ORCID icon](images/orcid.svg){height="13px" width="13px"}
    [0000-0003-3928-5050](https://orcid.org/0000-0003-3928-5050)
    · ![GitHub icon](images/github.svg){height="13px" width="13px"}
    [slochower](https://github.com/slochower)
    · ![Twitter icon](images/twitter.svg){height="13px" width="13px"}
    [drslochower](https://twitter.com/drslochower)<br>
  <small>
     Skaggs School of Pharmacy and Pharmaceutical Sciences, University of California, San Diego
  </small>

+ **Venkat S. Malladi**<br>
    ![ORCID icon](images/orcid.svg){height="13px" width="13px"}
    [0000-0002-0144-0564](https://orcid.org/0000-0002-0144-0564)
    · ![GitHub icon](images/github.svg){height="13px" width="13px"}
    [vsmalladi](https://github.com/vsmalladi)
    · ![Twitter icon](images/twitter.svg){height="13px" width="13px"}
    [katatonikat](https://twitter.com/katatonikat)<br>
  <small>
     · Funded by RP150596
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
These include approaches for managing distributed authors and our new software, named Manubot, for automating citation and manuscript building.


## Introduction {.page_break_before}

Openness in research --- which includes sharing code, data, and manuscripts --- benefits the researchers who practice it [@HQfvK1OF], their scientific peers, and the public.
Open scholarly writing, a form of crowdsourcing [@12sHvZy1a], has particular benefits for review articles, which present the state of the art in a scientific field [@Rhm4AK0j].
Literature reviews are typically written in private by a closed team of colleagues.
In contrast, broadly opening the process to anyone engaged in the topic --- such that planning, organizing, writing, and editing occur collaboratively in a public forum where anyone is welcome to participate --- can maximize a review's value.
Open drafting of reviews is especially helpful for capturing state-of-the-art knowledge about rapidly advancing research topics at the intersection of existing disciplines where contributors bring diverse opinions and expertise.

Based on our experience leading a recent open review [@16CgM2x0z], we discuss the pros and cons of open collaborative reviews as well as how they contribute to a living and frequently updated literature.
Our review manuscript [@PZMP42Ak], code-named the Deep Review, surveyed deep learning's role in biology and precision medicine, a research area undergoing explosive growth.
In addition, we introduce [Manubot](https://github.com/greenelab/manubot-rootstock), the infrastructure we created to enable open manuscript writing online for Deep Review, which was subsequently adopted by other projects.

We initiated the Deep Review by creating a GitHub repository (<https://github.com/greenelab/deep-review>) to coordinate and manage contributions.
GitHub is a platform designed for collaborative software development that's adaptable for collaborative writing.
From the start, we made the GitHub repository public, applying a [Creative Commons Attribution License](https://github.com/greenelab/deep-review/blob/master/LICENSE.md) to the manuscript.
Next, we encouraged anyone interested to contribute by proposing changes or additions.
Although we invited some specific experts to participate, most authors discovered the manuscript organically through conferences or social media, deciding to contribute without solicitation.
In total, the Deep Review attracted 36 authors who were not determined in advance from 20 different institutions.

Writing review articles in a public forum allows review authors to engage with the original researchers to clarify their methods and results and present them accurately, as exemplified [here](https://github.com/greenelab/deep-review/issues/213).
Additionally, discussing manuscripts in the open generates valuable post-publication peer review [@LfJGtB83; @jYs2OUFW; @HflJ6Hy5] or pre-publication peer review of preprints [@pqBLIXzp].
Because incentives are commonly lacking to provide public peer review of existing literature [@uw5bep8P], open collaborative reviews --- where authorship is open to anyone who makes a valid contribution --- could help spur more post-publication peer review.
However, inviting wide authorship brings many technical and social challenges such as how to fairly distribute credit, coordinate the scientific content, and collaboratively manage extensive reference lists.

To address these challenges, we developed a manuscript writing process using the Markdown language, the GitHub platform, and our new Manubot tool for automating manuscript generation.

## Contribution workflow

There are many existing collaborative writing platforms ranging from rich text editors, which support Microsoft Word documents or similar formats, to LaTeX-based systems for technical writing [@AylLD9F8] such as [Overleaf](https://www.overleaf.com/) and [Authorea](https://www.authorea.com/).
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
Conversations during review can reference other pull requests, issues, or authors, linking the relevant people and content, as illustrated in Figure @fig:workflow.
Reviewing batches of revisions that focus on a single theme is more efficient than independently discussing isolated comments and edits, and it helps maintain consistent content and tone across different authors and reviewers.
Once all requested modifications are made, the manuscript maintainers, a subset of authors with elevated GitHub permissions, formally approve the pull request and merge the changes into the official version.
The process of writing and revising material can be orchestrated through GitHub with a web browser.

![
**Deep Review editing workflow.**
Any reader can become a contributor by proposing a change through a pull request.
In this example, the contributor opens an issue to discuss a manuscript modification.
A maintainer and additional participant provide feedback, and the maintainer recommends creating a pull request to update the text.
The contributor creates the pull request, it is reviewed by a maintainer and a participant, and the contributor updates the pull request in response.
Once the pull request is approved, the maintainer merges the changes into the official version of the manuscript.
](images/workflow.svg){#fig:workflow width=5in}

<!-- Google Drawing View Link https://docs.google.com/drawings/d/17mst0Z1RMXegeGhM6SwQSJ4nhHgMMh5csyV4MwhsgAY/edit?usp=sharing -->

The Deep Review [issue](https://github.com/greenelab/deep-review/issues/575) and [pull request](https://github.com/greenelab/deep-review/pull/638) on protein-protein interactions demonstrate this process in practice.
A new contributor identified a relevant research topic that was missing from the review manuscript with examples of how the literature would be synthesized.
A maintainer confirmed that this was a desirable topic and referred to related open issues.
The contributor made the pull request, and two maintainers and another participant made recommendations.
After four rounds of reviews and pull request edits, a maintainer merged the changes.

We found that this workflow was an effective compromise between fully unrestricted editing and a more heavily-structured approach that limited the authors or the sections they could edit.
In addition, authors are associated with their commits, which makes it easy for contributors to receive credit for their work and helps prevent ghostwriting [@RK9sIADd].
Figure @fig:contrib and the GitHub [contributors page](https://github.com/greenelab/deep-review/graphs/contributors) summarize all edits and commits from each author, providing aggregated information that is not available on other collaborative writing platforms.
Because our writing process, like others backed by the open git version control system (including Overleaf and Authorea), tracks the complete commit history, it also enables detailed retrospective contribution analysis.

![
**Deep Review contributions by author over time.**
The total words added to the Deep Review by each author is plotted over time (final values in parentheses).
These statistics were extracted from git commit diffs of the manuscript's Markdown source.
This figure reveals the composition of written contributions to the manuscript at every point in its history.
Deep Review was initiated in August 2016, and the first complete manuscript was released as a preprint [@tJKvnIaZ] in May 2017.
While the article was under review, we continued to maintain the project and accepted new contributions.
The preprint was updated in January 2018, and the article was accepted by the journal in March 2018 [@PZMP42Ak].
](images/deep-review-contribution-ridge.svg){#fig:contrib width="100%"}

## Manubot

We developed Manubot, a system for writing scholarly manuscripts via GitHub.
With Manubot, manuscripts are written as plain-text Markdown files, which is well suited for version control using git.
The Markdown standard itself provides limited yet crucial formatting syntax, including the ability to embed images and format text via bold, italics, hyperlinks, headers, inline code, codeblocks, blockquotes, and numbered or bulleted lists.
In addition, Manubot relies on extensions from [Pandoc Markdown](https://pandoc.org/MANUAL.html#pandocs-markdown) to enable citations, tables, captions, and equations specified using the popular TeX math syntax.

Manubot includes an additional layer of citation processing, currently unique to the system.
All citations point to a standard identifier, for which Manubot automatically retrieves bibliographic metadata.
Table @tbl:citations presents the supported identifiers and example citations before and after Manubot processing.
Authors can optionally define citation tags to provide short readable alternatives to the citation identifiers.
Metadata is exported to [Citation Style Language (CSL) JSON Items](http://citeproc-js.readthedocs.io/en/latest/csl-json/markup.html#items), an open standard that is widely supported by reference managers [@9KfVIq3s; @K7WVgf8X].
In cases where automatic retrieval of metadata fails or produces incorrect references --- which is most common for URL citations --- users can manually provide the correct CSL JSON.

| Identifier | Metadata source | Example citation | Processed citation |
| --- | --- | --- | --- |
| Digital Object Identifier (DOI) | DOI [Content Negotiation](https://citation.crosscite.org/docs.html) | `doi:10.1098/rsif.2017.0387` | [@PZMP42Ak] |
| PubMed Identifier (PMID) | NCBI's [E-utilities](https://www.ncbi.nlm.nih.gov/books/NBK25501/) | `pmid:25851694` | [@LfJGtB83] |
| PubMed Central Identifier (PMCID) | NCBI's [Citation Exporter](https://www.ncbi.nlm.nih.gov/pmc/tools/ctxp/) | `pmcid:PMC4719068` | [@12sHvZy1a] |
| arXiv identifier | [arXiv API](https://arxiv.org/help/api/index) | `arxiv:1502.04015v1` | [@Y2XyzLMc] |
| URL | [Greycite](http://greycite.knowledgeblog.org/) [@GKPtRdAw] | `url:https://lgatto.github.io/open-and-open/` | [@zBl3qgGT] |
| Tag | Source for tagged identifier | `tag:Avasthi2018_preprints` | [@pqBLIXzp] |

Table: Citation types supported by Manubot.
Authors may optionally map a named tag to one of the other supported identifier types.
In this example, the tag `Avasthi2018_preprints` represents the DOI identifier `doi:10.7554/eLife.38532`.
{#tbl:citations}

Manubot formats bibliographies according to a [CSL](http://citationstyles.org/) specification.
As a result, users can choose from thousands of existing CSL styles or use Manubot's default style.
Styles define how references are constructed from bibliographic metadata, controlling layout details such as the maximum number of authors to list per reference.
Thousands of journals have [predefined styles](http://editor.citationstyles.org/searchByName/).
As a result, adopting the specific bibliographic format required by a journal usually just requires specifying the style's source URL in the Manubot configuration.

Manubot uses [Pandoc](https://pandoc.org/) to convert manuscripts from Markdown to HTML, PDF, and optionally DOCX outputs.
Pandoc supports conversion between additional formats — such as LaTeX, AsciiDoc, EPUB, and JATS — offering Manubot users broad interoperability.
[Journal Article Tag Suite](https://jats.nlm.nih.gov/) (JATS) is a standard XML format for scholarly articles that is used by publishers, archives, and text miners [@JU3KpeyB; @AAwqxolU; @bCyfIm6z].
Going forward, we hope to integrate Manubot with the larger JATS ecosystem.
For now however, the primary Manubot output is HTML intended to be viewed in a web browser.

Manubot performs continuous publication: every update to a manuscript's source is automatically reflected in the online outputs.
The approach uses continuous integration (CI) [@18w6XKsQO; @Qh7xTLwz; @lXvpQxeN], specifically [Travis CI](https://travis-ci.org/) at the moment, to monitor for changes.
When changes occur, the CI service generates an updated manuscript.
If this process is error free, the CI service timestamps the manuscript and uploads the output files to the GitHub repository.
Since the HTML manuscript is hosted using [GitHub Pages](https://pages.github.com/), the CI service automatically deploys the new manuscript version when it pushes the updated outputs to GitHub.

For this article, the source GitHub repository is <https://github.com/greenelab/meta-review>.
When this repository changes, Travis CI [rebuilds](https://travis-ci.org/greenelab/meta-review) the manuscript.
If successful, the output is deployed back to GitHub (to dedicated [`output`](https://github.com/greenelab/meta-review/tree/output) and [`gh-pages`](https://github.com/greenelab/meta-review/tree/gh-pages) branches).
As a result, <https://greenelab.github.io/meta-review> stays up to date with the latest HTML manuscript.
Furthermore, versioned URLs, such as <https://greenelab.github.io/meta-review/v/3ec66cd440e78dac33f4700f1cecbc4d95b20139/> `(TODO: update commit)`, provide access to previous manuscript versions.

The idea of the "priority of discovery" is important to science, and Vale and Hyman discuss the importance of both disclosure and validation [@vHuGhm4k].
In their framework, disclosure occurs when a scientific output is released to the world.
However, for a manuscript that is shared as it is written, being able to establish priority could be challenging.
We implemented support for [OpenTimestamps](https://opentimestamps.org/) in Manubot to timestamp the HTML and PDF outputs on the Bitcoin blockchain.
This procedure allows one to retrospectively prove that a manuscript version existed prior to its blockchain-verifiable timestamp [@Y2XyzLMc; @6MR50hyY; @QBWMEuxW; @6yyYojgV].
For Manubot manuscripts, scientific precedence can now be indisputably established, and timestamps protect against attempts to rewrite a manuscript's history.
Such timestamping practices help ensure accurate histories, potentially alleviating certain authorship or priority disputes.
Since all bitcoin transactions are competing for limited space on the blockchain, the fees required to send a single transaction can be high.
OpenTimestamps avoids this fee by encoding many timestamps into a single Bitcoin transaction [@1DG704X8Q], but there can be a lag of a few hours before the transaction is made.
We judged this to be suitable for the purposes of scientific writing.

We designed Manubot to power the next generation of scholarly manuscript.
Manubot transforms publication, making it permissionless, reproducible, free of charge, and largely open source.
Manubot does rely on gratis services from two proprietary platforms: GitHub and Travis CI.
Fortunately, lock-in to these services is minimal, and several substitutes already exist.
One direction Manubot is working towards is end-to-end document reproducibility, where every figure or piece of data in a manuscript can be traced back to its origin [@sWD9uVuF].
Already, Manubot is well suited for preserving provenance.
For example, figures can be specified using versioned URLs that refer to the code that created them.
In addition, manuscripts can be templated, so that numerical values or tables get inserted directly from the repository that created them.
An [example repository](https://github.com/greenelab/manubot-rootstock) demonstrates Manubot's features and serves as a template for users to write their own manuscript with Manubot.

Since its creation to facilitate the Deep Review, Manubot has been used to write a variety of scholarly documents.
The [Sci-Hub Coverage Study](https://github.com/greenelab/scihub-manuscript) --- performed openly on GitHub from its inception --- investigated Sci-Hub's repository of pirated articles [@IhliSZDo].
Sci-Hub [reviewed](https://github.com/greenelab/scihub-manuscript/issues/17) the initial preprint from this study in a series of tweets, pointing out a major error in one of the analyses.
Within hours, the authors used Markdown's strikethrough formatting in Manubot to cross-out the errant sentences ([commit](https://github.com/greenelab/scihub-manuscript/commit/8fcd0cd665f6fb5f39bed7e26b940aa27d4770ba), [versioned manuscript](https://greenelab.github.io/scihub-manuscript/v/8fcd0cd665f6fb5f39bed7e26b940aa27d4770ba/)), thereby alerting readers to the mistake and preventing further propagation of misinformation.
A larger [set of revisions](https://github.com/greenelab/scihub-manuscript/pull/19) that was merged a month later explained the error in more detail, and was included in a second version of the preprint.
As such, continuous publishing via Manubot helped the authors address the error without delay, while retaining a public version history of the process.
Of interest, the Sci-Hub Coverage Study preprint was the [most viewed](http://web.archive.org/web/20171221221858/http://www.prepubmed.org/top_preprints/) 2017 _PeerJ Preprint_, while the Deep Review was the most viewed 2017 _bioRxiv_ preprint [@9IrsqXRa].
Hence, in Manubot's first year, two of the most popular preprints were written using its collaborative, open, and review-driven authoring process.

Additional research studies in progress are being authored using Manubot, including in the fields of [genomics](https://vsmalladi.github.io/tfsee-manuscript/), [climate science](https://openclimatedata.github.io/global-emissions/), and [data visualization](https://yt-project.github.io/yt-3.0-paper/).
Manubot is also being used for documents beyond traditional journal publications, such as [grant proposals](https://greenelab.github.io/manufund-2018/), [progress reports](https://greenelab.github.io/czi-hca-report/), [undergraduate research reports](https://zietzm.github.io/Vagelos2017/) [@15nwuvjrA], [literature reviews](https://slochower.github.io/synthetic-motor-literature/), and lab notebooks.
Finally, manuscripts written with other authoring systems have been successfully ported to Manubot, including the [Bitcoin Whitepaper](https://git.dhimmel.com/bitcoin-whitepaper/) [@yte07Fnn] and [Project Rephetio manuscript](https://git.dhimmel.com/rephetio-manuscript/) [@O21tn8vf].

## Authorship

To determine authorship for the Deep Review, we followed the International Committee of Medical Journal Editors (ICMJE) [guidelines](http://www.icmje.org/recommendations/browse/roles-and-responsibilities/defining-the-role-of-authors-and-contributors.html) and used GitHub to track contributions.
ICMJE recommends authors substantially contribute to, draft, approve, and agree to be accountable for the manuscript.
We acknowledged other contributors who did not meet all four criteria, including contributors who provided text but did not review and approve the complete manuscript.
Although these criteria provided a straightforward, equitable way to determine who would be an author, they did not produce a traditionally ordered author list.
In biomedical journals, the convention is that the first and last authors made the most substantial contributions to the manuscript.
This convention can be difficult to reconcile in a collaborative effort.
Using git, we could quantify the number of commits each author made or the number of sentences an author wrote or edited, but these metrics discount intellectual contributions such as discussing primary literature and reviewing pull requests.
However, there is no objective system to compare and weight the different types of contributions and produce an ordered author list.

To address this issue, we generalized the concept of "co-first" authorship, in which two or more authors are denoted as making equal contributions to a paper.
We defined four types of contributions [@PZMP42Ak], from major to minor, and reviewed the GitHub discussions and commits to assign authors to these categories.
A randomized algorithm then arbitrarily ordered authors within each contribution category, and we combined the category-specific author lists to produce a traditional ordering.
The randomization procedure was shared with the authors in advance (pre-registered) and run in a deterministic manner.
Given the same author contributions, it always produced the same ordered author list.
We annotated the author list to indicate that author order was partly randomized and emphasize that the order did not indicate one author contributed more than another from the same category.

## Discussion

The Deep Review was not the first scholarly manuscript written online via an open collaborative process.
Interestingly, the collaborative scholarly works (of which we're aware) tend to have dealt with rapidly developing topics.
In 2013, two dozen mathematicians created the 600-page "HoTT Book" on "Homotopy Type Theory", writing collaboratively in LaTeX on GitHub [@RExXs8is; @MhC1nPDK].
Two technical books on cryptocurrency --- [Mastering Bitcoin](https://github.com/bitcoinbook/bitcoinbook) and [Mastering Ethereum](https://github.com/ethereumbook/ethereumbook) --- written on GitHub in asciidoc format have engaged hundreds of contributors.
Both The HoTT Book and Mastering Bitcoin continue to be maintained years after their initial publication.
A 2017 perspective on the future of peer review was written collaboratively on Overleaf, with contributions from 32 authors [@52Q1v5nS].
While debate was raging over tightening the default threshold for statistical significance, nearly 150 scientists contributed to a Google Doc discussion that was condensed into a traditional journal commentary [@82ZjWq3i; @HXpnCQu1].
The greatest success to date of open collaborative writing is arguably Wikipedia, whose English version contains over 5.5 million articles.
Wikipedia scaled encyclopedias [far beyond](https://en.wikipedia.org/wiki/Wikipedia:Size_comparisons) any privately-written alternative.
As the examples above illustrate, open collaborative writing appears to scale scholarly manuscripts where diverse opinion and expertise are paramount beyond what would otherwise be possible.

Concepts for the future of scholarly publishing extend beyond collaborative writing [@WDvu1SAV; @ILhLpgTs].
Bookdown [@1BISa1RLr] and Pandoc Scholar [@17wKkS4DV] both extend traditional Markdown to better support publishing.
Examples of continuous integration to automate manuscript generation include [gh-publisher](https://github.com/ewanmellor/gh-publisher) and Continuous Publishing [@nqeDrtsc], which was used to produce the book Opening Science [@ujrfOBM1].

Many others have embraced open science principles and piloted open approaches toward drug discovery [@O21tn8vf; @HnZE3JiU], data management [@1A97a4UwU; @6DjakjNS; @otY3SefD], and manuscript review [@nhLnUPJo].
Several of these open science efforts are GitHub-based like our collaborative writing process.
The ReScience [@8o1nWux7], the Journal of Open Source Software [@xpw2aizK], and some other [Open Journals](http://www.theoj.org/) rely on GitHub for peer review and hosting.
GitHub is also increasingly used for resource curation [@vf9t7xMG], and collaborative scholarly reviews combine literature curation with discussion and interpretation.

There are potential limitations of our GitHub-based approach.
Because our review manuscript pertained to a computational topic, most of the authors had computational backgrounds, including previous experience with version control workflows and GitHub.
In other disciplines, collaborative writing via GitHub and Manubot could present a steeper barrier to entry and deter participants.
In addition, git carefully tracks all revisions to the manuscript text but not the surrounding conversations that take place through GitHub issues and pull requests.
These discussions must be archived to ensure that important decisions about the manuscript are preserved and authors receive credit for intellectual contributions that are not directly reflected in the manuscript's text.
GitHub supports programmatic access to issues, pull requests, and reviews so tracking these conversations is feasible in the future.

In our open review paper, we established [contributor guidelines](https://github.com/greenelab/deep-review/blob/v0.9-preprint/CONTRIBUTING.md) that discussed norms in the areas of text contribution, peer review, and authorship, which we identified in advance as potential areas of disagreement.
Our contributor guidelines required verifiable participation: either directly attributable changes to the text or participation in the discussion on GitHub.
We maintained our guidelines, even when a case arose where two authors had written text together but only one had directly attributable changes and participation.
These guidelines did not discuss broader community norms that may have improved inclusiveness.
It is also important to consider how the move to an open contribution model affects under-represented minority members of the scientific community [@zBl3qgGT].
Recent work has identified clear social norms and processes as helpful to maintaining a collaborative culture [@NuDPNceu].
<!-- cited a previous version of doi:10.1080/08874417.2009.11645338 (see https://git.io/vdSSR) -->
Conferences and open source projects have used codes of conduct to establish these norms [@HPKoE9m3=35801; @aRZRiJPk].
We would encourage the maintainers of similar projects to consider broader codes of conduct for project participants that establish on social as well as academic norms.

Open writing presents new opportunities for scholarly communication.
Though it is still valuable to have versioned drafts of a review manuscript with digital identifiers, journal publication may not be the terminal endpoint for collaborative manuscripts.
After releasing the first version of our collaborative review [@tJKvnIaZ], 14 new contributors have updated the manuscript (Figure @fig:contrib) and existing authors continue to discuss new literature, [creating a living document](https://github.com/greenelab/deep-review/).

Our process represents an early step toward open massively collaborative reviews, and there are certainly aspects that can be improved.
We invite the scientific community to adapt and build upon our experience and open software.


## Acknowledgements

`TODO: deep review authors for support in testing this process`
`TODO: manubot-rootstock contributors`

## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>
