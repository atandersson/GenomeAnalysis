# Genome Analysis, 10.0 c (1MB462)

*Author: Alfred Andersson* <br>
*Email: alfred.andersson.9942@student.uu.se*

## Table of Contents

- Introduction
- Project Plan
- Aim of this Project
- Analyses
  - Reads Quality Control
  - Reads Preprocessing
  - DNA Assembly
  - DNA Assembly Validation
  - RNA Assembly
  - RNA Assembly Validation
  - Annotation
  - Aligner
  - Differential Expression
  - Additional Analyses
- Discussion
- Daily Work Log

## Introduction

In this project, I try to replicate the results in the paper *Transcriptomic and epigenomic characterization of the developing bat wing* by Eckalbar *et al.*, which can be found [here](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4848140/). Please note that I may use different software than in the original paper in my approach. 

## Project Plan

| Deadline  | Analysis                | Software    | Run time                                               | # cores | Status      |
|-----------|-------------------------|-------------|--------------------------------------------------------|---------|-------------|
| April 4   | Reads Quality Control   | FastQC      | ~3 min                                                 | 1       | Not started |
| April 4   | Reads Preprocessing     | Trimmomatic | ~1-10 min/file                                         | 2       | Not started |
| April 12  | DNA Assembly            | SOAPdenovo  | ~1.5 h                                                 | 2       | Not started |
| April 16  | DNA Assembly Validation | BCFtools    | ~1 h                                                   | 2       | Not started |
| April 24  | RNA Assembly            | Trinity     | ~1.5 h                                                 | 2       | Not started |
| May 2     | RNA Assembly Validation | BCFtools    | ~1 h                                                   | 2       | Not started |
| May 2     | Annotation              | Maker2      | First round: ~3.5 h </br> Following rounds: ~30-60 min | 4       | Not started |
| May 6     | Aligner                 | BWA         | WGS: ~1.5 h <br> ChIP: ~1-2 min/file                   | 2       | Not started |
| May 7     | Differential Expression | HTSeq       | <5 min                                                 | 1       | Not started |
| May 14    | Additional Analyses     | N/A         | N/A                                                    | N/A     | Not started |

## Aim of this Project
To obtain results similar to those in the paper by Eckalbar *et al.*, i.e. assemble the genome of *Miniopterus natalensis* and detect differences in expression between development of hindlimbs and development of forelimbs. Since I will only work with a subset of the data used in the original paper, my results might differ from the results in the paper to some extent. I will also try to contribute with one ore more types of advanced analysis when I am done with the main part of the project. What types of analysis I will pick depends on what interesting questions that arise over the duration of the project.

## Analyses

In this section, the different analyses are presented. There will be a brief explanation on how each method works as well as how it was used in this project. 

### Reads Quality Control
Coming soon.

### Reads Preprocessing
Coming soon.

### DNA Assembly
Coming soon.

### DNA Assembly Validation
Coming soon.

### RNA Assembly
Coming soon.

### RNA Assembly Validation
Coming soon.

### Annotation
Coming soon.

### Aligner
Coming soon.

### Differential Expression 
Coming soon.

### Additional Analyses
Coming soon.

## Discussion
Coming soon.

## Daily Work Log
| Date    | Activity                                                                                     |
|---------|----------------------------------------------------------------------------------------------|
| April 2 | Setting up GitHub repository |
| April 3 | Writing the main structure for the GitHub wiki |
