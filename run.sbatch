#!/bin/bash
#SBATCH --job-name=assignment2-nlp
#SBATCH --mail-type=ALL
#SBATCH --mail-user=niccolo.zanotti@studio.unibo.it
#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=30G
#SBATCH --partition=l40
#SBATCH --output=stdout_job.log
#SBATCH --chdir=/scratch.hpc/niccolo.zanotti/software/nlp-assignment
#SBATCH --gres=gpu:1

# Set Jupyter and IPython directories to avoid home directory quota issues
export JUPYTER_CONFIG_DIR=/scratch.hpc/niccolo.zanotti/.jupyter
export IPYTHONDIR=/scratch.hpc/niccolo.zanotti/.ipython
export SOFTWARE_DIR="/scratch.hpc/niccolo.zanotti/software/nlp-assignment"
export NOTEBOOK="assignment2.ipynb"
export NOTEBOOK_OUTPUT="assignment2_output.ipynb"

source $SOFTWARE_DIR/.venv/bin/activate

# Run and overwrite the notebook with updated outputs
jupyter nbconvert --to notebook --execute $SOFTWARE_DIR/$NOTEBOOK --output $SOFTWARE_DIR/$NOTEBOOK_OUTPUT
