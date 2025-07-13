# GCP Storage Bucket with Service Account (Terraform)

This Terraform project creates:
- A GCP Cloud Storage bucket for backend file storage
- A service account with permission to access that bucket
- Remote backend state stored in a dedicated bucket

## 🧰 Prerequisites

- Google Cloud SDK installed (`gcloud`)
- Terraform ≥ 1.0
- GCP project with billing enabled

