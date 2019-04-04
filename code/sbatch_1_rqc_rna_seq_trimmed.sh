#!/bin/bash -l

#SBATCH -A g2019003 
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:20:00
#SBATCH -J reads_quality_control_rna_seq_trimmed
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC

# Your commands
for i in /home/nordman/genome_analysis/GenomeAnalysis/data/rna_seq_data/trimmed/*.fastq.gz
	do
    		echo "Running $i ..."
    		fastqc -t 1 -o /home/nordman/genome_analysis/GenomeAnalysis/results/1_reads_quality_control/rna_seq/trimmed "$i"
	done

