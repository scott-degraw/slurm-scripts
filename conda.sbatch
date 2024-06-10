#!/bin/bash

## Need to make sure to create the output log directory before hand   

# Makes sure we inherit the environment
#SBATCH --export=ALL 
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=5:00:00
#SBATCH --mem=2GB
#SBATCH --job-name=slumry_test
#SBATCH --mail-type=END
#SBATCH --mail-user=scott.degraw.23@ucl.ac.uk
#SBATCH --partition=COMPUTE
# #SBATCH --gres=gpu:1
#SBATCH --output=logs/%x_%j.out

conda_env=salt

source $CONDA_PREFIX/etc/profile.d/conda.sh
conda activate $conda_env

srun python -u test.py 
