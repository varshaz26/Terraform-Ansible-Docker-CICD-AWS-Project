 ### Infrastructure Automation & Deployment Using Terraform, Ansible & Docker

InfraDeploy is a DevOps-focused project to **provision, configure, and deploy applications** using modern infrastructure automation tools.  
The system integrates **Terraform, Ansible, Docker**, and **GitHub Actions** for CI/CD to ensure smooth and repeatable deployments.

---

## 📌 Project Overview

This repository contains:

- **Terraform** scripts to provision cloud infrastructure
- **Ansible** playbooks for configuration management
- **Docker** files to containerize applications
- **GitHub Actions** workflow for CI/CD automation

The project enables full-stack infrastructure automation, from provisioning resources to deploying containerized applications.

---

## 🚀 Features

- **Infrastructure Provisioning:** Declarative creation and management of cloud resources using Terraform  
- **Configuration Management:** Automate installation and orchestration with Ansible  
- **Containerization:** Docker images ensure portability and consistency across environments  
- **CI/CD Automation:** GitHub Actions pipeline for linting, testing, building, and deployment  

---

## 🛠️ Tech Stack

- **Infrastructure as Code:** Terraform  
- **Configuration Management:** Ansible  
- **Containerization:** Docker / Docker Compose  
- **CI/CD:** GitHub Actions  
- **Cloud Providers:** AWS / Azure / GCP (as configured in `main.tf`)  

---

## 📁 Repository Contents

| File / Folder | Description |
|---------------|-------------|
| `.github/workflows/cicd_pipeline.yml` | GitHub Actions workflow automating build, test, and deployment |
| `app.py` | Main application script or placeholder for application code |
| `dockerfile` | Dockerfile to containerize the application |
| `docker.yml` | Docker Compose file for multi-container applications |
| `hosts.ini` | Ansible inventory file listing target hosts |
| `main.tf` | Terraform configuration to provision cloud resources |

---

## ▶️ Prerequisites

- Terraform v1.0+  
- Ansible v2.9+  
- Docker v20+  
- GitHub account for Actions workflows  
- Access to cloud provider account (AWS/Azure/GCP)  

---

## ▶️ Setup and Usage

### Terraform

Initialize Terraform workspace:

```bash
terraform init

Preview infrastructure changes:

```bash
terraform plan

Apply the infrastructure changes:

```bash
terraform apply

### Ansible

Verify and edit hosts.ini to specify target hosts.

Run Ansible playbook:

```bash
ansible-playbook -i hosts.ini site.yml

### Docker

Build the Docker image:

```bash
docker build -t your-image-name .

Run the Docker container:

```bash
docker run -p 8000:8000 your-image-name

### CI/CD Pipeline

The GitHub Actions workflow `.github/workflows/cicd_pipeline.yml` automates the following steps:

```bash
# Lint and test the application code

# Build the Docker image
docker build -t your-image-name .

# Deploy the containerized application
docker run -p 8000:8000 your-image-name
