# https://github.com/davidar/pandiff

############################################################################
### Diff from manuscript.md

OLD_URL=https://github.com/greenelab/meta-review/raw/937c297c6deed1126f4ef7322e3830f406e3df81/manuscript.md
NEW_URL=https://github.com/greenelab/meta-review/raw/7d089b336507c59d8be1a91a274050e095206996/manuscript.md
#BIBLIOGRAPHY_PATH=../../output/references.json

wget --quiet --output-document=manuscript-old.md $OLD_URL
wget --quiet --output-document=manuscript-new.md $NEW_URL

pandiff \
  --output=webpage/manuscript-diff.html \
  --wrap=preserve \
  manuscript-old.md manuscript-new.md

cat ../../build/themes/default.html >> webpage/manuscript-diff.html
cat pandiff-theme.html >> webpage/manuscript-diff.html

############################################################################
### Diff from manuscript.html

OLD_URL=https://github.com/greenelab/meta-review/raw/937c297c6deed1126f4ef7322e3830f406e3df81/manuscript.html
NEW_URL=https://github.com/greenelab/meta-review/raw/7d089b336507c59d8be1a91a274050e095206996/manuscript.html

wget --quiet --output-document=manuscript-old.html $OLD_URL
wget --quiet --output-document=manuscript-new.html $NEW_URL


pandiff \
  --output=webpage/manuscript-html-diff.html \
  --resource-path=webpage \
  --reference-links \
  --standalone \
  manuscript-old.html manuscript-new.html

cat ../../build/themes/default.html >> webpage/manuscript-html-diff.html
cat pandiff-theme.html >> webpage/manuscript-html-diff.html
