# C4 PlantUML boilerplate

## General

### Architecture

Architecture nomenclature is [based on the C4 model](https://c4model.com).

System context:

![System context diagram (C4 model)](./docs/system.svg)

Container:

![Container diagram (C4 model)](./docs/container.svg)

Component:

![Component diagram (C4 model)](./docs/component.svg)

### Install

Documentation:

1. Install PlantUML dependency with `brew install graphviz` ([MacOS](https://github.com/Homebrew/brew)), `winget install graphviz` ([Windows](https://github.com/microsoft/winget-cli)), `yum install graphviz` (Linux Fedora), `apt install graphviz` (Linux Debian-based)
2. Confirm [dot](https://graphviz.org/docs/layouts/dot) is installed on your PATH with `dot --version`

### Test

Documentation:

1. Run Lint with `make docs-lint`

## Upgrade

Documentation:

1. Update `PLANTUML_VERSION` variable in the `Makefile` file with [the latest PlantUML version](https://github.com/plantuml/plantuml/releases)
2. Run `make docs-install` command

## [Authors](./AUTHORS.md)
