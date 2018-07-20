# Output directory containing the formatted manuscript

The [`gh-pages`](https://github.com/greenelab/meta-review/tree/gh-pages) branch hosts the contents of this directory at https://greenelab.github.io/meta-review/.
The permalink for this webpage version is https://greenelab.github.io/meta-review/v/9d568bfc96d7ea880c0665af94cad8d83b93e916/.
To redirect to the permalink for the latest manuscript version at anytime, use the link https://greenelab.github.io/meta-review/v/freeze/.

## Files

This directory contains the following files, which are mostly ignored on the `master` branch:

+ [`index.html`](index.html) is an HTML manuscript.
+ [`github-pandoc.css`](github-pandoc.css) sets the display style for `index.html`.
+ [`manuscript.pdf`](manuscript.pdf) is a PDF manuscript.

The `v` directory contains directories for each manuscript version.
In general, a version is identified by the commit hash of the source content that created it.

### Timestamps

The `*.ots` files in version directories are OpenTimestamps which can be used to verify manuscript existence at or before a given time.
[OpenTimestamps](https://opentimestamps.org/) uses the Bitcoin blockchain to attest to file hash existence.
The `deploy.sh` script run during continuous deployment creates the `.ots` files.
However, these files are initially dependent on calendar services and must be upgraded at a later time by running the following in the `gh-pages` branch:

```sh
# Requires a local bitcoin node with JSON-RPC configured
ots upgrade v/*/*.ots
rm v/*/*.ots.bak
git add v/*/*.ots
```

## Source

The manuscripts in this directory were built from
[`9d568bfc96d7ea880c0665af94cad8d83b93e916`](https://github.com/greenelab/meta-review/commit/9d568bfc96d7ea880c0665af94cad8d83b93e916).
