# 🌩️ Terraform Practice Projects  

![Terraform](https://img.shields.io/badge/Terraform-v1.9+-623CE4?logo=terraform&logoColor=white&style=for-the-badge)
![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws&logoColor=white&style=for-the-badge)
![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04+-E95420?logo=ubuntu&logoColor=white&style=for-the-badge)
![Git](https://img.shields.io/badge/Git-Version--Controlled-F05032?logo=git&logoColor=white&style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

> 🧠 A personal DevOps lab to master **Terraform + AWS** using **Ubuntu (WSL)**, **VS Code**, and **Git** — following real-world infrastructure-as-code practices.

---

## 🧱 Project Overview  

This repository contains my **Terraform learning projects**, built and tested locally on **Ubuntu (WSL)**.  
Each subfolder demonstrates different AWS resource automation using Terraform — from simple IAM and S3 setups to complex networking.

---

## ⚙️ Development Environment  

| Tool | Description |
|------|--------------|
| 🐧 **Ubuntu (WSL)** | Running Terraform & AWS CLI in Linux environment inside Windows |
| 🧰 **Terraform** | Infrastructure as Code (IaC) tool for automating cloud resources |
| ☁️ **AWS CLI** | Command-line tool for AWS authentication and management |
| 💻 **VS Code** | Code editor with *Terraform* and *Remote - WSL* extensions |
| 🔧 **Git** | Version control for tracking Terraform code changes |

---

## 📂 Folder Structure  

```bash
/home/arun/
├── .aws/                       # AWS CLI credentials (config + credentials)
├── devops/
│   └── terraform/
│       ├── AWS-IAM/            # IAM user/group/policy examples
│       ├── AWS-S3/             # S3 bucket automation examples
│       ├── AWS-EC2/            # EC2 instance creation examples
│       └── README.md           # This documentation
