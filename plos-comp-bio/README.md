# Manuscript files for _PLOS Computational Biology_ Submission

References:

+ [PLOS Computational Biology Submission Guidelines](https://journals.plos.org/ploscompbiol/s/submission-guidelines)

## Figures

Shell commands to create submission figures (see [GH2019](https://github.com/greenelab/meta-review/issues/209)):

```sh
# run commands from repository root

# Figure 1
convert -density 600 content/images/workflow.svg plos-comp-bio/figures/Fig1.tif
inkscape --export-ignore-filters --export-ps-level=3 \
  --export-eps=plos-comp-bio/figures/Fig1.eps \
  content/images/workflow.svg

# Figure 2
convert -density 600 content/images/deep-review-contribution-ridge.svg plos-comp-bio/figures/Fig2.tif
inkscape --export-ignore-filters --export-ps-level=3 \
  --export-eps=plos-comp-bio/figures/Fig2.eps \
  content/images/deep-review-contribution-ridge.svg

# Figure 3
convert content/images/plugins.png plos-comp-bio/figures/Fig3.tif
```
