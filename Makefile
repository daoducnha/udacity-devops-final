setup:
	python3 -m venv ~/.devops

install:
	pip install --upgrade pip &&\
		pip install -r ./app/requirements.txt
	brew install hadolint

test:

lint:
	hadolint ./app/Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

