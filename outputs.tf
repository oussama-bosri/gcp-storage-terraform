output "bucket_url" {
  value = "gs://${google_storage_bucket.backend_bucket.name}"
}
