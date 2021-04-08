# AcidCLI

Interative R command line interface toolkit for [Acid Genomics][] packages.

## Installation

This is an [R][] package.

```r
install.packages(
    pkgs = "AcidCLI",
    repos = c(
        "https://r.acidgenomics.com",
        getOption("repos")
    )
)
```

### [Conda][] method

Configure [Conda][] to use the [Bioconda][] channels.

```sh
# Don't install recipe into base environment.
name="r-acidcli"
conda create --name="$name" "$name"
conda activate "$name"
R
```

### [Docker][] method

```sh
image="acidgenomics/r-acidcli"
workdir="/mnt/work"
docker pull "$image"
docker run -it \
    --volume="${PWD}:${workdir}" \
    --workdir="$workdir" \
    "$image" \
    R
```

[acid genomics]: https://acidgenomics.com/
[bioconda]: https://bioconda.github.io/
[conda]: https://conda.io/
[docker]: https://www.docker.com/
[r]: https://www.r-project.org/
