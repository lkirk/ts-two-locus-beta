#!/bin/sh

# make virtual env if one doesn't exist
if [ ! -d ve ]; then
    python -m venv ve
    ve/bin/pip install -U setuptools pip
fi

source ve/bin/activate 

# clone tskit and build if it doesn't exist
[ ! -d tskit ] && git clone -b ts-two-locus-beta https://github.com/lkirk/tskit

cd tskit/python
make
cd -

pip install -e ./tskit/python
