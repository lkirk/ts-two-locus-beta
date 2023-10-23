FROM python:3.11-slim-bullseye

RUN \
	set -e; \
	apt-get update && apt-get install -y \
	git \
	build-essential

RUN \
	set -e; \
	git clone -b ts-two-locus-beta https://github.com/lkirk/tskit; \
	cd tskit/python; \
	make

ADD requirements.txt .

RUN \
	set -e; \
	# create virtual environment
	python -m venv ve; \
	# update pip, setuptools
	ve/bin/pip install -U pip setuptools; \
	# install tskit
	ve/bin/pip install /tskit/python; \
	# install requirements
	ve/bin/pip install -r requirements.txt

ADD analysis.py .

ENTRYPOINT ["/ve/bin/python", "/analysis.py"]
