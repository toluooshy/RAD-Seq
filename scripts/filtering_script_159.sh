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