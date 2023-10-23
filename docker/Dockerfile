FROM python:3.11-slim-bullseye

ADD requirements.txt .

RUN \
    set -e; \
    apt-get update && apt-get install -y \
    git \
    build-essentials

RUN \
    set -e; \
    git clone -b ts-two-locus-beta https://github.com/lkirk/tskit; \
    cd python; \


RUN \
    set -e; \
    # create virtual environment
    python -m venv ve; \
    # update pip, setuptools
    ve/bin/pip install -U pip setuptools; \
    # install requirements
    ve/bin/pip install -r requirements.txt

ADD analysis.py .

ENTRYPOINT ["/ve/bin/python", "/analysis.py"]
