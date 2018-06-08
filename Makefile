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

lint:
	pycodestyle audio_toolbox/*.py

fix_style:
	autopep8 --in-place --aggressive --aggressive audio_toolbox/*.py

build:
	python setup.py sdist bdist_wheel

release: build
	twine upload dist/*

.PHONY: lint fix_style build release