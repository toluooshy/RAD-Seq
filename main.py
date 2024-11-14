import pandas as pd
import os
import subprocess
from pysam import VariantFile

# Configuration dictionary for filtering parameters
config = {
    'genotyping_threshold': 0.8,  # Minimum proportion of individuals required for each SNP
    'missingness_per_individual_threshold': 0.2,  # Maximum missing loci per individual
    'minor_allele_frequency_threshold': 0.05  # Minimum frequency for minor alleles
}

def read_vcf(file_path):
    """
    Reads a VCF file using pysam and returns a VariantFile object.
    """
    try:
        vcf = VariantFile(file_path)
        print(f"Successfully loaded VCF file: {file_path}")
        return vcf
    except Exception as e:
        print(f"Error loading VCF file: {e}")
        return None

def filter_snps(vcf, config):
    """
    Filters SNPs based on user-defined configuration parameters.
    """
    filtered_snps = []
    for record in vcf.fetch():
        # Calculate the proportion of individuals with genotypes for this SNP
        total_alleles = len(record.samples)
        genotyped = sum(1 for sample in record.samples.values() if sample['GT'] is not None)
        genotyping_rate = genotyped / total_alleles
        
        # Calculate Minor Allele Frequency
        allele_counts = record.info.get('AF')
        maf = min(allele_counts) if allele_counts else 0
        
        # Apply filtering criteria
        if (genotyping_rate >= config['genotyping_threshold'] and
            maf >= config['minor_allele_frequency_threshold']):
            filtered_snps.append(record)

    print(f"Filtered down to {len(filtered_snps)} SNPs based on thresholds.")
    return filtered_snps

def save_filtered_vcf(filtered_snps, output_path):
    """
    Saves filtered SNPs into a new VCF file.
    """
    with open(output_path, 'w') as out_file:
        for snp in filtered_snps:
            out_file.write(str(snp))
    print(f"Filtered VCF saved to: {output_path}")

def main():
    # Read the VCF file
    input_vcf_path = input("Enter the source .vcf file:\n\n")
    vcf = read_vcf(input_vcf_path)

    if vcf:
        # Filter SNPs based on configuration
        filtered_snps = filter_snps(vcf, config)

        # Save filtered SNPs to a new VCF file
        output_vcf_path = 'filtered_output.vcf'
        save_filtered_vcf(filtered_snps, output_vcf_path)

if __name__ == "__main__":
    main()
