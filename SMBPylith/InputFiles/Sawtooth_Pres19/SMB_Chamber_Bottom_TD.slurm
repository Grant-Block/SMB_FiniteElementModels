#!/bin/bash
#
#SBATCH --time=48:00:00
#SBATCH --ntasks=64
#SBATCH --nodes=8
#SBATCH --job-name=SMB_Sawtooth_Pres19
#SBATCH --mail-user=gblock@unm.edu

cd $SLURM_SUBMIT_DIR

module load pylith

nemesis /users/kfotso/pylith/bin/pylith SMB_chamber_bottom_TD.cfg > ~/xena-scratch/Sawtooth_Pres19_out.txt
