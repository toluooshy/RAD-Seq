import sys
import os
import zipfile
from PyQt5.QtWidgets import (
    QApplication, QWidget, QVBoxLayout, QFormLayout, QLineEdit, QPushButton, QLabel, QHBoxLayout, QFrame, QSizePolicy
)
from PyQt5.QtCore import Qt


def generate_script_content(env_name, vcf_tools_path_name, max_missing, missingness, minor_allele_frequency):
    """Generates the content of the shell script for a given combination of parameters."""
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
    return "\n".join(lines)


def create_consolidated_script(script_contents):
    """Creates the consolidated shell script that runs all the generated script contents."""
    consolidated_script = "consolidated_script.sh"
    with open(consolidated_script, 'w') as outfile:
        outfile.write("#!/bin/bash\n\n")
        for idx, content in enumerate(script_contents):
            outfile.write(f"echo 'Running script {idx + 1}'\n")
            outfile.write(f"{content}\n")
            outfile.write("echo 'Done'\n\n")
    os.chmod(consolidated_script, 0o755)
    return consolidated_script

def create_zip_file(script_contents):
    """Creates a zip file containing the generated script contents."""
    zip_filename = "scripts.zip"
    with zipfile.ZipFile(zip_filename, 'w') as zipf:
        # Add each generated script content to the zip file
        for idx, content in enumerate(script_contents):
            script_filename = f"filtering_script_{idx + 1}.sh"
            with open(script_filename, 'w') as file:
                file.write(content)
            zipf.write(script_filename)
            os.remove(script_filename)  # Remove the file after adding to the zip


class ParamSweepApp(QWidget):
    def __init__(self):
        super().__init__()
        self.init_ui()

    def init_ui(self):
        self.setWindowTitle("VCF Tools Param Sweep")
        self.layout = QVBoxLayout()
        form_layout = QFormLayout()

        # Input fields
        self.env_name_input = QLineEdit()
        self.vcf_tools_path_input = QLineEdit()
        self.max_missing_start_input = QLineEdit("0.1")
        self.max_missing_step_input = QLineEdit("0.1")
        self.max_missing_end_input = QLineEdit("0.8")  # Max value for max_missing
        self.missingness_start_input = QLineEdit("0.1")
        self.missingness_step_input = QLineEdit("0.1")
        self.missingness_end_input = QLineEdit("0.5")  # Max value for missingness
        self.maf_start_input = QLineEdit("0.01")
        self.maf_step_input = QLineEdit("0.01")
        self.maf_end_input = QLineEdit("0.05")  # Max value for MAF

        self.env_name_input.setMinimumWidth(500)
        self.env_name_input.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)
        self.vcf_tools_path_input.setMinimumWidth(500)
        self.vcf_tools_path_input.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Expanding)

        self.divider_1 = QFrame()
        self.divider_1.setFrameShape(QFrame.HLine)
        self.divider_1.setFrameShadow(QFrame.Sunken)

        # Max Missing Layout (Start, Step, End)
        self.max_missing_label = QHBoxLayout()
        self.max_missing_label.addWidget(QLabel("Max Missing:"))
        self.max_missing_layout = QHBoxLayout()
        self.max_missing_layout.addWidget(QLabel("Start"))
        self.max_missing_layout.addWidget(self.max_missing_start_input)
        self.max_missing_layout.addWidget(QLabel("Step"))
        self.max_missing_layout.addWidget(self.max_missing_step_input)
        self.max_missing_layout.addWidget(QLabel("End"))
        self.max_missing_layout.addWidget(self.max_missing_end_input)

        self.divider_2 = QFrame()
        self.divider_2.setFrameShape(QFrame.HLine)
        self.divider_2.setFrameShadow(QFrame.Sunken)

        # Missingness Layout (Start, Step, End)
        self.missingness_label = QHBoxLayout()
        self.missingness_label.addWidget(QLabel("Missingness:"))
        self.missingness_layout = QHBoxLayout()
        self.missingness_layout.addWidget(QLabel("Start"))
        self.missingness_layout.addWidget(self.missingness_start_input)
        self.missingness_layout.addWidget(QLabel("Step"))
        self.missingness_layout.addWidget(self.missingness_step_input)
        self.missingness_layout.addWidget(QLabel("End"))
        self.missingness_layout.addWidget(self.missingness_end_input)

        self.divider_3 = QFrame()
        self.divider_3.setFrameShape(QFrame.HLine)
        self.divider_3.setFrameShadow(QFrame.Sunken)

        # MAF Layout (Start, Step, End)
        self.maf_label = QHBoxLayout()
        self.maf_label.addWidget(QLabel("MAF:"))
        self.maf_layout = QHBoxLayout()
        self.maf_layout.addWidget(QLabel("Start"))
        self.maf_layout.addWidget(self.maf_start_input)
        self.maf_layout.addWidget(QLabel("Step"))
        self.maf_layout.addWidget(self.maf_step_input)
        self.maf_layout.addWidget(QLabel("End"))
        self.maf_layout.addWidget(self.maf_end_input)
    
        self.divider_4 = QFrame()
        self.divider_4.setFrameShape(QFrame.HLine)
        self.divider_4.setFrameShadow(QFrame.Sunken)

        # Add the input layouts to the form layout
        form_layout.addRow("Environment Directory:", self.env_name_input)
        form_layout.addRow("VCF Tools Path:", self.vcf_tools_path_input)

        form_layout.addRow(self.divider_1)
        form_layout.addRow(self.max_missing_label)
        form_layout.addRow(self.max_missing_layout)
        form_layout.addRow(self.divider_2)
        form_layout.addRow(self.missingness_label)
        form_layout.addRow(self.missingness_layout)
        form_layout.addRow(self.divider_3)
        form_layout.addRow(self.maf_label)
        form_layout.addRow(self.maf_layout)
        form_layout.addRow(self.divider_4)

        # Run Button with cerulean color
        self.run_button = QPushButton("Generate Scripts")
        self.run_button.setStyleSheet(
            "background-color: #007ba7; color: white; border-radius: 2px; padding: 2px 15px;"
        )
        self.run_button.clicked.connect(self.run_param_sweep)

        # Status Label
        self.status_label = QLabel("")

        # Add the form and button to the layout
        self.layout.addLayout(form_layout)
        self.layout.addWidget(self.run_button)
        self.layout.addWidget(self.status_label)
        self.setLayout(self.layout)

        self.setFixedSize(self.sizeHint())

    def run_param_sweep(self):
        try:
            # Get user inputs
            env_name = self.env_name_input.text()
            vcf_tools_path = self.vcf_tools_path_input.text()
            max_missing_start = float(self.max_missing_start_input.text())
            max_missing_step = float(self.max_missing_step_input.text())
            max_missing_end = float(self.max_missing_end_input.text()) 
            missingness_start = float(self.missingness_start_input.text())
            missingness_step = float(self.missingness_step_input.text())
            missingness_end = float(self.missingness_end_input.text()) 
            maf_start = float(self.maf_start_input.text())
            maf_step = float(self.maf_step_input.text())
            maf_end = float(self.maf_end_input.text()) 

            # Generate the shell script contents
            script_contents = []
            max_missing = max_missing_start
            while max_missing <= max_missing_end:
                missingness = missingness_start
                while missingness <= missingness_end:
                    maf = maf_start
                    while maf <= maf_end:
                        script_content = generate_script_content(env_name, vcf_tools_path, max_missing, missingness, maf)
                        script_contents.append(script_content)
                        maf += maf_step
                    missingness += missingness_step
                max_missing += max_missing_step

            # Create consolidated script of all the shell commands
            consolidated_script = create_consolidated_script(script_contents)

            # Save the consolidated script separately
            self.status_label.setText("Consolidated script and zip file are being generated...")

            # Create zip file with all otherwide individual script contents
            create_zip_file(script_contents)

            self.status_label.setText(f"Scripts and zip file generated successfully! Consolidated script: {consolidated_script}")
        except Exception as e:
            self.status_label.setText(f"Error: {str(e)}")


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = ParamSweepApp()
    window.show()
    sys.exit(app.exec_())
