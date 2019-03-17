# Response to reviewers

Dear Dr. Schneidman-Duhovny,

We thank you the reviewers for their thoughtful comments.
Based on their feedback, we have revised the manuscript and address each reviewer suggestion point-by-point below.

**[SUMMARIZE MAJOR CHANGES HERE]**

Sincerely,
Anthony

***

## Reviewer 1

> Great article reporting on an important development for open scholarship!
One minor suggestion/comment - it wasn't clear why the Manubot description came AFTER the Deep Review suggestion.
Is it not true that DR was a first instance use of Manubot? If so, why not describe the tool, then describe DR as the pilot?
Generally it read as though those two sections were distinct, while I think the authors intended that they be part of a bigger story.

## Reviewer 2

> Overall, the article is nicely written and corresponds to a software paper (in my opinion).
My main concern (+ comments and questions below) is that the article is a bit technical and as such, addresses a technical audience.
Since the paper has been submitted as a Software paper, maybe it's fine but it would be nice if non-technical people would also be able to read the paper (to realize open-source collaborative frameworks exists).

> The introduction may lack a part on tools that are used in different communities, especially with "mega papers" (e.g. physics where you have routinely thousand of authors).

> `For now, the primary Manubot output is HTML intended to be viewed in a web browser.`
→ I would insist a bit more on this part because it is a real strength if you consider a future integration with interactive figures (e.g. bokeh) and/or Jupyter notebooks.
Being able to produce both a nice PDF and a HTML dynamic version would be a nice feature.

