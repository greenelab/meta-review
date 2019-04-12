# Track changes between _PLOS Computational Biology_ Submissions

Script to download files to compare:

```sh
# Run from the diff directory

# Output branch commit hashes
OLD_COMMIT=937c297c6deed1126f4ef7322e3830f406e3df81
NEW_COMMIT=c571171dd47d6988448631ec1b159a729c02debe

# old markdown
wget --quiet --timestamping --directory-prefix=old \
  https://github.com/greenelab/meta-review/raw/$OLD_COMMIT/manuscript.md

# old HTML
wget --quiet --timestamping --directory-prefix=old \
  https://github.com/greenelab/meta-review/raw/$OLD_COMMIT/manuscript.html

# old DOCX. See https://github.com/greenelab/meta-review/issues/198#issuecomment-481432185
wget --quiet --timestamping --directory-prefix=old \
  https://github.com/greenelab/meta-review/files/3060946/manuscript.docx

# new markdown
wget --quiet --timestamping --directory-prefix=new \
  https://github.com/greenelab/meta-review/raw/$NEW_COMMIT/manuscript.md

# new HTML
wget --quiet --timestamping --directory-prefix=new \
  https://github.com/greenelab/meta-review/raw/$NEW_COMMIT/manuscript.html

# new DOCX
wget --quiet --timestamping --directory-prefix=new \
  https://github.com/greenelab/meta-review/raw/$NEW_COMMIT/manuscript.docx

```

Scripts to create diffs using [pandiff](https://github.com/davidar/pandiff):

```sh
## Diff from manuscript.md
pandiff \
  --output=pandiff/pandiff-from-md.html \
  --wrap=preserve \
  old/manuscript.md new/manuscript.md

cat ../../build/themes/default.html >> pandiff/pandiff-from-md.html
cat pandiff/pandiff-theme.html >> pandiff/pandiff-from-md.html

docker run \
  --rm \
  --volume `pwd`/pandiff:/converted/ \
  --security-opt seccomp:unconfined \
  arachnysdocker/athenapdf:2.16.0 \
  athenapdf \
  --delay=2000 \
  pandiff-from-md.html pandiff-from-md.pdf


## Diff from manuscript.html
pandiff \
  --output=pandiff/pandiff-from-html.html \
  --resource-path=pandiff \
  --reference-links \
  --standalone \
  old/manuscript.html new/manuscript.html

#cat ../../build/themes/default.html >> pandiff/pandiff-from-html.pdf
#cat pandiff/pandiff-theme.html >> pandiff/pandiff-from-html.pdf

docker run \
  --rm \
  --volume `pwd`/pandiff:/converted/ \
  --security-opt seccomp:unconfined \
  arachnysdocker/athenapdf:2.16.0 \
  athenapdf \
  --delay=2000 \
  pandiff-from-html.html pandiff-from-html.pdf
```
