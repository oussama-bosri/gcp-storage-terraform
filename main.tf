provider "google" {
  project = var.project_id
  region  = var.region
}

# GCS Bucket for backend app
resource "google_storage_bucket" "backend_bucket" {
  name                        = var.bucket_name
  location                    = var.location
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30
    }
  }
}

# Service Account for backend app
resource "google_service_account" "backend_sa" {
  account_id   = "backend-app-sa"
  display_name = "Backend App Service Account"
}

# IAM Binding: allow SA access to bucket
resource "google_storage_bucket_iam_member" "sa_bucket_access" {
  bucket = google_storage_bucket.backend_bucket.name
  role   = "roles/storage.objectAdmin"
  member = "serviceAccount:${google_service_account.backend_sa.email}"
}
