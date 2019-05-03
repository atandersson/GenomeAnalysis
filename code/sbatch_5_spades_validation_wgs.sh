#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 24:00:00
#SBATCH -J spades_validation_wgs
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer

# Your commands
nucmer --prefix /home/nordman/private/genome_analysis/GenomeAnalysis/results/5_assembly_validation/spades_wgs/spades \
/home/nordman/private/genome_analysis/GenomeAnalysis/data/reference_genome_unzipped.fasta \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/3_dna_assembly/spades/scaffolds.fasta

mummerplot -x "[0,4000000]" -y "[0,4000000]" --png --layout --filter -p \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/5_assembly_validation/spades_wgs/spades \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/5_assembly_validation/spades_wgs/spades.delta \
-R /home/nordman/private/genome_analysis/GenomeAnalysis/data/reference_genome_unzipped.fasta \
-Q /home/nordman/private/genome_analysis/GenomeAnalysis/results/3_dna_assembly/spades/scaffolds.fasta
