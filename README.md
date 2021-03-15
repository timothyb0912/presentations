# presentations

My public presentations.


## Description

This repository houses the text and images for my public presentations.

🛑✋🏾STOP HERE. REMAINDER OF README IN-PROGRESS.

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
├── AUTHORS.rst             <- List of developers and maintainers.
├── CHANGELOG.rst           <- Changelog to keep track of new features and fixes.
├── LICENSE.txt             <- License as chosen on the command-line.
├── README.md               <- The top-level README for developers.
├── configs                 <- Directory for configurations of model & application.
├── data
│   ├── external            <- Data from third party sources.
│   ├── interim             <- Intermediate data that has been transformed.
│   ├── processed           <- The final, canonical data sets for modeling.
│   └── raw                 <- The original, immutable data dump.
├── docs                    <- Directory for Sphinx documentation in rst or md.
├── environment.yaml        <- The conda environment file for reproducibility.
├── models                  <- Trained and serialized models, model predictions,
│                              or model summaries.
├── notebooks               <- Jupyter notebooks. Naming convention is a number (for
│                              ordering), the creator's initials and a description,
│                              e.g. `1.0-fw-initial-data-exploration`.
├── references              <- Data dictionaries, manuals, and all other materials.
├── reports                 <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures             <- Generated plots and figures for reports.
├── scripts                 <- Analysis and production scripts which import the
│                              actual PYTHON_PKG, e.g. train_model.
├── setup.cfg               <- Declarative configuration of your project.
├── setup.py                <- Use `python setup.py develop` to install for development or
|                              or create a distribution with `python setup.py bdist_wheel`.
├── src
│   └── checkrs             <- Actual Python package where the main functionality goes.
├── tests                   <- Unit tests which can be run with `py.test`.
├── .coveragerc             <- Configuration for coverage reports of unit tests.
├── .isort.cfg              <- Configuration for git hook that sorts imports.
└── .pre-commit-config.yaml <- Configuration of pre-commit git hooks.
```

## Note

This project template was created using [cookiecutter](https://github.com/cookiecutter/cookiecutter).
