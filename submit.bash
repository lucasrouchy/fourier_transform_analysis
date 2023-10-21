#!/bin/bash
#SBATCH -J Fourier
#SBATCH -A cs475-575
#SBATCH -p classmpitest
#SBATCH -N 8 # number of nodes
#SBATCH -o fourier8.out
#SBATCH -e fourier8.err
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=rouchyl.oregonstate.edu
module load openmpi
mpic++ fourier.cpp -o fourier -lm
mpiexec -mca btl self,tcp -np 8 ./fourier