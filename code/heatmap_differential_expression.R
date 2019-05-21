install.packages("gplots")

library(data.table)
library(matrixStats)
library(stats)
library(gplots)

# Read HTSeq data
FL_CS15 <- read.table("~/htseq_results/forelimb_cs15.txt",head=FALSE)
HL_CS15 <- read.table("~/htseq_results/hindlimb_cs15.txt",head=FALSE)
FL_CS16 <- read.table("~/htseq_results/forelimb_cs16.txt",head=FALSE)
HL_CS16 <- read.table("~/htseq_results/hindlimb_cs16.txt",head=FALSE)
FL_CS17 <- read.table("~/htseq_results/forelimb_cs17.txt",head=FALSE)
HL_CS17 <- read.table("~/htseq_results/hindlimb_cs17.txt",head=FALSE)

# Rename columns
names(FL_CS15)[2] <- "FL_15"
names(HL_CS15)[2] <- "HL_15"
names(FL_CS16)[2] <- "FL_16"
names(HL_CS16)[2] <- "HL_16"
names(FL_CS17)[2] <- "FL_17"
names(HL_CS17)[2] <- "HL_17"

# Merge the data frames
countData <- merge(FL_CS15,HL_CS15,by="V1")
countData <- merge(countData,FL_CS16,by="V1")
countData <- merge(countData,HL_CS16,by="V1")
countData <- merge(countData,FL_CS17,by="V1")
countData <- merge(countData,HL_CS17,by="V1")

# Rename the first columns
names(countData)[1] <- "Genes"

# Remove unnecessary information
countData <- countData[-c(1,2,3,4,5),]
countData <- data.frame(row.names=countData[,1], FLCS15=countData[2], FLCS16=countData[3], FLCS17=countData[4], HLCS15=countData[5], HLCS16=countData[6], HLCS17=countData[7])
(setattr(countData, "row.names", c("CXCL14","LOC107525378","PITX1","TXNDC15","DDX46","CAMLG","SEC24A","LOC111741143","JADE2","CDKL3","UBE2B","PPP2CA","TCF7","VDAC1","LOC107525399","FSTL4","FSTL4","HSPA4","AFF4","AFF4","GDF9","SHROOM1","SHROOM1","LOC107525429","SMAD5","SMAD5","TGFBI","TGFBI","SLC25A48","LOC114232216","CATSPER3","SAR1B","TCF7","ZCCHC10","CH235-516M24")))
countData.m <- as.matrix(countData)
zScoreMatrix <- (countData.m-rowMeans(countData.m))/(rowSds(as.matrix(countData.m)))[row(countData.m)]

row.clus <-hclust(dist(zScoreMatrix))
scaleBWR <- colorRampPalette(c("blue","white","red"), space="rgb")(10)
heatmap.2(zScoreMatrix, Rowv = as.dendrogram(row.clus), Colv = NA, col=scaleBWR,  density.info = "none", trace = "none", margins = c(7,10))
