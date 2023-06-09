# SPDX-License-Identifier: AGPL-3.0-or-later
# SPDX-FileCopyrightText: Copyright 2023 Canonical Ltd

## help	: Show this message.
# Credit for self-documenting makefile: https://stackoverflow.com/a/47107132
help:
	@echo "USAGE: make [target]"
	@echo
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

## develop	: Set up Python development environment.
develop:
	pdm sync --dev

## run	: Run from source.
run:
	pdm run ipsumapi

## clean	: Remove all build artefacts.
clean:
	rm -rf *.egg-info
	rm -rf .pytest_cache
	rm -rf dist
	rm -rf build
	rm -f .coverage

## test	: Run tests and generate coverage report.
test:
	pdm run coverage run -m pytest
	pdm run coverage report > coverage.txt

## lint	: Fix or warn about linting errors.
lint:
	pdm run black .
	pdm run mdformat --number --wrap 79 .
	pdm run reuse lint
	git diff --exit-code

## build	: Clean, test, lint, then generate new build artefacts.
build: clean test lint
	pdm build

## publish	: Upload build artefacts to PyPI.
publish:
	pdm publish
