# Terraform Hands-On Labs | AWS & DevOps

A practical learning repository documenting my journey of learning **Terraform, AWS, Infrastructure as Code (IaC), and OpenTofu** through hands-on exercises and real-world infrastructure implementations.

This repository contains daily practical exercises, Terraform configurations, reusable modules, AWS resource management, automation scripts, and infrastructure deployment examples.

## 🚀 Technologies & Tools

- **Infrastructure as Code:** Terraform, OpenTofu
- **Cloud Platform:** Amazon Web Services (AWS)
- **Languages:** HCL, Python, Bash
- **Version Control:** Git & GitHub
- **AWS Services:** EC2, S3, IAM, VPC, RDS, Lambda, Security Groups, EventBridge
- **Operating Systems:** Linux, Windows
- **Tools:** VS Code, AWS CLI, Git Bash

## 📚 Daily Learning & Practical Exercises

### Day 1 – Basic Configuration Files
- Terraform configuration files
- Provider configuration
- Basic resource creation

### Day 2 – All Configuration Files
- Terraform project structure
- Variables and outputs
- Main configuration files

### Day 3 – State File
- Terraform state management
- Understanding terraform.tfstate
- State file operations

### Day 4 – State Backend
- Terraform backend configuration
- Remote state management
- Backend practical exercises

### Day 5 – AWS Resource Management
- Target Resources
- Custom Network Creation
- Lifecycle Rules
- Amazon RDS Database

### Day 6 – Terraform Modules & IAM
- EC2 Modules
- IAM Roles
- Module Calling
- S3 Modules

### Day 7 – Advanced Module Concepts
- Child and Root Modules
- Dependency Blocks

### Day 8 – Provisioners
- Terraform Provisioners
- Remote and Local Provisioning concepts

### Day 9 – Advanced Terraform
- Lambda Practice
- RDS Provisioner
- Terraform Workspace
- Terraform Import

### Day 10 – Advanced Configuration
- Alias Providers & AWS Profiles
- Data Sources
- Lambda Event Scheduling
- Local Values
- EC2 User Data

### Day 11 – Terraform Expressions & Security Groups
- Count Conditions
- Count and For Each
- Dynamic Security Group Rules

### Day 12 – OpenTofu
- OpenTofu Installation
- OpenTofu Configuration
- Terraform to OpenTofu Migration
- OpenTofu Commands and Compatibility

## 📂 Repository Structure

```text
Terraform-hands-on-labs/
│
├── Day-1-basic-config-files/
├── Day-2-All-configuration-files/
├── Day-3-Statefile/
├── Day-4-Statebackend/
│
├── Day-5-Target-resource/
├── Day-5-custom-nw-creation/
├── Day-5-lifecycle-rules/
├── Day-5-RDS-db/
│
├── Day-6-EC2-Module/
├── Day-6-IAM-Role/
├── Day-6-Module-Calling/
├── Day-6-S3-Module/
│
├── Day-7-Child-Root-Module/
├── Day-7-Dependency-Block/
│
├── Day-8-Provisioners/
│
├── Day-9-Lambda-practice/
├── Day-9-Provisioner-RDS/
├── Day-9-Terraform-Workspace/
├── Day-9-Terraform-import/
│
├── Day-10-alias-providers-profile/
├── Day-10-data-source/
├── Day-10-lambda-event-schedule/
├── Day-10-locals/
├── Day-10-userdata/
│
├── Day-11-Dynamic-SG-Rules/
├── Day-11-count-conditions/
├── Day-11-count-foreach/
│
├── Day-12-OpenTofu/
├── Day-12-migrate-terraform-opentofu/
│
├── .gitignore
└── README.md
```

## ⚙️ Installation & Setup

### 1. Install Terraform

Download Terraform from:

https://developer.hashicorp.com/terraform/install

Verify installation:

```bash
terraform version
```

### 2. Install OpenTofu

Download OpenTofu from:

https://opentofu.org/docs/intro/install/

Verify installation:

```bash
tofu version
```

### 3. Configure AWS CLI

```bash
aws configure
```

Configure your AWS Access Key, Secret Key, and default region.

Verify AWS authentication:

```bash
aws sts get-caller-identity
```

## 💻 Basic Terraform Commands

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

## 🔧 OpenTofu Commands

```bash
tofu init
tofu fmt
tofu validate
tofu plan
tofu apply
tofu destroy
```

## 🎯 Learning Objectives

- Understand Infrastructure as Code (IaC).
- Automate AWS infrastructure provisioning.
- Create and manage AWS resources using Terraform.
- Understand Terraform state and remote backends.
- Implement reusable Terraform modules.
- Manage IAM roles and permissions.
- Automate EC2 configuration using User Data.
- Schedule AWS Lambda functions using EventBridge.
- Implement dynamic blocks, count, and for_each.
- Understand Terraform and OpenTofu compatibility.

## 📌 Important Notes

- Each day's folder contains its respective practical configuration files.
- AWS credentials are managed locally and should never be committed to GitHub.
- Replace example AMI IDs, VPC IDs, subnet IDs, and other environment-specific values before deployment.
- Always review the Terraform plan before applying changes.
- Destroy practice resources after completion to avoid unnecessary AWS charges.
- State files and sensitive information should not be pushed to public repositories.

## 📈 Learning Progress

| Day | Topic | Status |
|---|---|---|
| Day 1–9 | Terraform Fundamentals & Advanced Concepts | Completed |
| Day 10 | Advanced Configuration & Automation | Completed |
| Day 11 | Expressions & Dynamic Security Groups | Completed |
| Day 12 | OpenTofu & Migration | Completed |

## 👩‍💻 Author

**Sehrish Fatema**

GitHub: https://github.com/sehrishf16

---

⭐ If you find this repository useful, feel free to explore the practical exercises and learn along with me!

*Learning by building. Building by practicing. Growing through DevOps.*
