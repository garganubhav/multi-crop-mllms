#!/bin/bash

#SBATCH -n 1
#SBATCH --cpus-per-task=6
#SBATCH --mem=64g
#SBATCH -t 2-
#SBATCH -p a100-gpu
#SBATCH --qos=gpu_access
#SBATCH --gres=gpu:1

# Load necessary modules
#module purge
#module load cuda/11.8
#module load conda

# Activate the environment
#conda activate mllms_know

# Navigate to the repository directory
#cd /path/to/mllms_know

# Run the job
#python get_score.py --data_dir ./playground/data/results --save_path ./
bash run_all.sh textvqa llava rel_att
