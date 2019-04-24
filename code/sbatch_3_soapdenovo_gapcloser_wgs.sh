#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 200:00:00
#SBATCH -J soapdenovo_gapcloser_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

# Load modules
module load bioinfo-tools
module load soapdenovo

# Your commands
/sw/apps/bioinfo/SOAPdenovo/2.04-r240/rackham/bin/GapCloser \
-b /proj/g2019003/nobackup/soap/soapdenovo_wgs.config \
-a /home/nordman/private/genome_analysis/GenomeAnalysis/results/3_dna_assembly/soapdenovo/output.scafSeq \
-o /home/nordman/private/genome_analysis/GenomeAnalysis/results/3_dna_assembly/soapdenovo/closed_gaps.fasta
