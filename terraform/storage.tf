resource "google_storage_bucket" "demo-bucket" {
  name          = "storage_bucket-gcs-demo"
  location      = var.region
  force_destroy = true

  soft_delete_policy {
    retention_duration_seconds = 0
  }
}

resource "google_storage_bucket_object" "demo-object" {
  bucket     = google_storage_bucket.demo-bucket.name
  name       = "demo-object"
  content    = module.api1.url
  depends_on = [module.api1]
}
