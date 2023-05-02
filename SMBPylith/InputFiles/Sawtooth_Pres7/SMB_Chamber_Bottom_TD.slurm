#!/bin/bash
#
#SBATCH --time=48:00:00
#SBATCH --ntasks=32
#SBATCH --nodes=4
#SBATCH --job-name=SMB_Sawtooth_Pres7
#SBATCH --mail-user=gblock@unm.edu

cd $SLURM_SUBMIT_DIR

module load pylith

nemesis /users/kfotso/pylith/bin/pylith SMB_chamber_bottom_TD.cfg > ~/xena-scratch/Sawtooth_Pres7_out.txt
