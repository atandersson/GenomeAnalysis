#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 10:00:00
#SBATCH -J tophat_hindlimb_cs17
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

### Load modules
module load bioinfo-tools
module load tophat

### Your commands
tophat -o /home/nordman/private/genome_analysis/GenomeAnalysis/results/8_tophat_aligner/hindlimb/cs17 \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/7_bowtie_build/ref \
/home/nordman/private/genome_analysis/GenomeAnalysis/data/rna_seq_temp/sel3_SRR1719213.trim_1P.fastq.gz,\
/home/nordman/private/genome_analysis/GenomeAnalysis/data/rna_seq_temp/sel3_SRR1719241.trim_1P.fastq.gz,\
/home/nordman/private/genome_analysis/GenomeAnalysis/data/rna_seq_temp/sel3_SRR1719266.trim_1P.fastq.gz \
/home/nordman/private/genome_analysis/GenomeAnalysis/data/rna_seq_temp/sel3_SRR1719213.trim_2P.fastq.gz,\
/home/nordman/private/genome_analysis/GenomeAnalysis/data/rna_seq_temp/sel3_SRR1719241.trim_2P.fastq.gz,\
/home/nordman/private/genome_analysis/GenomeAnalysis/data/rna_seq_temp/sel3_SRR1719266.trim_2P.fastq.gz
