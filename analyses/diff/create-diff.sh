OLD_URL=https://github.com/greenelab/meta-review/raw/937c297c6deed1126f4ef7322e3830f406e3df81/manuscript.md
NEW_URL=https://github.com/greenelab/meta-review/raw/7d089b336507c59d8be1a91a274050e095206996/manuscript.md
#BIBLIOGRAPHY_PATH=../../output/references.json

wget --quiet --output-document=manuscript-old.md $OLD_URL
wget --quiet --output-document=manuscript-new.md $NEW_URL

# # https://github.com/davidar/pandiff
# pandiff \
#   --output=manuscript-diff.md \
#   --wrap=preserve \
#   manuscript-old.md manuscript-new.md

pandiff \
  --output=manuscript-diff.html \
  --wrap=preserve \
  manuscript-old.md manuscript-new.md

cat ../../build/themes/default.html >> manuscript-diff.html
cat pandiff-theme.html >> manuscript-diff.html
# pandoc \
#   --output=manuscript-diff-rendered.html \
#   --bibliography=$BIBLIOGRAPHY_PATH \
#   --filter=pandoc-citeproc \
#   manuscript-diff.md 

