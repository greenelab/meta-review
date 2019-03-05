# Executable notebooks in Binder

This directory contains configuration files to support running the `deep-review-contrib` Jupyter notebooks in [Binder](https://mybinder.readthedocs.io/en/latest/).

- [`apt.txt`](apt.txt) installs `tzdata` to support time zone operations used by the R code
- [`environment.yml`](environment.yml) is a symbolic link to the existing conda environment specification
- [`postBuild`](postBuild) installs additional R packages that are not available through conda-forge and updates the notebook kernelspec

The container that Binder prepares does not create and activate a new named environment from `environment.yml`.
Rather, it uses `environment.yml` to update a preconfigured root environment with the specified packages.
