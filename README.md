# AcidCLI

[![Install with Bioconda](https://img.shields.io/badge/install%20with-bioconda-brightgreen.svg)](http://bioconda.github.io/recipes/r-acidcli/README.html) ![Lifecycle: stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)

Interative R command line interface toolkit for [Acid Genomics][] packages.

## Installation

This is an [R][] package.

```r
install.packages(
    pkgs = "AcidCLI",
    repos = c(
        "https://r.acidgenomics.com",
        getOption("repos")
    ),
    dependencies = TRUE
)
```

[acid genomics]: https://acidgenomics.com/
[r]: https://www.r-project.org/
