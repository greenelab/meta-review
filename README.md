# Deep Review Collaborative Workflow and Manubot System

<!-- usage note: edit the H1 title above to personalize the manuscript -->

[![HTML Manuscript](https://img.shields.io/badge/manuscript-HTML-blue.svg)](https://greenelab.github.io/meta-review/)
[![PDF Manuscript](https://img.shields.io/badge/manuscript-PDF-blue.svg)](https://greenelab.github.io/meta-review/manuscript.pdf)
[![Build Status](https://travis-ci.org/greenelab/meta-review.svg?branch=master)](https://travis-ci.org/greenelab/meta-review)

## Manuscript description

<!-- usage note: edit this section.

This repository is a template manuscript (a.k.a. rootstock).
Actual manuscript instances will clone this repository (see [`SETUP.md`](SETUP.md)) and replace this paragraph with a description of their manuscript.
-->

This manuscript presents the benefits of writing collaborative reviews in the open and the Manubot System for automating large portions of the build process.
The results are derived from the authors' experience with the collaborative [Deep Review](https://github.com/greenelab/deep-review).
[Feedback](https://github.com/greenelab/meta-review/issues) and minor contributions (e.g. typo corrections) are welcome.
Major contributions are not being solicited at this time.

To see what's incoming, check the [open pull requests](https://github.com/greenelab/meta-review/pulls).

## Manubot

<!-- usage note: do not edit this section -->

Manubot is a system for writing scholarly manuscripts via GitHub.
Manubot automates citations and references, versions manuscripts using git, and enables collaborative writing via GitHub.
The [Manubot Rootstock repository](https://git.io/vQSvo) is a general purpose template for creating new Manubot instances.
See [`USAGE.md`](USAGE.md) for documentation how to write a manuscript.

### Repository directories & files

The directories are as follows:

+ [`content`](content) contains the manuscript source, which includes markdown files as well as inputs for citations and references.
  See [`USAGE.md`](USAGE.md) for more information.
+ [`output`](output) contains the outputs (generated files) from the manubot including the resulting manuscripts.
  You should not edit these files manually, because they will get overwritten.
+ [`webpage`](webpage) is a directory meant to be rendered as a static webpage for viewing the HTML manuscript.
+ [`build`](build) contains commands and tools for building the manuscript.
+ [`ci`](ci) contains files necessary for deployment via continuous integration.
  For the CI configuration, see [`.travis.yml`](.travis.yml).

### Local execution

To run the Manubot locally, install the [conda](https://conda.io) environment as described in [`build`](build).
Then, you can build the manuscript on POSIX systems by running the following commands.

```sh
# Activate the manubot conda environment
source activate manubot

# Build the manuscript
sh build/build.sh

# Or monitor the content directory, and automatically rebuild the manuscript
# when a change is detected.
sh build/autobuild.sh

# View the manuscript locally at http://localhost:8000/
cd webpage
python -m http.server
```

### Continuous Integration

[![Build Status](https://travis-ci.org/greenelab/meta-review.svg?branch=master)](https://travis-ci.org/greenelab/meta-review)

Whenever a pull request is opened, Travis CI will test whether the changes break the build process to generate a formatted manuscript.
The build process aims to detect common errors, such as invalid citations.
If your pull request build fails, see the Travis CI logs for the cause of failure and revise your pull request accordingly.

When a commit to the `master` branch occurs (for example, when a pull request is merged), Travis CI builds the manuscript and writes the results to the [`gh-pages`](https://github.com/greenelab/meta-review/tree/gh-pages) and [`output`](https://github.com/greenelab/meta-review/tree/output) branches.
The `gh-pages` branch uses [GitHub Pages](https://pages.github.com/) to host the following URLs:

+ **HTML manuscript** at https://greenelab.github.io/meta-review/
+ **PDF manuscript** at https://greenelab.github.io/meta-review/manuscript.pdf

For continuous integration configuration details, see [`.travis.yml`](.travis.yml).

## License

<!--
usage note: edit this section to change the license of your manuscript or source code changes to this repository.
We encourage users to openly license their manuscripts, which is the default as specified below.
-->

[![License: CC BY 4.0](https://img.shields.io/badge/License%20All-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/)
[![License: CC0 1.0](https://img.shields.io/badge/License%20Parts-CC0%201.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

Except when noted otherwise, the entirety of this repository is licensed under a CC BY 4.0 License ([`LICENSE.md`](LICENSE.md)), which allows reuse with attribution.
Please attribute by linking to https://github.com/greenelab/meta-review.

Since CC BY is not ideal for code and data, certain repository components are also released under the CC0 1.0 public domain dedication ([`LICENSE-CC0.md`](LICENSE-CC0.md)).
All files matched by the following glob patterns are dual licensed under CC BY 4.0 and CC0 1.0:

+ `*.sh`
+ `*.py`
+ `*.yml` / `*.yaml`
+ `*.json`
+ `*.bib`
+ `*.tsv`
+ `.gitignore`

All other files are only available under CC BY 4.0, including:

+ `*.md`
+ `*.html`
+ `*.pdf`
+ `*.docx`

Except for the following files with different licenses:

+ `build/assets/anchors.js` which is [released](https://www.bryanbraun.com/anchorjs/)
  under an [MIT License](https://opensource.org/licenses/MIT)

Please open [an issue](https://github.com/greenelab/meta-review/issues) for any question related to licensing.
