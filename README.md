# Genome Analysis, 10.0 c (1MB462)

*Author: Alfred Andersson*

*Email: alfred.andersson.9942@student.uu.se*

In this project, I try to replicate the results in the article *Transcriptomic and epigenomic characterization of the developing bat wing* by Eckalbar *et al.* PLease note that different software than in the original article might be used in my approach. 

## Time Plan

### 1. Reads Quality Control
- FastQC (~3 min, 1 core)
- Deadline: April 4

### 2. Reads Preprocessing
- Trimmomatic (~1-10 min/file, 2 cores)
- Deadline: April 4

### 3. DNA Assembly
- Spades (~1-7 days, 6 cores) OR SOAPdenovo (~1.5 h, 2 cores)
- Deadline: April 12

### 4. DNA Assembly Validation
- MUMmerplot (<5 min, 1 core) OR BCFtools (~1 h, 2 cores)
- Deadline: April 16

### 5. RNA Assembly
- Trinity (~1.5 h, 2 cores)
- Deadline: April 24

### 6. RNA Assembly Validation
- MUMmerplot (<5 min, 1 core) OR BCFtools (~1 h, 2 cores)
- Deadline: May 2

### 7. Annotation
- Maker2 (First round: ~3.5 h, 4 cores; Following rounds: ~30-60 min, 4 cores)
- Deadline: May 2

### 8. Aligner
- BWA (WGS: ~1.5 h, 2 cores; ChIP: ~1-2 min/file, 2 cores) OR Tophat (~5-30 min/file, 2 cores)
- Deadline: May 6

### 9. Differential Expression 
- Htseq (<5 min, 1 core)
- Deadline: May 7

## 10. Additional Analyses
- TBA
- Deadline: May 14
