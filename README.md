# Setup Cloe

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://stand-with-ukraine.pp.ua)
![GitHub release](https://img.shields.io/github/v/release/fabasoad/setup-cloe-action?include_prereleases)
![Functional Tests](https://github.com/fabasoad/setup-cloe-action/workflows/Functional%20Tests/badge.svg)
![pre-commit](https://github.com/fabasoad/setup-cloe-action/actions/workflows/pre-commit.yml/badge.svg)

This action installs a [Cloe](https://cloe-lang.org).

## Prerequisites

The following tools have to be installed for successful work of this GitHub action:
[rake](https://ruby.github.io/rake), [go](https://go.dev).

## Example usage

### Workflow configuration

```yaml
name: Test

on: push

jobs:
  setup:
    name: cloe
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@main
      - uses: fabasoad/setup-cloe-action@main
      - name: Print version
        run: cloe --version
```

### Result

```shell
Run cloe --version
0.1.0
```
