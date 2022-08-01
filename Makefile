setup:
	python3 -m venv ~/.devops

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
        chmod +x /bin/hadolint

test:

lint:
	hadolint --ignore DL3042 --ignore DL3013 Dockerfile
	pylint --disable=R,C,W1203,W1202  app.py

