#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J htseq_differential_expression
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq

# Your commands

# remove fasta sequence 
head -24216 \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/6_maker_annotation/3_augustus_after/reference_genome_unzipped.maker.output/reference_genome_unzipped.all.gff \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/no_fasta.all.gff

# forelimb CS15
htseq-count -f bam -s no -t gene -i ID /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/forelimb_cs15.bam \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/no_fasta.all.gff \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/forelimb_cs15.txt

# forelimb CS16
htseq-count -f bam -s no -t gene -i ID /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/forelimb_cs16.bam \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/no_fasta.all.gff \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/forelimb_cs16.txt

# forelimb CS17
htseq-count -f bam -s no -t gene -i ID /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/forelimb_cs17.bam \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/no_fasta.all.gff \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/forelimb_cs17.txt

# hindlimb CS15
htseq-count -f bam -s no -t gene -i ID /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/hindlimb_cs15.bam \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/no_fasta.all.gff \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/hindlimb_cs15.txt

# hindlimb CS16
htseq-count -f bam -s no -t gene -i ID /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/hindlimb_cs16.bam \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/no_fasta.all.gff \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/hindlimb_cs16.txt

# hindlimb CS17
htseq-count -f bam -s no -t gene -i ID /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/hindlimb_cs17.bam \
/home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/no_fasta.all.gff \
> /home/nordman/private/genome_analysis/GenomeAnalysis/results/9_differential_expression/hindlimb_cs17.txt
