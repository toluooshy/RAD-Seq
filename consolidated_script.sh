#!/bin/bash

echo 'Running script 1'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.1_maf_0.01 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.1_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.1_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 2'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.1_maf_0.02 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.1_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.1_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 3'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.1_maf_0.03 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.1_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.1_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 4'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.1_maf_0.04 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.1_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.1_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 5'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.1_maf_0.05 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.1_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.1_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 6'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.2_maf_0.01 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.2_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.2_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 7'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.2_maf_0.02 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.2_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.2_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 8'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.2_maf_0.03 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.2_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.2_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 9'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.2_maf_0.04 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.2_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.2_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 10'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.2_maf_0.05 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.2_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.2_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 11'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.30000000000000004_maf_0.01 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.30000000000000004_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.30000000000000004_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 12'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.30000000000000004_maf_0.02 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.30000000000000004_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.30000000000000004_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 13'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.30000000000000004_maf_0.03 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.30000000000000004_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.30000000000000004_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 14'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.30000000000000004_maf_0.04 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.30000000000000004_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.30000000000000004_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 15'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.30000000000000004_maf_0.05 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.30000000000000004_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.30000000000000004_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 16'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.4_maf_0.01 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.4_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.4_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 17'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.4_maf_0.02 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.4_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.4_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 18'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.4_maf_0.03 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.4_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.4_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 19'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.4_maf_0.04 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.4_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.4_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 20'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.4_maf_0.05 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.4_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.4_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 21'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.5_maf_0.01 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.5_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.5_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 22'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.5_maf_0.02 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.5_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.5_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 23'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.5_maf_0.03 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.5_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.5_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 24'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.5_maf_0.04 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.5_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.5_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 25'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.1_m_0.5_maf_0.05 --min-meanDP 10 --max-missing 0.1 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.1_m_0.5_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.1_m_0.5_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 26'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.1_maf_0.01 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.1_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.1_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 27'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.1_maf_0.02 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.1_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.1_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 28'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.1_maf_0.03 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.1_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.1_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 29'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.1_maf_0.04 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.1_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.1_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 30'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.1_maf_0.05 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.1_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.1_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 31'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.2_maf_0.01 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.2_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.2_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 32'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.2_maf_0.02 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.2_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.2_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 33'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.2_maf_0.03 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.2_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.2_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 34'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.2_maf_0.04 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.2_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.2_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 35'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.2_maf_0.05 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.2_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.2_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 36'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.30000000000000004_maf_0.01 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.30000000000000004_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.30000000000000004_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 37'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.30000000000000004_maf_0.02 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.30000000000000004_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.30000000000000004_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 38'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.30000000000000004_maf_0.03 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.30000000000000004_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.30000000000000004_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 39'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.30000000000000004_maf_0.04 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.30000000000000004_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.30000000000000004_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 40'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.30000000000000004_maf_0.05 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.30000000000000004_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.30000000000000004_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 41'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.4_maf_0.01 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.4_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.4_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 42'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.4_maf_0.02 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.4_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.4_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 43'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.4_maf_0.03 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.4_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.4_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 44'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.4_maf_0.04 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.4_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.4_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 45'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.4_maf_0.05 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.4_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.4_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 46'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.5_maf_0.01 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.5_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.5_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 47'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.5_maf_0.02 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.5_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.5_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 48'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.5_maf_0.03 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.5_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.5_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 49'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.5_maf_0.04 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.5_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.5_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 50'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.2_m_0.5_maf_0.05 --min-meanDP 10 --max-missing 0.2 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.2_m_0.5_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.2_m_0.5_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 51'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.1_maf_0.01 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.1_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.1_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 52'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.1_maf_0.02 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.1_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.1_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 53'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.1_maf_0.03 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.1_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.1_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 54'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.1_maf_0.04 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.1_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.1_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 55'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.1_maf_0.05 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.1_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.1_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 56'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.2_maf_0.01 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.2_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.2_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 57'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.2_maf_0.02 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.2_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.2_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 58'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.2_maf_0.03 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.2_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.2_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 59'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.2_maf_0.04 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.2_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.2_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 60'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.2_maf_0.05 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.2_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.2_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 61'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.30000000000000004_maf_0.01 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.30000000000000004_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.30000000000000004_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 62'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.30000000000000004_maf_0.02 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.30000000000000004_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.30000000000000004_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 63'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.30000000000000004_maf_0.03 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.30000000000000004_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.30000000000000004_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 64'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.30000000000000004_maf_0.04 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.30000000000000004_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.30000000000000004_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 65'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.30000000000000004_maf_0.05 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.30000000000000004_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.30000000000000004_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 66'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.4_maf_0.01 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.4_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.4_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 67'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.4_maf_0.02 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.4_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.4_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 68'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.4_maf_0.03 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.4_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.4_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 69'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.4_maf_0.04 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.4_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.4_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 70'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.4_maf_0.05 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.4_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.4_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 71'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.5_maf_0.01 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.5_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.5_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 72'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.5_maf_0.02 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.5_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.5_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 73'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.5_maf_0.03 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.5_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.5_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 74'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.5_maf_0.04 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.5_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.5_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 75'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.30000000000000004_m_0.5_maf_0.05 --min-meanDP 10 --max-missing 0.30000000000000004 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.30000000000000004_m_0.5_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.30000000000000004_m_0.5_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 76'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.1_maf_0.01 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.1_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.1_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 77'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.1_maf_0.02 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.1_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.1_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 78'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.1_maf_0.03 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.1_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.1_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 79'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.1_maf_0.04 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.1_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.1_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 80'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.1_maf_0.05 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.1_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.1_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 81'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.2_maf_0.01 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.2_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.2_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 82'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.2_maf_0.02 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.2_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.2_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 83'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.2_maf_0.03 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.2_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.2_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 84'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.2_maf_0.04 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.2_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.2_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 85'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.2_maf_0.05 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.2_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.2_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 86'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.30000000000000004_maf_0.01 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.30000000000000004_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.30000000000000004_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 87'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.30000000000000004_maf_0.02 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.30000000000000004_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.30000000000000004_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 88'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.30000000000000004_maf_0.03 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.30000000000000004_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.30000000000000004_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 89'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.30000000000000004_maf_0.04 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.30000000000000004_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.30000000000000004_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 90'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.30000000000000004_maf_0.05 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.30000000000000004_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.30000000000000004_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 91'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.4_maf_0.01 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.4_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.4_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 92'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.4_maf_0.02 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.4_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.4_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 93'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.4_maf_0.03 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.4_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.4_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 94'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.4_maf_0.04 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.4_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.4_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 95'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.4_maf_0.05 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.4_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.4_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 96'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.5_maf_0.01 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.5_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.5_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 97'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.5_maf_0.02 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.5_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.5_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 98'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.5_maf_0.03 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.5_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.5_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 99'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.5_maf_0.04 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.5_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.5_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 100'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.4_m_0.5_maf_0.05 --min-meanDP 10 --max-missing 0.4 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.4_m_0.5_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.4_m_0.5_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 101'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.1_maf_0.01 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.1_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.1_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 102'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.1_maf_0.02 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.1_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.1_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 103'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.1_maf_0.03 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.1_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.1_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 104'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.1_maf_0.04 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.1_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.1_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 105'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.1_maf_0.05 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.1_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.1_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 106'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.2_maf_0.01 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.2_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.2_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 107'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.2_maf_0.02 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.2_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.2_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 108'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.2_maf_0.03 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.2_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.2_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 109'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.2_maf_0.04 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.2_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.2_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 110'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.2_maf_0.05 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.2_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.2_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 111'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.30000000000000004_maf_0.01 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.30000000000000004_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.30000000000000004_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 112'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.30000000000000004_maf_0.02 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.30000000000000004_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.30000000000000004_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 113'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.30000000000000004_maf_0.03 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.30000000000000004_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.30000000000000004_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 114'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.30000000000000004_maf_0.04 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.30000000000000004_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.30000000000000004_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 115'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.30000000000000004_maf_0.05 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.30000000000000004_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.30000000000000004_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 116'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.4_maf_0.01 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.4_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.4_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 117'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.4_maf_0.02 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.4_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.4_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 118'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.4_maf_0.03 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.4_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.4_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 119'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.4_maf_0.04 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.4_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.4_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 120'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.4_maf_0.05 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.4_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.4_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 121'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.5_maf_0.01 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.5_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.5_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 122'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.5_maf_0.02 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.5_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.5_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 123'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.5_maf_0.03 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.5_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.5_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 124'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.5_maf_0.04 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.5_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.5_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 125'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.5_m_0.5_maf_0.05 --min-meanDP 10 --max-missing 0.5 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.5_m_0.5_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.5_m_0.5_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 126'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.1_maf_0.01 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.1_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.1_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 127'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.1_maf_0.02 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.1_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.1_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 128'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.1_maf_0.03 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.1_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.1_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 129'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.1_maf_0.04 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.1_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.1_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 130'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.1_maf_0.05 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.1_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.1_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 131'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.2_maf_0.01 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.2_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.2_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 132'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.2_maf_0.02 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.2_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.2_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 133'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.2_maf_0.03 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.2_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.2_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 134'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.2_maf_0.04 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.2_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.2_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 135'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.2_maf_0.05 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.2_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.2_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 136'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.30000000000000004_maf_0.01 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.30000000000000004_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.30000000000000004_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 137'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.30000000000000004_maf_0.02 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.30000000000000004_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.30000000000000004_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 138'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.30000000000000004_maf_0.03 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.30000000000000004_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.30000000000000004_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 139'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.30000000000000004_maf_0.04 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.30000000000000004_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.30000000000000004_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 140'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.30000000000000004_maf_0.05 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.30000000000000004_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.30000000000000004_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 141'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.4_maf_0.01 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.4_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.4_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 142'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.4_maf_0.02 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.4_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.4_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 143'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.4_maf_0.03 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.4_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.4_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 144'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.4_maf_0.04 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.4_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.4_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 145'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.4_maf_0.05 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.4_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.4_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 146'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.5_maf_0.01 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.5_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.5_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 147'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.5_maf_0.02 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.5_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.5_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 148'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.5_maf_0.03 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.5_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.5_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 149'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.5_maf_0.04 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.5_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.5_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 150'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.6_m_0.5_maf_0.05 --min-meanDP 10 --max-missing 0.6 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.6_m_0.5_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.6_m_0.5_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 151'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.1_maf_0.01 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.1_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.1_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 152'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.1_maf_0.02 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.1_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.1_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 153'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.1_maf_0.03 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.1_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.1_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 154'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.1_maf_0.04 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.1_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.1_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 155'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.1_maf_0.05 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.1_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.1_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 156'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.2_maf_0.01 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.2_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.2_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 157'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.2_maf_0.02 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.2_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.2_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 158'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.2_maf_0.03 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.2_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.2_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 159'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.2_maf_0.04 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.2_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.2_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 160'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.2_maf_0.05 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.2_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.2_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 161'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.30000000000000004_maf_0.01 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.30000000000000004_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.30000000000000004_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 162'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.30000000000000004_maf_0.02 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.30000000000000004_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.30000000000000004_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 163'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.30000000000000004_maf_0.03 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.30000000000000004_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.30000000000000004_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 164'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.30000000000000004_maf_0.04 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.30000000000000004_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.30000000000000004_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 165'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.30000000000000004_maf_0.05 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.30000000000000004_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.30000000000000004_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 166'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.4_maf_0.01 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.4_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.4_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 167'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.4_maf_0.02 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.4_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.4_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 168'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.4_maf_0.03 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.4_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.4_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 169'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.4_maf_0.04 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.4_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.4_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 170'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.4_maf_0.05 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.4_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.4_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 171'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.5_maf_0.01 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.5_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.5_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 172'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.5_maf_0.02 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.5_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.5_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 173'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.5_maf_0.03 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.5_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.5_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 174'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.5_maf_0.04 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.5_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.5_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 175'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7_m_0.5_maf_0.05 --min-meanDP 10 --max-missing 0.7 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7_m_0.5_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7_m_0.5_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 176'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.1_maf_0.01 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.1_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.1_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 177'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.1_maf_0.02 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.1_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.1_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 178'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.1_maf_0.03 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.1_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.1_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 179'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.1_maf_0.04 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.1_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.1_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 180'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.1_maf_0.05 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.1_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.1 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.1_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 181'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.2_maf_0.01 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.2_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.2_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 182'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.2_maf_0.02 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.2_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.2_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 183'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.2_maf_0.03 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.2_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.2_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 184'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.2_maf_0.04 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.2_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.2_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 185'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.2_maf_0.05 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.2_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.2 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.2_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 186'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.30000000000000004_maf_0.01 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.30000000000000004_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.30000000000000004_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 187'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.30000000000000004_maf_0.02 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.30000000000000004_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.30000000000000004_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 188'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.30000000000000004_maf_0.03 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.30000000000000004_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.30000000000000004_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 189'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.30000000000000004_maf_0.04 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.30000000000000004_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.30000000000000004_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 190'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.30000000000000004_maf_0.05 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.30000000000000004_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.30000000000000004 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.30000000000000004_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 191'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.4_maf_0.01 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.4_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.4_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 192'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.4_maf_0.02 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.4_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.4_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 193'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.4_maf_0.03 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.4_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.4_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 194'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.4_maf_0.04 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.4_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.4_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 195'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.4_maf_0.05 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.4_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.4 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.4_maf_0.05 --maf 0.05
echo 'Done'

