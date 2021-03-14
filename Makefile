## install     : Install project package locally and install pre-commit.
.PHONY : install
install :
	python -m pip install pip-tools
	pip-compile requirements.in
	python -m pip install -r requirements.txt
	flit install --pth-file
	pre-commit install

## update      : Update project package dependencies from requirements.in.
.PHONY : update
update :
	pip-compile requirements.in
	python -m pip install -r requirements.txt

## bump        : Increment the project version number in all locations.
.PHONY : bump
bump :
	bumpver update

## bump_test   : Test incrementing the project version number in all locations.
.PHONY : bump_test
bump_test :
	bumpver update --dry --no-fetch

## help        : Documentation for make targets.
.PHONY : help
help : Makefile
	@sed -n 's/^##//p' $<
