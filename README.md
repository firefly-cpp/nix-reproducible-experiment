# A basic reproducible data science experiment based on a Nix environment

## About
The repository is devoted to a sample data science experiment based on a Nix environment.

## Nix

### What is Nix?

Nix is considered a package manager working on all popular platforms. Domain-specific Nix expression language, which is pure, lazy, and functional, defines the Nix package. Nix expressions can be viewed as functions that describe the build process. Installed packages via the Nix package manager are installed into unique directories that are immutable and cannot be changed after a build is completed.

### How to install Nix?

Please follow the official [instructions](https://nixos.org/download.html). The entire installation process takes only a few minutes.

### Benefits for data science experiments

#### Reproducibility

The reproducibility of computational experiments is a cornerstone for the fast advancement of scientific disciplines. Although depositing source code along with the paper
was not usual in history, it is becoming more common thanks to the several tools that allow easier packaging of experiment pipelines.

#### Nix vs. containers

According to the [2], containers statically bundle dependencies but do not provide mechanisms to update, rebuild and maintain the contents of a container. Additionally, the Nix environment provides also a nixpkgs package collection consisting of 80000+ packages that can be available in the form of Nix expressions and as binaries. It is worth mentioning that most of the Python packages used in the Python data science pipelines are
already available in nixpkgs.

## Outline of simple experiment

### Motivation

Let's consider simple Python scripts that utilize the implementation of nature-inspired algorithms in a Python library called NiaPy for running an experiment.

The code of experiments is available in a separate repository: [CLICK](https://gitlab.com/firefly-cpp/nia-test-experiments)

The directory structure is as follows:

    .
    ├── ...
    ├── src                     # two main Python files
    │   ├── niapy_custom_problem.py
    │   ├── niapy_pso.py
    ├── README.md
    ├── run.sh                  # simple shell script that runs python files
    ├── setup.py                # basic setup file
    └── ...

## Build & run

The experiment can be built using the following command:

```sh
$ nix-build
```

Run the image using the following:

```sh
$ nix-shell default.nix -A experiment
```

## References and further reading

[1] Nix for reproducibility of scientific experiments. [https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/index.html](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/index.html)

[2] Kowalewski, Markus, and Phillip Seeber. "[Sustainable packaging of quantum chemistry software with the Nix package manager](https://onlinelibrary.wiley.com/doi/full/10.1002/qua.26872)." International Journal of Quantum Chemistry 122.9 (2022): e26872.

[3] Sandve, Geir Kjetil, et al. "[Ten simple rules for reproducible computational research](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1003285)." PLoS computational biology 9.10 (2013): e1003285.

## Similar solutions

[1a] A basic container image for performing data science reproducibility studies based on Alpine Linux, [https://github.com/firefly-cpp/alpine-container-data-science](https://github.com/firefly-cpp/alpine-container-data-science)

[2a] A basic container image for performing data science reproducibility studies based on Fedora Linux, [https://github.com/firefly-cpp/fedora-container-data-science](https://github.com/firefly-cpp/fedora-container-data-science)

## Disclaimer

This software is provided as-is, and there are no guarantees that it fits your purposes or that it is bug-free. Use it at your own risk!

## License
Material in this folder is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
