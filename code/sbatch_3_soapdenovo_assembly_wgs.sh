#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 04:00:00
#SBATCH -J soapdenovo_dna_assembly_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

# Load modules
module load bioinfo-tools
module load soapdenovo

# Your commands
/sw/bioinfo/SOAPdenovo/2.04-r240/rackham/bin/SOAPdenovo-63mer all \
-s /home/nordman/private/genome_analysis/GenomeAnalysis/code/soapdenovo_config.txt \
-K 49 \
-o /home/nordman/private/genome_analysis/GenomeAnalysis/results/3_dna_assembly/soapdenovo/output
