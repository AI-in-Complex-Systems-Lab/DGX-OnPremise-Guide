#!/bin/bash
#SBATCH --job-name=notebook             #name of the job
#SBATCH --time=00-04:00:00              #time limit in dd-hh:mm:ss
#SBATCH --gres=gpu:1                    #GPU allocation
#SBATCH --mem=80gb                      #memory allocation
#SBATCH --output=logs/notebook-%j.out        #output file
#SBATCH --error=logs/notebook-%j.err         #log file
#SBATCH --container-mounts=/network/rit/lab/ComplexSystemsLab:/mnt/ComplexSystemsLab
#SBATCH --container-image='docker://nvcr.io/nvidia/pytorch:24.05-py3'

jupyter lab --allow-root --port=8008 --no-browser --ip=0.0.0.0 --IdentityProvider.token='' --NotebookApp.allow_origin='*' --notebook-dir=/mnt/ComplexSystemsLab
