# 1. Project Title: Secure Azure Storage Infrastructure

## 2. Project Overview
This project demonstrates the creation of a Secure Azure Storage Account using Terraform. The primary focus is ensuring that the infrastructure meets high security standards through automated scanning and auditing.

## 3. Key Features
* **Secure Storage:** Implementation of Azure Storage with security best practices.
* **Security Scanning:** The infrastructure code is audited using Checkov to identify potential misconfigurations.
* **Compliance as Code:** Ensuring the storage setup adheres to security benchmarks.

## 4. Technical Workflow
* **Provisioning:** Using Terraform to define the Storage Account and its containers.
* **Security Audit:** Running Checkov to scan the .tf files.
* **Validation:** Ensuring the configuration is Valid and follows the least privilege principle.

## 5. Skills Demonstrated
* **Infrastructure as Code (IaC):** Terraform CLI, fmt, and validate.
* **Cloud Security:** Azure Resource Management and Storage Security.
* **Security Tooling:** Checkov Static Code Analysis.

## 6. How to Run
1. `terraform init`
2. `terraform validate`
3. `checkov -d .`
