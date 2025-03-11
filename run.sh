#!/bin/bash

module load slurm

sbatch jupyter.sh

squeue -u ho598796