The HTML-first output, where the PDF is created from the HTML, does permit incorporation of interactive web visualizations.
One downside is that it can [be difficult](https://github.com/manubot/rootstock/issues/192 "Increasing the density of PDF exports to reduce number of pages") to create heavily typeset and whitespace-optimized PDFs using CSS.
However, Manubot envisions a future where the HTML view is the primary means of accessing the article.
See [GH132](https://github.com/greenelab/meta-review/issues/132) for additional discussion.

Regarding interactive notebooks, some projects (e.g. [_eLife_'s reproducible article](https://elifesciences.org/labs/ad58f08d/introducing-elife-s-first-computationally-reproducible-article)) are exploring incorporating customizable source code execution directly into a manuscripts HTML view.
One challenge of this approach is that most analysis require substantial code, scattered across many layers of dependencies and inputs.
Therefore, it is not clear that there is a manageable way to interact with all of this code directly within the HTML view of the manuscript.
As an alternative approach, we have added Binder support to the Deep Review contribution analysis ([click to launch Binder](https://mybinder.org/v2/gh/greenelab/meta-review/binder?filepath=analyses/deep-review-contrib/02.contrib-viz.ipynb), implemented in [GH161](https://github.com/greenelab/meta-review/pull/161)).
Binder allows readers to open the notebook used to generate Figure 2 in their browser.
We found this approach allows users to modify source code at a scale that is more likely to be practical for complex data reanalyses.

> In the discussion, it would be nice to have a vision on the future of manubot.
What new features will be implemented?
Do you plan to apply for a grant to further develop manubot? etc.

> The layout of the PDF and the HTML could benefit from a better template (and font stack).
This a totally minor point, but it might help to attract new people.

> You need to have a long-term archive (e.g. Zenodo) of manubot (just in case GitHub closes tomorrow).
Or you can use a Software Heritage identifier to make sure manubot can still be found in a few years.

This feedback was discussed in [GH135](https://github.com/greenelab/meta-review/issues/135) and addressed in [GH159](https://github.com/greenelab/meta-review/pull/159).
We created GitLab mirrors of important Manubot repositories, to provide access to Manubot's latest source code during any GitHub downtime.
We also added Software Heritage identifiers, to preserve access to Manubot's source code via snapshots.
We found this preferable to Zenodo archiving because we were not ready to commit to perpetually maintaining Zenodo records that potentially require manual edits.
Currently, deployment of [releases to PyPI](https://pypi.org/project/manubot/#history) is [fully automated](https://github.com/manubot/manubot/blob/81394c0a8153fa3ad41ee3cb987227c8ea043125/.travis.yml#L16-L25).
In the interest of frequent releases, we want to keep the effort required to make a release minimal.

> On the Authorship, how do you give credits to people having participated in a work (e.g. did all the experiment) but did not commit anything on the manuscript?

> On the Authorship, how do you deal with people being not identified (e.g. only a GitHub pseudo)?

> Is it possible to use manubot on a private GitHub repository?
I'm pretty sure some people would be interested in using manubot but probably would not use it for open editing.

> In the discussion, to what extent a contributor can only use the GitHub interface (text editor + automated PR)?
Would not that be a way to lower the technical entry level for contributors?

> Would it be possible for a (anonymous) reviewer to use the workflow to do the actual review?

> Could you elaborate a bit on the potential limitations of the markdown language?
Did you encounter some difficulties in referencing figures or tables?

> What is the procedure when you submit an article to a journal?
Do you have a set of pandoc templates or do you work directly on the word or latex output to match journal requirements?

> `We initiated the Deep Review` → when?
Would be nice to give some date at this point.

> `In total, the Deep Review attracted...` → in less than a few weeks? months? years?

> `we made the GitHub repository public under a Creative Commons Attribution License.` → The link points to CC-BY 4.0 International, it would be good to have this information in the name of the link (or we have to click to check which kind CC you used).

We now state the full license name in the link text: `Creative Commons Attribution 4.0 International (CC BY 4.0) license`.
See [GH145](https://github.com/greenelab/meta-review/issues/145) and [GH154](https://github.com/greenelab/meta-review/pull/154) for the discussion and edits.

> `they lack sufficient features for managing a collaborative editing` → This is a bit of an overstatemeent because these tools are used daily by a lot of people to do just that.
I agree on the second part on the 'precise credit' aspect but as the sentence is currently written, you seem to imply that even collaborative editing is not possible.

> Table 1. → You should add a WYSIWIG feature that is present in a number of platforms and important for a lot of non technical people.
Same for inline comments and diff colorization.

> Figure 1. → Maybe an horizontal layout would be better (to suggest a timeline from left to right).
The waves (symbolizing the content) could be probably replaced by straight thick lines.
It took me a few seconds to realize this was meaning content.
See for example https://swcarpentry.github.io/git-novice/01-basics/index.html

> Figure .2 → This could be probably adapted as a raster plot where a dot is painted for each contribution (at the time of contribution).
Line would be the same height and the legend would summarize the contribution.

Based on this suggestion, we created an [alternative visualization](https://github.com/greenelab/meta-review/blob/6e7458dcb205a3d76daf25ee08236c24dc4de66e/analyses/deep-review-contrib/deep-review-contribution-dot.png) of Deep Review contributions that uses dots of varying sizes to show word counts by contributor on a monthly basis.
While we thought the dot plot was a valuable supplement, there was not strong support for switching from the ridgeline plot to the dot plot for the primary manuscript visualization.
See [GH149](https://github.com/greenelab/meta-review/issues/149) and [GH164](https://github.com/greenelab/meta-review/pull/164) for the discussion and analyses.

> `GitHub and Travis CI. Fortunately, lock-in to these services is minimal, and several substitutes already exist.` → Can you name a few and how difficult it would be to migrate?

## Reviewer 3

> introductory paragraph needs more citations.
as is, the introductory paragraph is missing citations for statements.
in particular, the statement `However, the scientific community requires tools whose workflows encourage openness` should either have a citation or two, or be clarified as an opinion.

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

> `requesting modifications as depicted in 7.`
the number 7 seems to refer to a citation (at least that's the hover view) but should maybe be in square brackets, i.e. [7]?

We have clarified that this reference is a citation and now state:

`GitHub's review interface allows anyone to comment on the changes, globally or at specific lines, asking questions or requesting modifications, as described by Johnny Israeli [ref].`

See [GH117](https://github.com/greenelab/meta-review/issues/117) and [GH152](https://github.com/greenelab/meta-review/pull/152) for the discussion and edits.

> `We use GitHub issues for organization`.
is there anything special about how manubot links to and from issues in the text?
mostly just curious.
(I could imagine automatically generated backreferences, as github does between issues when you mention one issue in another issue).

> `it is reviewed by a maintainer and a participant`
are these separate people or the same person?
one presumes maintainers are participants, but not vice versa.
either way, please clarify! :)

> maybe add a note about how manubot could be used for better lesson development.
e.g. I see a lot of utility in manubot-style approaches for Carpentries-style online lesson development, especially the generation of versioned links and posting them back to PRs (which I assume happens?)

> do rendered versions of each PR get posted back to the PR?
I assume this happens but want to double check (and am at the far end of a lousy Internet connection right now).
So this is really more of an "@ctb todo" item.

> further emphasize strikethrough formatting for errors in extant versions.
I love the paragraph on Sci-Hub error correction - am I correct in understanding that the link to the erroneous version of the pub was updated with a version that clearly highlighted the text as erroneous?
this is really important if so, and has massive implications for the future of scholarly docs!
(and, out of curiosity, how do you do this with links that have a hash in them, or did I misunderstand?
I can investigate this myself once I have a better network connection)

> Strengthen statement about `no objective system` for authorship.
The statement "there is no objective system" reads like it could be a practical statement as in "we haven't built one yet", while I believe (and think the authors agree with me, based on the paragraph) that no such principled objective system _can_ exist.
Either way this should be clarified.

***

## Additional revisions

**[ITEMIZE OTHER MAJOR CHANGES HERE]**
