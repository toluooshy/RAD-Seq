#!/bin/bash
#-------------------------- commandsa to submit a job-------------------------#
#SBATCH -J VCFFILTER           # job name
#SBATCH -o Output_01_VCFFILTER                  # output file name (can also be: #SBATCH --output=%x.slurm-%j_%t.output  #name output after job name)
#SBATCH --nodes=1                # node count (only one needed)
#SBATCH --ntasks=1               # total number of tasks across all nodes (only one needed)
#SBATCH --cpus-per-task=1        # cpu-cores per task (>1 if multi-threaded tasks)
#SBATCH --mem=4G                # this increases memory from 4GB to 20GB
#SBATCH --time=6-00:00:00        # total run time limit (DAYS-HH:MM:SS)
#SBATCH --mail-user=ps3436@princeton.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#------------------------------------ create env ---------------------------#
# conda create -n py27 python=2.7
conda activate py27
conda activate rad-env
# python -V 
cd /projects/VONHOLDT/Peyton/RADseq_ISRO_moose_Processing/Mapped_to_Aalces2

#-------------------------------------- filtering function explanation --------------------------------------------------------------#
# dir to vcf tools, input vcf file after --vcf file flag, --out is output file name, --min-meanDP is max coverage parameter (eg 10), - max_missing is per loci # of missing data (no read coerage percetage)
# recode flag makkes a map and a ped file and changes 
# filters for max mean depth greater than or equal to 10x and max missing 60% per site; Recode produced map and ped files
# dont alter min_meanDP
#max-missing range: .2-.8
/projects/VONHOLDT/BIN/vcftools_0.1.16/bin/vcftools --vcf (ORIGINAL VCF)--out ISRO_Aalces2_filtered_min10x --min-meanDP 10 --max-missing 0.6 --recode
#--------------------------------filtering out singletons and doubletons ---------------------------------#
# create file for singletons and private doubletons (STANDARD SHOULD DO THIS FOR EVERYTHING)
/projects/VONHOLDT/BIN/vcftools_0.1.16/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons

# exclude singletons and private doubletons
/projects/VONHOLDT/BIN/vcftools_0.1.16/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode

# individual missingness: per individual how many loci do they data for each SNPS 
# Makes a .imiss output file of missingness per individual for the filtered file

/projects/VONHOLDT/BIN/vcftools_0.1.16/bin/vcftools --vcf ISRO_Aalces2_filtered_min10x_final.recode.vcf --out ISRO_Aalces2_missing --missing-indv 

# Find individuals with missingness >30% and make a file of those sample ID’s to a new .txt file
# 5 is the column number
# missingness from .1-.5
awk <ISRO_Aalces2_missing.imiss ' $5>0.3 { print } ' >ISRO_Aalces2_to_exclude.txt 

# Filter out individuals with >30% missing data and save as ISRO_Aalces2_vcffilter

/projects/VONHOLDT/BIN/vcftools_0.1.16/bin/vcftools --vcf ISRO_Aalces2_filtered_min10x_final.recode.vcf --out ISRO_Aalces2_vcffilter --remove ISRO_Aalces2_to_exclude.txt --recode

# if MAF less than 3% filter it out 
# Filter for minor allele frequency 
#MAF .01-.05
# less important 
/projects/VONHOLDT/BIN/vcftools_0.1.16/bin/vcftools --vcf ISRO_Aalces2_vcf.recode.vcf --out ISRO_Aalces2_final_vcffilter --maf 0.03

