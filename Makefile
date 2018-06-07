# Test the package locally:
# pip install -e <path>/audio_toolbox

build:
	python setup.py sdist bdist_wheel

release: build
	# Steps:
	# * Bump version in `./setup.py`
	# * Create git tag
	#
	# More information:
	# https://packaging.python.org/tutorials/packaging-projects/
	twine upload dist/*