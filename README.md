# presentations

My public presentations.


## Description

This repository houses the text and images for my public presentations.

πβπΎSTOP HERE. REMAINDER OF README IN-PROGRESS.

---

## Installation

`pip install presentations`


## Usage
Show some code that demonstrates how to use the project.
```
import presentations

presentations.do_stuff()
```


## Roadmap

Where do you plan to take this project?
Are there any outstanding to-do items?


## Contributing

First, thanks for your interest in this project.
If you'd like to contribute, there are a number of ways.
Feel free to make post issues about the project,
add documentation,
add tests,
or add features.
See [CONTRIBUTING](./CONTRIBUTING.md) for additional guidance.


## Development installation

To work on and edit `presentations`,
the following setup process may be useful.

1. From the project root, create a virtual environment with the name of `presentations`.
2. Activate the new environment.
3. install `presentations` in an editable fashion using:
   ```
   make install
   ```

Now take a look at the `src/presentations`, `scripts` and `notebooks` directories.

## Dependency Management & Reproducibility

1. Always keep your abstract (unpinned) dependencies updated in `requirements.in` and in `pyproject.toml` if you want to ship and install the package via `pip` later on.

   - Use `requirements.in` for dependencies that can be installed via `pip`.
   - Use `pyproject.toml` for dependencies that are needed for `presentations` to function at all, not just in development.
2. Create concrete dependencies as `requirements.txt` for the exact reproduction of your environment with:
   ```
   pip-compile requirements.in
   ```
3. Update your current environment using:
   ```
   pip install -r requirements.txt
   ```
   if you did not update any non-pip dependencies.

## Project Organization

```
βββ AUTHORS.rst             <- List of developers and maintainers.
βββ CHANGELOG.rst           <- Changelog to keep track of new features and fixes.
βββ LICENSE.txt             <- License as chosen on the command-line.
βββ README.md               <- The top-level README for developers.
βββ configs                 <- Directory for configurations of model & application.
βββ data
β   βββ external            <- Data from third party sources.
β   βββ interim             <- Intermediate data that has been transformed.
β   βββ processed           <- The final, canonical data sets for modeling.
β   βββ raw                 <- The original, immutable data dump.
βββ docs                    <- Directory for Sphinx documentation in rst or md.
βββ environment.yaml        <- The conda environment file for reproducibility.
βββ models                  <- Trained and serialized models, model predictions,
β                              or model summaries.
βββ notebooks               <- Jupyter notebooks. Naming convention is a number (for
β                              ordering), the creator's initials and a description,
β                              e.g. `1.0-fw-initial-data-exploration`.
βββ references              <- Data dictionaries, manuals, and all other materials.
βββ reports                 <- Generated analysis as HTML, PDF, LaTeX, etc.
β   βββ figures             <- Generated plots and figures for reports.
βββ scripts                 <- Analysis and production scripts which import the
β                              actual PYTHON_PKG, e.g. train_model.
βββ setup.cfg               <- Declarative configuration of your project.
βββ setup.py                <- Use `python setup.py develop` to install for development or
|                              or create a distribution with `python setup.py bdist_wheel`.
βββ src
β   βββ checkrs             <- Actual Python package where the main functionality goes.
βββ tests                   <- Unit tests which can be run with `py.test`.
βββ .coveragerc             <- Configuration for coverage reports of unit tests.
βββ .isort.cfg              <- Configuration for git hook that sorts imports.
βββ .pre-commit-config.yaml <- Configuration of pre-commit git hooks.
```

## Note

This project template was created using [cookiecutter](https://github.com/cookiecutter/cookiecutter).
