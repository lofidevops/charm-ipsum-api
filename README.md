# Ipsum API

An API that generates meaningless but familiar text.

<!-- start @generated footer -->

# Development environment

## Install prerequisites

- Python 3.10
- pdm
- make

## Instructions

- Fork the upstream repository.
- `git clone [fork-url]`
- `cd [project-folder]`
- Run `make develop` to initialise your development environment.

You can use any text editor or IDE that supports virtualenv / pdm. See the
Makefile for toolchain details.

Please `make test` and `make lint` before submitting changes.

## Make targets

```
USAGE: make [target]

help    : Show this message.
develop : Set up Python development environment.
run     : Run from source.
clean   : Remove all build artefacts.
test    : Run tests and generate coverage report.
lint    : Fix or warn about linting errors.
build   : Clean, test, lint, then generate new build artefacts.
publish : Upload build artefacts to PyPI.
```

# Sharing and contributions

```
Ipsum API
https://github.com/lofidevops/charm-ipsum-api
Copyright 2023 Canonical Ltd
SPDX-License-Identifier: AGPL-3.0-or-later
```

Shared under AGPL-3.0-or-later. We adhere to the Ubuntu Code of Conduct 2.0,
and certify origin per DCO 1.1 with a signed-off-by line. Contributions under
the same terms are welcome.

Submit security and conduct issues as private tickets. Sign commits with
`git commit --signoff`. For a software bill of materials run `reuse spdx`. For
more details see CONDUCT, COPYING and CONTRIBUTING.
