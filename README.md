# GCP Storage Bucket with Service Account (Terraform)

This Terraform project creates:
- A GCP Cloud Storage bucket for backend file storage
- A service account with permission to access that bucket
- Remote backend state stored in a dedicated bucket

## 🧰 Prerequisites

- Google Cloud SDK installed (`gcloud`)
- Terraform ≥ 1.0
- GCP project with billing enabled

## 🚀 Usage

### 1. Clone & Configure

Edit `terraform.tfvars`:

```hcl
project_id  = "devops-465809"
bucket_name = "backend-app-storage-devops"
