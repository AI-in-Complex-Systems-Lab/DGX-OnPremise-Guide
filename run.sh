#!/bin/bash

module load slurm

echo -e "Job started..."
echo -e "================================================================================\n"

sbatch jupyter.sh

sleep 5

port="8008"
node_id=$(echo $(squeue -u $USER | grep "dgx" | awk '{print $8}'))
squeue -u $USER
echo -e "\n================================================================================\n"
echo -e "Please open a new SSH connection on a separate terminal session and run:\n"
echo -e "ssh -N -L ${port}::${port} $USER@dgx-head01.its.albany.edu\n"
echo -e "Then your Jupyter Lab session will be available at (may take couple minutes):\nhttp://${node_id}.its.albany.edu:${port}\n"
echo -e "================================================================================\n"
