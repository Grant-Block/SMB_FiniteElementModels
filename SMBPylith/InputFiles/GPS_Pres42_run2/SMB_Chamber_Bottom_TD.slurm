#!/bin/bash
#
#SBATCH --time=48:00:00
#SBATCH --nodes=6
#SBATCH --ntasks=48
#SBATCH --job-name=SMB_GPS_Pres42_run2
#SBATCH --mail-user=gblock@unm.edu

cd $SLURM_SUBMIT_DIR

module load pylith

nemesis /users/kfotso/pylith/bin/pylith SMB_chamber_bottom_TD.cfg > ~/xena-scratch/GPS_Pres42_run2_out.txt
