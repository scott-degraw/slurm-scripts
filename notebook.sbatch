#!/bin/bash

conda_env=salt

source $CONDA_PREFIX/etc/profile.d/conda.sh
conda activate salt

jupyter notebook --no-browser --port=7777


