
wget --quiet --timestamping --output-document=manubot-manuscript.docx \
  https://github.com/greenelab/meta-review/raw/8ce55c679590eff3609964a415d744ab3be0ca2e/manuscript.docx


wget --quiet --timestamping --output-document=journal.pcbi.1007128.html \
  "https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1007128"


pandiff \
  --output=pandiff.html \
  --resource-path=pandiff \
  --reference-links \
  --standalone \
  manubot-manuscript.html journal.pcbi.1007128.xml

pandoc \
  --output=uncorrected-proof.docx \
  journal.pcbi.1007128.xml

pandoc \
  --output=uncorrected-proof.docx \
  journal.pcbi.1007128.html
