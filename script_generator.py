import os

def generate_script(env_name, vcf_tools_path_name, max_missing, missingness, minor_allele_frequency):
    file_name_prefix = ""
    suffix = f"mm_{max_missing}_m_{missingness}_maf_{minor_allele_frequency}"
    lines = [
        "conda activate py27",
        "conda activate rad-env",
        f"cd {env_name}",
        f"{vcf_tools_path_name} --vcf (ORIGINAL VCF)--out {file_name_prefix}_filtered_min10x_{suffix} --min-meanDP 10 --max-missing {max_missing} --recode",
        f"{vcf_tools_path_name} --vcf (VCF FROM 1st FUNCTION) --out (LIST OF SINGLETONS) --singletons",
        f"{vcf_tools_path_name} --vcf (VCF FROM 1st FUNCTION) --out (FILE WITHOUT SINGLETONS) --exclude-positions(LIST OF SINGLETONS) --recode",
        f"{vcf_tools_path_name} --vcf {file_name_prefix}_filtered_min10x_final.recode.vcf --out {file_name_prefix}_missing_{suffix} --missing-indv",
        f"awk <{file_name_prefix}_missing.imiss ' $5>{missingness} { print } ' >{file_name_prefix}_to_exclude.txt",
        f"{vcf_tools_path_name} --vcf {file_name_prefix}_filtered_min10x_final.recode.vcf --out {file_name_prefix}_vcffilter --remove{file_name_prefix}_to_exclude.txt --recode",
        f"{vcf_tools_path_name} --vcf {file_name_prefix}_vcf.recode.vcf --out {file_name_prefix}_final_vcffilter_{suffix} --maf {minor_allele_frequency}"
    ]
    script_filename = f"filtering_{suffix}.sh"

    # Write the lines to the shell script file
    with open(script_filename, 'w') as file:
        for line in lines:
            file.write(line + "\n")
    os.chmod(script_filename, 0o755)


def param_sweep(env_name, vcf_tools_path_name):
    #MAF .01-.05
    #max missing .2-.8
    #missingness .2
    max_missing =  .01
    while max_missing <= .8:
        missingness = .1
        while missingness <=.5:
            maf = .01
            while maf <= .05:
                generate_script(env_name, vcf_tools_path_name, max_missing, missingness, maf)
                maf+=.008
            missingness +=.08
        max_missing +=.12
    
    
