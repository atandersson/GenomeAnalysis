
#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J bowtie
#SBATCH --mail-type=ALL
#SBATCH --mail-user alfred.andersson.9942@student.uu.se

### Load modules
module load bioinfo-tools
module load tophat

### Your commands
bowtie2-build -f \
/home/nordman/private/genome_analysis/GenomeAnalysis/data/reference_genome_unzipped.fasta \ 
/home/nordman/private/genome_analysis/GenomeAnalysis/results/7_bowtie_build/ref
