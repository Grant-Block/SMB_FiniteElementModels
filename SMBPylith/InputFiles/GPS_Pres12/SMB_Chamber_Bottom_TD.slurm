#!/bin/bash
#
#SBATCH --time=24:00:00
#SBATCH --ntasks=8
#SBATCH --job-name=SMB_GPS_Pres12
#SBATCH --mail-user=gblock@unm.edu

cd $SLURM_SUBMIT_DIR

module load pylith

pylith SMB_chamber_bottom_TD.cfg > ~/xena-scratch/GPS_Pres12.txt
