.DEFAULT_GOAL := serve

.PHONY: lock
lock:
	pip-compile -o requirements.txt --resolver=backtracking requirements.in

.PHONY: install
install:
	pip install -r requirements.txt

.PHONY: serve
serve:
	mkdocs serve

.PHONY: build
build:
	mkdocs build