echo 'Running script 196'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.5_maf_0.01 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.5_maf_0.01 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.5_maf_0.01 --maf 0.01
echo 'Done'

echo 'Running script 197'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.5_maf_0.02 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.5_maf_0.02 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.5_maf_0.02 --maf 0.02
echo 'Done'

echo 'Running script 198'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.5_maf_0.03 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.5_maf_0.03 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.5_maf_0.03 --maf 0.03
echo 'Done'

echo 'Running script 199'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.5_maf_0.04 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.5_maf_0.04 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.5_maf_0.04 --maf 0.04
echo 'Done'

echo 'Running script 200'
conda activate py27
conda activate rad-env
cd /data/working_env
/usr/local/bin/vcftools --vcf (ORIGINAL VCF)--out _filtered_min10x_mm_0.7999999999999999_m_0.5_maf_0.05 --min-meanDP 10 --max-missing 0.7999999999999999 --recode
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons
/usr/local/bin/vcftools --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _missing_mm_0.7999999999999999_m_0.5_maf_0.05 --missing-indv
awk <_missing.imiss ' $5>0.5 <built-in function print> ' >_to_exclude.txt
/usr/local/bin/vcftools --vcf _filtered_min10x_final.recode.vcf --out _vcffilter --remove_to_exclude.txt --recode
/usr/local/bin/vcftools --vcf _vcf.recode.vcf --out _final_vcffilter_mm_0.7999999999999999_m_0.5_maf_0.05 --maf 0.05
echo 'Done'

