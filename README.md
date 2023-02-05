# A basic reproducible data science experiment based on a Nix environment

## About
The repository is devoted to a sample data science experiment based on a Nix environment.

## Nix

### What is Nix?

Nix is considered a package manager working on all popular platforms. Domain-specific Nix expression language, which is pure, lazy, and functional, defines the Nix package. Nix expressions can be viewed as functions that describe the build process. Installed packages via the Nix package manager are installed into unique directories that are immutable and cannot be changed after a build is completed.

### How to install Nix?

Please follow the official [instructions](https://nixos.org/download.html). The entire installation process takes only a few minutes.

### Benefits for data science experiments

## Outline of simple experiment

### Motivation

Let's consider a simple Python script that utilizes some popular Python libraries for running an experiment.

TODO

## Build & run

The experiment can be built using the following command:

```sh
$ nix-build
```

Run the image using the following:

```sh
$ nix-shell default.nix -A experiment
```

## Further reading

[1] Nix for reproducibility of scientific experiments. [https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/index.html](https://nix-tutorial.gitlabpages.inria.fr/nix-tutorial/index.html)

[2] Kowalewski, Markus, and Phillip Seeber. "Sustainable packaging of quantum chemistry software with the Nix package manager." International Journal of Quantum Chemistry 122.9 (2022): e26872.

[3] Sandve, Geir Kjetil, et al. "Ten simple rules for reproducible computational research." PLoS computational biology 9.10 (2013): e1003285.

## Disclaimer

This software is provided as-is, and there are no guarantees that it fits your purposes or that it is bug-free. Use it at your own risk!

## License
Material in this folder is licensed under a
[Creative Commons Attribution-ShareAlike 4.0 International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg
