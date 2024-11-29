import pandas as pd
import os
from pysam import VariantFile
import numpy as np

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

def extract_and_export_haplotypes(filtered_snps, output_file):
    """
    Extract haplotype data (binary 0s and 1s) from filtered SNPs and write to a text file.
    """
    try:
        with open(output_file, 'w') as f:
            for record in filtered_snps:
                haplotype = []
                for sample in record.samples.values():
                    gt = sample['GT']
                    if gt:
                        # Append binary data directly
                        haplotype.append(str(gt[0] if gt[0] is not None else 0))
                        haplotype.append(str(gt[1] if gt[1] is not None else 0))
                # Write the haplotype string directly to the file
                f.write("".join(haplotype) + '\n')
        print(f"Haplotypes exported successfully to {output_file}")
    except Exception as e:
        print(f"Error exporting haplotypes: {e}")


def export_haplotypes_to_file(haplotypes, output_file):
    """
    Exports the haplotypes to a text file where each line represents a haplotype.
    """
    try:
        with open(output_file, 'w') as f:
            for haplotype in haplotypes:
                f.write(haplotype + '\n')
        print(f"Haplotypes exported successfully to {output_file}")
    except Exception as e:
        print(f"Error exporting haplotypes: {e}")

def calculate_statistics(haplotypes, region_length):
    """
    Calculate population statistics for a single population.
    """
    S = calculate_segregating_sites(haplotypes)
    theta_w = wattersons_theta(S, len(haplotypes), region_length)
    pi = nucleotide_diversity(haplotypes)
    D = pi - theta_w
    Ne = estimate_ne(theta_w, mutation_rate=1e-8)
    
    return {
        "S": S,
        "Theta_W": theta_w,
        "Pi": pi,
        "Tajima_D": D,
        "Ne": Ne
    }

def calculate_segregating_sites(haplotypes):
    """
    Calculate the number of segregating sites (S).
    """
    haplotypes_array = np.array([list(hap) for hap in haplotypes], dtype=int)
    seg_sites = np.sum(np.any(haplotypes_array != haplotypes_array[0], axis=0))
    return seg_sites

def wattersons_theta(S, n, region_length):
    """
    Calculate Watterson's theta.
    """
    a_n = sum(1 / i for i in range(1, n))  # Harmonic number
    return S / a_n / region_length

def nucleotide_diversity(haplotypes):
    """
    Calculate nucleotide diversity (Pi).
    """
    haplotypes_array = np.array([list(hap) for hap in haplotypes], dtype=int)
    n, L = haplotypes_array.shape
    pi = 0
    for i in range(L):
        allele_counts = np.bincount(haplotypes_array[:, i], minlength=2)
        freq = allele_counts / n
        pi += 2 * freq[0] * freq[1]
    return pi / L

def estimate_ne(theta_w, mutation_rate):
    """
    Estimate Ne using Watterson's theta.
    """
    return theta_w / (4 * mutation_rate)

def calculate_region_length(vcf):
    """
    Calculates the length of the genomic region covered by the VCF.
    """
    positions = [record.pos for record in vcf.fetch()]
    if positions:
        region_length = max(positions) - min(positions) + 1
        return region_length
    else:
        raise ValueError("No valid positions found in VCF.")

def main():
    # Read the VCF file
    input_vcf_path = input("Enter the source .vcf file:\n") #populations.snps.vcf
    vcf = read_vcf(input_vcf_path)

    if vcf:
        # Configuration dictionary for filtering parameters
        genotyping_threshold = input("Enter your minimum proportion of individuals required for each SNP:\n")  # .8
        missingness_per_individual_threshold = input("Enter your maximum missing loci per individual:\n")  # .2
        minor_allele_frequency_threshold = input("Enter your minimum frequency for minor alleles:\n")  # .05

        config = {
            'genotyping_threshold': float(genotyping_threshold),
            'missingness_per_individual_threshold': float(missingness_per_individual_threshold),
            'minor_allele_frequency_threshold': float(minor_allele_frequency_threshold)
        }

        # Filter SNPs based on configuration
        filtered_snps = filter_snps(vcf, config)

        # Save filtered SNPs to a new VCF file
        output_vcf_path = 'filtered_output.vcf'
        save_filtered_vcf(filtered_snps, output_vcf_path)

        # Extract and export haplotypes to a file
        haplotype_output_file = 'haplotypes_output.txt'
        extract_and_export_haplotypes(filtered_snps, haplotype_output_file)

        # Calculate region length
        region_length = calculate_region_length(vcf)
        print(f"Region length determined to be: {region_length} bp")

        # Calculate statistics using the exported haplotypes
        haplotypes = []
        with open(haplotype_output_file, 'r') as f:
            haplotypes = f.read().splitlines()
        
        stats = calculate_statistics(haplotypes, region_length)

        # Display results
        print(f"Segregating Sites (S): {stats['S']}")
        print(f"Theta (Watterson's): {stats['Theta_W']:.2e}")
        print(f"Nucleotide Diversity (Pi): {stats['Pi']:.2e}")
        print(f"Tajima's D: {stats['Tajima_D']:.2f}")
        print(f"Effective Population Size (Ne): {stats['Ne']:.2e}")

    else:
        print("No files detected.")

if __name__ == "__main__":
    main()