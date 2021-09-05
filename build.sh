#!/bin/bash

# ./init.sh
# source venv/bin/activate
# 
# source jetson-nano-wheels/commons/envs.sh


## Installs but doesn't work: pip install -vvv --no-cache-dir --upgrade --force-reinstall pyopencl

PIP_CONSTRAINT=constraints.txt \
  pip wheel -vv -c constraints.txt --no-deps \
  --no-binary 'pyopencl' \
  -w dist \
  'pyopencl'
