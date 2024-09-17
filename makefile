.PHONY: refresh build install build_dist json release test clean

refresh: clean build install

build:
	python -m build

install:
	pip install .

build_dist:
	make clean
	python -m build
	pip install dist/*.whl
	make test

release:
	python -m twine upload dist/*

test:
	python -m unittest

clean:
	rm -rf __pycache__
	rm -rf tests/__pycache__
	rm -rf src/hplinear/__pycache__
	rm -rf build
	rm -rf dist
	rm -rf hplinear.egg-info
	rm -rf src/hplinear.egg-info
	pip uninstall -y hplinear
