# Setup Cloe

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://stand-with-ukraine.pp.ua)
![GitHub release](https://img.shields.io/github/v/release/fabasoad/setup-cloe-action?include_prereleases)
![functional-tests](https://github.com/fabasoad/setup-cloe-action/actions/workflows/functional-tests.yml/badge.svg)
![security](https://github.com/fabasoad/setup-cloe-action/actions/workflows/security.yml/badge.svg)
![linting](https://github.com/fabasoad/setup-cloe-action/actions/workflows/linting.yml/badge.svg)

This action installs a [Cloe](https://cloe-lang.org).

## Supported OS

<!-- prettier-ignore-start -->
| OS      | Arch   |                    |
|---------|--------|--------------------|
| Windows | x86_84 | :white_check_mark: |
| Windows | arm    | :x:                |
| Linux   | x86_84 | :white_check_mark: |
| Linux   | arm    | :x:                |
| macOS   | x86_84 | :white_check_mark: |
| macOS   | arm    | :x:                |
<!-- prettier-ignore-end -->

## Prerequisites

The following tools have to be installed for successful work of this GitHub action:
[rake](https://ruby.github.io/rake), [go](https://go.dev).

## Inputs

```yaml
- uses: fabasoad/setup-cloe-action@v0
  with:
    # (Optional) If "false" skips installation if cloe is already installed. If
    # "true" installs cloe in any case. Defaults to "false".
    force: "false"
```

## Outputs

<!-- prettier-ignore-start -->
| Name      | Description                       | Example |
|-----------|-----------------------------------|---------|
| installed | Whether cloe was installed or not | `true`  |
<!-- prettier-ignore-end -->

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
      - uses: fabasoad/setup-cloe-action@v0
      - name: Print version
        run: cloe --version
```

### Result

```shell
Run cloe --version
0.1.0
```

## Contributions

![Alt](https://repobeats.axiom.co/api/embed/d0d2977d810a77b65f50e969ab57ef7364fa9306.svg "Repobeats analytics image")
