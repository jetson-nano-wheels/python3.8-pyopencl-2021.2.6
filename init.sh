#!/bin/bash

if [[ ! -d venv ]] ; then
    python3.8 -m venv venv
    source venv/bin/activate
    pip install --upgrade pip setuptools wheel build
else
    source venv/bin/activate
fi

if [[ ! -d jetson-nano-submodules/commons ]] ; then
    git submodule add git@github.com:jetson-nano-wheels/commons jetson-nano-wheels/commons
fi

source jetson-nano-wheels/commons/envs.sh

pip install -v 'numpy==1.21.2'
pip install -v pybind11
pip install -v mako
pip install -v 'pytools>=2021.2.7'

