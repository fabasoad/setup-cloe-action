# Setup Cloe

![GitHub release](https://img.shields.io/github/v/release/fabasoad/setup-cloe-action?include_prereleases)
![Functional Tests](https://github.com/fabasoad/setup-cloe-action/workflows/Functional%20Tests/badge.svg)
[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/fabasoad/setup-cloe-action/main.svg)](https://results.pre-commit.ci/latest/github/fabasoad/setup-cloe-action/main)

This action installs a [Cloe](https://cloe-lang.org).

## Prerequisites

The following tools have to be installed for successful work of this GitHub action:
[bash](https://www.gnu.org/software/bash), [go](https://go.dev).

## Example usage

### Workflow configuration

```yaml
name: Test

on: push

jobs:
  setup:
    name: yorick
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@main
      - uses: fabasoad/setup-cloe-action@main
      - name: Print version
        run: cloe --version
        shell: sh
```

### Result

```shell
Run cloe --version

```
