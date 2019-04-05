# Response to reviewers

Dear Dr. Schneidman-Duhovny,

We thank you the reviewers for their thoughtful comments.
Based on their feedback, we have revised the manuscript and address each reviewer suggestion point-by-point below.

**[SUMMARIZE MAJOR CHANGES TO MANUBOT AND THE MANUSCRIPT HERE]**

Sincerely,  
Anthony

***

## Reviewer 1

> Great article reporting on an important development for open scholarship!
One minor suggestion/comment - it wasn't clear why the Manubot description came AFTER the Deep Review suggestion.
Is it not true that DR was a first instance use of Manubot? If so, why not describe the tool, then describe DR as the pilot?
Generally it read as though those two sections were distinct, while I think the authors intended that they be part of a bigger story.

We thank the reviewer for pointing out that that original organization was confusing.
The intention of the section previously titled `Contribution workflow` is to present the overall philosophy of collaborative writing with Manubot before diving into specific Manubot features that enable this writing process.
Deep Review is used as to provide specific examples of the collaborative process.
We restructured this section, now named `Manubot contribution workflow`, and generalized it in [GH183](https://github.com/greenelab/meta-review/pull/183) and discussed the changes in [GH129](https://github.com/greenelab/meta-review/pull/129).

## Reviewer 2

> Overall, the article is nicely written and corresponds to a software paper (in my opinion).
My main concern (+ comments and questions below) is that the article is a bit technical and as such, addresses a technical audience.
Since the paper has been submitted as a Software paper, maybe it's fine but it would be nice if non-technical people would also be able to read the paper (to realize open-source collaborative frameworks exists).

> The introduction may lack a part on tools that are used in different communities, especially with "mega papers" (e.g. physics where you have routinely thousand of authors).

We discussed this point in [GH131](https://github.com/greenelab/meta-review/issues/131) and addressed it in [GH169](https://github.com/greenelab/meta-review/pull/169).
While we found a number of "mega papers" in the fields of physics and biology, we were unable to quantify how many authors of those papers were able to participate in the process of discussing, drafting, and composing the final articles (versus e.g., conceptualizing the process, collecting or analyzing the data, and so on).
In fact, more than one press release related to those articles note the difficulty "[merging author lists](https://www.nature.com/news/physics-paper-sets-record-with-more-than-5-000-authors-1.17567)" and disagreements about authorship.
Manubot allows each author—and other interested parties—the ability to contribute in a way that other platforms do not.
To that end, we've added a paragraph in the Authorship section addressing this point.

> `For now, the primary Manubot output is HTML intended to be viewed in a web browser.`
→ I would insist a bit more on this part because it is a real strength if you consider a future integration with interactive figures (e.g. bokeh) and/or Jupyter notebooks.
Being able to produce both a nice PDF and a HTML dynamic version would be a nice feature.

The HTML-first workflow, where the PDF is created from the HTML, does permit incorporation of interactive web visualizations, as we now note in the manuscript (edits in [GH171](https://github.com/greenelab/meta-review/pull/171)).
One downside is that it can [be difficult](https://github.com/manubot/rootstock/issues/192 "Increasing the density of PDF exports to reduce number of pages") to create heavily typeset and whitespace-optimized PDFs using CSS.
However, Manubot envisions a future where the HTML view is the primary means of accessing the article.
See [GH132](https://github.com/greenelab/meta-review/issues/132) for additional discussion.

Regarding interactive notebooks, some projects (e.g. [_eLife_'s reproducible article](https://elifesciences.org/labs/ad58f08d/introducing-elife-s-first-computationally-reproducible-article)) are exploring incorporating customizable source code execution directly into a manuscript's HTML view.
One challenge of this approach is that most analyses require substantial code, scattered across many layers of dependencies and inputs.
Therefore, it is not clear that there is a manageable way to interact with all of this code directly within the HTML view of the manuscript.
As an alternative approach, we have added Binder support to the Deep Review contribution analysis ([click to launch Binder](https://mybinder.org/v2/gh/greenelab/meta-review/binder?filepath=analyses/deep-review-contrib/02.contrib-viz.ipynb), implemented in [GH161](https://github.com/greenelab/meta-review/pull/161)).
Binder allows readers to open the notebook used to generate Figure 2 in their browser.
We found this approach allows users to modify source code at a scale that is more likely to be practical for complex data reanalyses.

> In the discussion, it would be nice to have a vision on the future of manubot.
What new features will be implemented?
Do you plan to apply for a grant to further develop manubot? etc.

We discuss this issue in [GH133](https://github.com/greenelab/meta-review/issues/133) and address it in [GH179](https://github.com/greenelab/meta-review/pull/179).
Specifically, we added a sub-section titled "Future Manubot enhancements".

Currently, Manubot development is supported through August 2019 by a [grant](https://sloan.org/grant-detail/8501 "Grant Number G-2018-11163") from the Sloan Foundation.
We plan to pursue additional funding opportunities to enable sustained development.

> The layout of the PDF and the HTML could benefit from a better template (and font stack).
This a totally minor point, but it might help to attract new people.

Improving the Manubot frontend has been one of the major focuses of our recent development efforts.
We rewrote the CSS to modernize the front end and improve the default fonts and styles.
In addition, we restructured the Manubot codebase to support optional plugins and multiple themes (manuscript styles).
The plugins provide interactive features such as citation tooltips, a table of contents, an image viewer, Hypothesis annotations, and collapsible sections as well as MathJax support for LaTeX equations.
The new Figure 3 highlights the Manubot plugins.
Plugins can be easily disabled by removing the plugin-specific line from the [build script](https://github.com/greenelab/meta-review/blob/d5db751c9d1a63088d0fbcb3d12da8b79697c919/build/build.sh#L36-L50) used during continuous deployment.

Enhancing the plugins and styles remains an active development area.
We are planning additional front end improvements in [manubot/rootstock#189](https://github.com/manubot/rootstock/issues/189) and [manubot/rootstock#192](https://github.com/manubot/rootstock/issues/192).
We discussed these revisions in [GH134](https://github.com/greenelab/meta-review/issues/134) and [GH168](https://github.com/greenelab/meta-review/issues/168) and updated the manuscript in [GH172](https://github.com/greenelab/meta-review/pull/172).

> You need to have a long-term archive (e.g. Zenodo) of manubot (just in case GitHub closes tomorrow).
Or you can use a Software Heritage identifier to make sure manubot can still be found in a few years.

This feedback was discussed in [GH135](https://github.com/greenelab/meta-review/issues/135) and addressed in [GH159](https://github.com/greenelab/meta-review/pull/159).
We created GitLab mirrors of important Manubot repositories, to provide access to Manubot's latest source code during any GitHub downtime.
We also added Software Heritage identifiers, to preserve access to Manubot's source code via snapshots.
We found this preferable to Zenodo archiving because we were not ready to commit to perpetually maintaining Zenodo records that potentially require manual edits.
Currently, deployment of [releases to PyPI](https://pypi.org/project/manubot/#history) is [fully automated](https://github.com/manubot/manubot/blob/81394c0a8153fa3ad41ee3cb987227c8ea043125/.travis.yml#L16-L25).
In the interest of frequent releases, we want to keep the effort required to make a release minimal.

> On the Authorship, how do you give credits to people having participated in a work (e.g. did all the experiment) but did not commit anything on the manuscript?

We added a new paragraph to the Authorship section to clarify that Manubot does not force authors to follow the conventions we used for the Deep Review manuscript.
Authors are free to follow the authorship conventions of their discipline, which can include authors who did not commit anything to the manuscript.
This feedback was discussed in [GH136](https://github.com/greenelab/meta-review/issues/136) and addressed in [GH177](https://github.com/greenelab/meta-review/pull/177).

> On the Authorship, how do you deal with people being not identified (e.g. only a GitHub pseudo)?

Related to the comment above, the new Authorship section clarifies that pseudonyms and pseudonymous GitHub usernames are allowed in Manubot manuscripts.
Authorship information is entered as text in a manuscript metadata file so any author name conventions can be followed.
This feedback was discussed in [GH137](https://github.com/greenelab/meta-review/issues/137) and addressed in [GH177](https://github.com/greenelab/meta-review/pull/177).

> Is it possible to use manubot on a private GitHub repository?
I'm pretty sure some people would be interested in using manubot but probably would not use it for open editing.

> In the discussion, to what extent a contributor can only use the GitHub interface (text editor + automated PR)?
Would not that be a way to lower the technical entry level for contributors?

> Would it be possible for a (anonymous) reviewer to use the workflow to do the actual review?

> Could you elaborate a bit on the potential limitations of the markdown language?
Did you encounter some difficulties in referencing figures or tables?

We discussed this feedback in [GH141](https://github.com/greenelab/meta-review/issues/141) and revised the manuscript accordingly in [GH186](https://github.com/greenelab/meta-review/pull/186).
The manuscript now includes a more comprehensive discussion of Markdown, with links / references to the CommonMark standard and the Pandoc Scholar study, which provides additional details on formatting scholarly writing with Pandoc's Markdown.
In [manubot/rootstock#169](https://github.com/manubot/rootstock/pull/169), we updated the `content/02.delete-me.md` file to showcase supported formatting options.
The manuscript now links to the raw and rendered displays of this Markdown to better exhibit Manubot's formatting options.
The manuscript and the revised delete-me examples describe/exhibit how cross-referencing figures and tables is supported using the `pandoc-xnos` suite of Pandoc filters.

> What is the procedure when you submit an article to a journal?
Do you have a set of pandoc templates or do you work directly on the word or latex output to match journal requirements?

In our experience, the easiest option for journal submission is to use Manubot's PDF output initially and the DOCX format for the final submission.
We added this text to the `Manubot` section.

We are currently exploring Pandoc's `--reference-doc` as a way to streamline journal submission.
This option could accept a publisher's template DOCX file and apply the styling to a Manubot manuscript output in the DOCX format.
In the long term, we expect some publishers will accept JATS format submissions and plan to build on Pandoc's JATS support.

See [GH142](https://github.com/greenelab/meta-review/issues/142) and [GH170](https://github.com/greenelab/meta-review/pull/170) for the discussion and edits.

> `We initiated the Deep Review` → when?
Would be nice to give some date at this point.

Deep Review was started in August 2016.
We discussed this comment in [GH143](https://github.com/greenelab/meta-review/pull/143) and added the date to the manuscript in [GH183](https://github.com/greenelab/meta-review/pull/183).

> `In total, the Deep Review attracted...` → in less than a few weeks? months? years?

This referred to the less than two year period from August 2016 when the Deep Review project started to March 2018 when the journal submission was accepted.
We discussed this comment in [GH143](https://github.com/greenelab/meta-review/pull/143) and made the requested change in [GH183](https://github.com/greenelab/meta-review/pull/183).

> `we made the GitHub repository public under a Creative Commons Attribution License.` → The link points to CC-BY 4.0 International, it would be good to have this information in the name of the link (or we have to click to check which kind CC you used).

We now state the full license name in the link text: `Creative Commons Attribution 4.0 International (CC BY 4.0) license`.
See [GH145](https://github.com/greenelab/meta-review/issues/145) and [GH154](https://github.com/greenelab/meta-review/pull/154) for the discussion and edits.

> `they lack sufficient features for managing a collaborative editing` → This is a bit of an overstatemeent because these tools are used daily by a lot of people to do just that.
I agree on the second part on the 'precise credit' aspect but as the sentence is currently written, you seem to imply that even collaborative editing is not possible.

We noted this piece of feedback in [GH146](https://github.com/greenelab/meta-review/issues/146) and addressed it in [GH156](https://github.com/greenelab/meta-review/pull/156) and [GH188](https://github.com/greenelab/meta-review/pull/188).
We have clarified the distinction between Manubot and other platforms, in particular, the ability to carry out discussions on thematically related changes and iterative refinement of wording.

> Table 1. → You should add a WYSIWIG feature that is present in a number of platforms and important for a lot of non technical people.
Same for inline comments and diff colorization.

We added `WYSIWYG mode`, `Inline comments`, and `Viewing changes` as new features to the table that compares collaborative writing platforms.
In addition, we updated the table to use Overleaf v2 instead of Overleaf v1, which was discontinued.
We discussed these changes in [GH147](https://github.com/greenelab/meta-review/issues/147) and edited the table in [GH188](https://github.com/greenelab/meta-review/pull/188).

> Figure 1. → Maybe an horizontal layout would be better (to suggest a timeline from left to right).
The waves (symbolizing the content) could be probably replaced by straight thick lines.
It took me a few seconds to realize this was meaning content.
See for example https://swcarpentry.github.io/git-novice/01-basics/index.html

We discussed this feedback in [GH148](https://github.com/greenelab/meta-review/issues/148) and addressed it in [GH180](https://github.com/greenelab/meta-review/pull/180).
We agree that using solid lines for content is helpful, and we retained the wave for online discussion to help draw the distinction between the content and the conversation that happens on GitHub.
We attempted a horizontal layout, but it was difficult to fit the text and retain legible font sizes.
Though we retained the vertical layout, we now label the timeline as such and differentiate between the document and the discussion more clearly.

> Figure .2 → This could be probably adapted as a raster plot where a dot is painted for each contribution (at the time of contribution).
Line would be the same height and the legend would summarize the contribution.

Based on this suggestion, we created an [alternative visualization](https://github.com/greenelab/meta-review/blob/6e7458dcb205a3d76daf25ee08236c24dc4de66e/analyses/deep-review-contrib/deep-review-contribution-dot.png) of Deep Review contributions that uses dots of varying sizes to show word counts by contributor on a monthly basis.
While we thought the dot plot was a valuable supplement, there was not strong support for switching from the ridgeline plot to the dot plot for the primary manuscript visualization.
However, we did update the figure caption to alert readers to the existence of alternative plots and that they can launch the source code notebook in Binder to create additional visualizations.

See [GH149](https://github.com/greenelab/meta-review/issues/149) and [GH164](https://github.com/greenelab/meta-review/pull/164) for the discussion and analyses.

> `GitHub and Travis CI. Fortunately, lock-in to these services is minimal, and several substitutes already exist.` → Can you name a few and how difficult it would be to migrate?

We discuss this feedback in [GH150](https://github.com/greenelab/meta-review/issues/150).
Manuscript revisions in [GH179](https://github.com/greenelab/meta-review/issues/179) now list several alternative CI services and mention GitLab, the most promising alternative to GitHub, due in part to being open source.
We have done some preliminary prototyping of using GitLab with its integrated CI service, as reported in [manubot/rootstock#88](https://github.com/manubot/rootstock/issues/88).
There does not appear to be any functionality required for Manubot that is not supported by GitLab, but migrating the initial manuscript will still take a moderate amount of development.

## Reviewer 3

> introductory paragraph needs more citations.
as is, the introductory paragraph is missing citations for statements.
in particular, the statement `However, the scientific community requires tools whose workflows encourage openness` should either have a citation or two, or be clarified as an opinion.

We discuss this issue in [GH114](https://github.com/greenelab/meta-review/issues/114) and revise the manuscript in [GH189](https://github.com/greenelab/meta-review/pull/189).
We now cite two books in the opening paragraph — [_Reinventing Discovery_](https://doi.org/10.1515/9781400839452) and [_Open Science by Design_](https://doi.org/10.17226/25116) — that together provide substantial discussion supporting our view that the internet enables open science but that additional infrastructure is still needed.

> `correctness and fairness` in abstract are unclear.
from reading the manuscript, it is clear that fairness means fairness in contribution tracking, but this is not clear in the abbreviated language used in the abstract.
I am somewhat unclear on what `ensure correctness` means in the abstract.

This interpretation of fairness is correct, and correctness was intended to link with the continuous integration text in the manuscript such as:

`Using CI to build the manuscript automatically catches many common errors, such as misspelled citations, invalid formatting, or misconfigured software dependencies.`

To make this more explicit, the updated abstract now states:

`New tools and workflows that rely on automation can catch errors and ensure that contributions are fairly tracked in massively collaborative research.`

See [GH115](https://github.com/greenelab/meta-review/issues/115) and [GH153](https://github.com/greenelab/meta-review/pull/153) for the discussion and edits.

> footnote placement in rendered manuscript should be left-adjusted.
in the PDF I have in front of me, the footnotes at end of sentences are not left-flush with the period.
this is a minor nit but a nit nonetheless :).
is this just a stylesheet issue or ...?

These superscripts were intended to indicate the footnote text for the footnote references in the table.
We switched the formatting to remove the superscripts from the footnotes in the table caption to make it more clear that the footnote references are in the table instead of the caption.
This was discussed in [GH116](https://github.com/greenelab/meta-review/issues/116) and updated in [GH182](https://github.com/greenelab/meta-review/pull/182).

> `requesting modifications as depicted in 7.`
the number 7 seems to refer to a citation (at least that's the hover view) but should maybe be in square brackets, i.e. [7]?

We have clarified that this reference is a citation and now state:

`GitHub's review interface allows anyone to comment on the changes, globally or at specific lines, asking questions or requesting modifications, as described by Johnny Israeli [ref].`

See [GH117](https://github.com/greenelab/meta-review/issues/117) and [GH152](https://github.com/greenelab/meta-review/pull/152) for the discussion and edits.

> `We use GitHub issues for organization`.
is there anything special about how manubot links to and from issues in the text?
mostly just curious.
(I could imagine automatically generated backreferences, as github does between issues when you mention one issue in another issue).

We discuss Manubot's handling of GitHub links in [GH118](https://github.com/greenelab/meta-review/issues/118).
Manubot does not treat references to GitHub URLs differently than any other URL.
In addition, Manubot does not [autolink](https://help.github.com/en/articles/autolinked-references-and-urls) references to GitHub issues and pull requests.
While some of this functionality would be possible with a Pandoc filter, this is a low priority development issue.
One approach that we currently use is to include relevant issue links in commit messages, which does enable GitHub backreferences to some degree.

> `it is reviewed by a maintainer and a participant`
are these separate people or the same person?
one presumes maintainers are participants, but not vice versa.
either way, please clarify! :)

We rewrote the figure caption to indicate that three individuals are involved: a Contributor, Maintainer, and Participant.
This was discussed in [GH119](https://github.com/greenelab/meta-review/issues/119) and updated in [GH182](https://github.com/greenelab/meta-review/pull/182).

> maybe add a note about how manubot could be used for better lesson development.
e.g. I see a lot of utility in manubot-style approaches for Carpentries-style online lesson development, especially the generation of versioned links and posting them back to PRs (which I assume happens?)

We discuss this feedback in [GH120](https://github.com/greenelab/meta-review/issues/120) and update the manuscript in [GH179](https://github.com/greenelab/meta-review/pull/179) to mention that Manubot may be helpful for projects like Software Carpentry.

Regarding whether versioned links get posted back to pull requests, currently Manubot-generated commits for the `output` and `gh-pages` branches mention the commit / pull request that generated them.
Accordingly, GitHub creates a backreference from a merged pull request to the deployment commits it generated.
While the permalink to the corresponding versioned webpage is not currently in these commit messages, it is easy to infer the permalink because it is based on the commit hash from the commit that merged the pull request.

> do rendered versions of each PR get posted back to the PR?
I assume this happens but want to double check (and am at the far end of a lousy Internet connection right now).
So this is really more of an "@ctb todo" item.

We discuss this comment further in [GH121](https://github.com/greenelab/meta-review/issues/121).
Rendered versions of manuscripts do not currently get uploaded to pull requests.
Instead, pull requests must be built locally to view the user-facing outputs (i.e. HTML or PDF).
This is a [limitation](https://github.com/travis-ci/travis-ci/issues/5579) of pull request builds on Travis CI, which are unable to [upload artifacts](https://docs.travis-ci.com/user/uploading-artifacts/) due to a security restriction.
Given the importance of exposing rendered manuscripts from pull requests, we will closely monitor for possible solutions.
However, a satisfactory solution may only be enabled by other large-scale changes in Manubot's architecture, which themselves have an uncertain timeframe.
As of [GH179](https://github.com/greenelab/meta-review/pull/179), the manuscript mentions that addressing this issue is a priority.
Please see [`manubot/rootstock#198`](https://github.com/manubot/rootstock/issues/198) to track progress.

> further emphasize strikethrough formatting for errors in extant versions.
I love the paragraph on Sci-Hub error correction - am I correct in understanding that the link to the erroneous version of the pub was updated with a version that clearly highlighted the text as erroneous?
this is really important if so, and has massive implications for the future of scholarly docs!
(and, out of curiosity, how do you do this with links that have a hash in them, or did I misunderstand?
I can investigate this myself once I have a better network connection)

In [GH122](https://github.com/greenelab/meta-review/issues/122), we expound on how we used strikethrough to indicate errant sentences in the Sci-Hub study's manuscript.
The strikethrough was not retroactive to pre-existing versions, but instead was rapidly applied to the latest version.
One solution for notifying viewers of issues in versioned manuscripts would be to use Manubot's Hypothesis annotations.
While retroactively editing versioned HTML manuscripts is technically possible, it should be avoided as it undermines Manubot's versioning scheme.

> Strengthen statement about `no objective system` for authorship.
The statement "there is no objective system" reads like it could be a practical statement as in "we haven't built one yet", while I believe (and think the authors agree with me, based on the paragraph) that no such principled objective system _can_ exist.
Either way this should be clarified.

We clarified that our opinion is that no objective system can exist.
See [GH123](https://github.com/greenelab/meta-review/issues/123) for the discussion and [GH177](https://github.com/greenelab/meta-review/pull/177) for the manuscript edits.

***

## Additional revisions

**[ITEMIZE OTHER MAJOR CHANGES HERE]**
