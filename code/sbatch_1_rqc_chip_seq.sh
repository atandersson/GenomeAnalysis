#!/bin/bash -l

#SBATCH -A g2019003 
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -J reads_quality_control_chip_seq
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC

# Your commands
for i in /home/nordman/genome_analysis/GenomeAnalysis/data/chip_seq_data/*.fastq.gz
	do
    		echo "Running $i ..."
    		fastqc -t 1 -o /home/nordman/genome_analysis/GenomeAnalysis/results/1_reads_quality_control/chip_seq "$i"
	done

