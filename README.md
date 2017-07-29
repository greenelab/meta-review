# Deep Review Collaborative Workflow and Manubot System

This manuscript presents the benefits of writing collaborative reviews in the open and the Manubot System for automating large portions of the build process.
The results are derived from the authors' experience with the collaborative [Deep Review](https://github.com/greenelab/deep-review).

The most current version of the `master` branch is built by continuous integration and [available via gh-pages](https://greenelab.github.io/meta-review/).
To see what's incoming, check the [open pull requests](https://github.com/greenelab/meta-review/pulls).

This manuscript was build with [Manubot Rootstock](https://git.io/vQSvo), which provides a system for collaboratively writing scholarly manuscripts via GitHub.

## Source

The manuscript source is located in [`content`](content).
Text should be written in markdown files, with a digit prefix for ordering (e.g. `01.`, `02.`, etc.) and a `.md` suffix.

## Continuous Integration

[![Build Status](https://travis-ci.org/greenelab/meta-review.svg?branch=master)](https://travis-ci.org/greenelab/meta-review)

When you make a pull request, Travis CI will test whether your changes break the build process to generate the formatted manuscript.
The build process aims to detect common errors, such as invalid references.
If your build fails, see the Travis CI logs for the cause of failure and revise your pull request accordingly.

When a pull request is merged, Travis CI performs the build and writes the results to the [`gh-pages`](https://github.com/greenelab/meta-review/tree/gh-pages) and [`references`](https://github.com/greenelab/meta-review/tree/references) branches.
The `gh-pages` branch hosts the following URLs:

+ **HTML manuscript** at https://greenelab.github.io/meta-review/
+ **PDF manuscript** at https://greenelab.github.io/meta-review/manuscript.pdf

For continuous integration configuration details, see [`.travis.yml`](.travis.yml).

## License

[![License: CC BY 4.0](https://img.shields.io/badge/License%20All-CC%20BY%204.0-lightgrey.svg)](http://creativecommons.org/licenses/by/4.0/)
[![License: CC0 1.0](https://img.shields.io/badge/License%20Parts-CC0%201.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

This entirety of this repository is licensed under a CC BY 4.0 License ([`LICENSE.md`](LICENSE.md)), which allows reuse with attribution.
Please attribute by linking to https://github.com/greenelab/meta-review.

Since CC BY is not ideal for code and data, certain repository components are also released under the CC0 1.0 public domain dedication ([`LICENSE-CC0.md`](LICENSE-CC0.md)).
All files matched by the following glob patterns are dual licensed under CC BY 4.0 and CC0 1.0:

+ `*.sh`
+ `*.py`
+ `*.yml`
+ `*.json`
+ `*.bib`
+ `*.tsv`
+ `.gitignore`

All other files are only available under CC BY 4.0, including:

+ `*.md`
+ `*.html`
+ `*.pdf`

Please open [an issue](https://github.com/greenelab/meta-review/issues) for any question related to licensing.
