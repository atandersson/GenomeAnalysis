#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -J soapdenovo_validation_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer/3.23

# Your commands
nucmer --prefix /home/nordman/private/genome_analysis/GenomeAnalysis/results/5_assembly_validation/soapdenovo_wgs/soapdenovo_prefix \
/home/nordman/private/genome_analysis/GenomeAnalysis/data/reference_genome_unzipped.fasta \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/3_dna_assembly/soapdenovo/closed_gaps.fasta \

mummerplot --png --layout --filter -p \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/5_assembly_validation/soapdenovo_wgs/soapdenovo_prefix \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/5_assembly_validation/soapdenovo_wgs/soapdenovo_prefix.delta \
-R /home/nordman/private/genome_analysis/GenomeAnalysis/data/reference_genome_unzipped.fasta \
-Q /home/nordman/private/genome_analysis/GenomeAnalysis/results/3_dna_assembly/soapdenovo/closed_gaps.fasta
