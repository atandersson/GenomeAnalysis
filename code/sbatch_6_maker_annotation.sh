#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 01:00:00
#SBATCH -J maker_annotation_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

# Load modules
module load bioinfo-tools
module load maker
module load augustus

# Your commands
export AUGUSTUS_CONFIG_PATH="/home/nordman/private/genome_analysis/GenomeAnalysis/results/6_maker_annotation/reference_augustus_backup2/reference_genome_unzipped.maker.output/config" 
maker
