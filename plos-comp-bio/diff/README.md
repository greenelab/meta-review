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
