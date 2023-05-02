#!/bin/bash
#
#SBATCH --time=48:00:00
#SBATCH --ntasks=8
#SBATCH --job-name=SMB_GPS_Pres34
#SBATCH --mail-user=gblock@unm.edu

cd $SLURM_SUBMIT_DIR

module load pylith

pylith SMB_chamber_bottom_TD.cfg > ~/xena-scratch/GPS_Pres34_out.txt
