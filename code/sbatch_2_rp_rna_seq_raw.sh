#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:10:00
#SBATCH -J reads_preprocessing_rna_seq_raw
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

# Load modules
module load bioinfo-tools
module load trimmomatic

# Your commands
java -jar /sw/apps/bioinfo/trimmomatic/0.36/rackham/trimmomatic.jar PE -threads 2 -phred33 \
/home/nordman/private/genome_analysis/GenomeAnalysis/data/rna_seq_data/raw/sel3_SRR1719266.1.fastq.gz \
/home/nordman/private/genome_analysis/GenomeAnalysis/data/rna_seq_data/raw/sel3_SRR1719266.2.fastq.gz \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/2_reads_preprocessing/rna_seq/raw/sel3_SRR1719266.trim_1P.fastq.gz \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/2_reads_preprocessing/rna_seq/raw/sel3_SRR1719266.trim_1U.fastq.gz \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/2_reads_preprocessing/rna_seq/raw/sel3_SRR1719266.trim_2P.fastq.gz \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/2_reads_preprocessing/rna_seq/raw/sel3_SRR1719266.trim_2U.fastq.gz \
ILLUMINACLIP:/sw/bioinfo/trimmomatic/0.36/rackham/adapters/TruSeq3-PE-2.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:17 MINLEN:36

