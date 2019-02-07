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
-> I would insist a bit more on this part because it is a real strength if you consider a future integration with interactive figures (e.g. bokeh) and/or Jupyter notebooks.
Being able to produce both a nice PDF and a HTML dynamic version would be a nice feature.

> In the discussion, it would be nice to have a vision on the future of manubot.
What new features will be implemented?
Do you plan to apply for a grant to further develop manubot? etc.

> The layout of the PDF and the HTML could benefit from a better template (and font stack).
This a totally minor point, but it might help to attract new people.

> You need to have a long-term archive (e.g. Zenodo) of manubot (just in case GitHub closes tomorrow).
Or you can use a Software Heritage identifier to make sure manubot can still be found in a few years.

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

> `We initiated the Deep Review` -> when?
Would be nice to give some date at this point.

> `In total, the Deep Review attracted...` -> in less than a few weeks? months? years?

> `we made the GitHub repository public under a Creative Commons Attribution License.` -> The link points to CC-BY 4.0 International, it would be good to have this ionformation in the name of the link (or we have to click to check which kind CC you used).

> `they lack sufficient features for managing a collaborative editing` -> This is a bit of an overstatemeent because these tools are used daily by a lot of people to do just that.
I agree on the second part on the 'precise credit' aspect but as the sentence is currently written, you seem to imply that even collaborative editing is not possible.

> Table 1. -> You should add a WYSIWIG feature that is present in a number of platforms and important for a lot of non technical people.
Same for inline comments and diff colorization.

> Figure 1. -> Maybe an horizontal layout would be be better (to suggest a timeline from left to right).
The waves (symbolizing the content) could be probably replaced by straigth thick lines.
It took me a few seconds to realize this was meaning content.
See for example https://swcarpentry.github.io/git-novice/01-basics/index.html

> Figure .2 -> This could be probably adapted as a raster plot where a dot is painted for each contribution (at the time of contribution).
Line would be the same height and the legend would summarize the contribution.

> `GitHub and Travis CI. Fortunately, lock-in to these services is minimal, and several substitutes already exist.` -> Can you name a few and how difficult it would be to migrate?

## Reviewer 3

> introductory paragraph needs more citations.
as is, the introductory paragraph is missing citations for statements.
in particular, the statement `However, the scientific community requires tools whose workflows encourage openness` should either have a citation or two, or be clarified as an opinion.

> `correctness and fairness` in abstract are unclear.
from reading the manuscript, it is clear that fairness means fairness in contribution tracking, but this is not clear in the abbreviated language used in the abstract.
I am somewhat unclear on what `ensure correctness` means in the abstract.

> footnote placement in rendered manuscript should be left-adjusted.
in the PDF I have in front of me, the footnotes at end of sentences are not left-flush with the period.
this is a minor nit but a nit nonetheless :).
is this just a stylesheet issue or ...?

> `requesting modifications as depicted in 7.`
the number 7 seems to refer to a citation (at least that's the hover view) but should maybe be in square brackets, i.e. [7]?

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
(and, out of curiousity, how do you do this with links that have a hash in them, or did I misunderstand?
I can investigate this myself once I have a better network connection)

> Strengthen statement about `no objective system` for authorship.
The statement "there is no objective system" reads like it could be a practical statement as in "we haven't built one yet", while I believe (and think the authors agree with me, based on the paragraph) that no such principled objective system _can_ exist.
Either way this should be clarified.

***

## Additional revisions

**[ITEMIZE OTHER MAJOR CHANGES HERE]**
