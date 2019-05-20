#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:05:00
#SBATCH -J bam_sort
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools

# sort the bams
samtools sort -n /home/nordman/private/genome_analysis/GenomeAnalysis/results/8_tophat_aligner/forelimb/cs15/accepted_hits.bam \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/forelimb_cs15.bam
samtools sort -n /home/nordman/private/genome_analysis/GenomeAnalysis/results/8_tophat_aligner/forelimb/cs16/accepted_hits.bam \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/forelimb_cs16.bam
samtools sort -n /home/nordman/private/genome_analysis/GenomeAnalysis/results/8_tophat_aligner/forelimb/cs17/accepted_hits.bam \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/forelimb_cs17.bam
samtools sort -n /home/nordman/private/genome_analysis/GenomeAnalysis/results/8_tophat_aligner/hindlimb/cs15/accepted_hits.bam \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/hindlimb_cs15.bam
samtools sort -n /home/nordman/private/genome_analysis/GenomeAnalysis/results/8_tophat_aligner/hindlimb/cs16/accepted_hits.bam \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/hindlimb_cs16.bam
samtools sort -n /home/nordman/private/genome_analysis/GenomeAnalysis/results/8_tophat_aligner/hindlimb/cs17/accepted_hits.bam \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/hindlimb_cs17.bam
