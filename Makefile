# Local testing
#
# Install local changes in the system:
# pip install -e <path>/audio_toolbox

# Release
#
# Steps:
# * Bump version in `./setup.py`
# * Create git tag
#
# More information:
# https://packaging.python.org/tutorials/packaging-projects/

build:
	python setup.py sdist bdist_wheel

release: build
	twine upload dist/*

.PHONY: build release