setup:
	python3 -m venv ~/.myrepo

install:
	pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

validate-circleci:
	circleci config process .circleci/config.yml

run-circleci-local:
	circleci local execute

lint:
	hadolint doodle/cheers2019/Dockerfile
	pylint --disable=R,C myrepolib cli web

all: install lint test


