provider "google" {
  ##credentials = var.credentials
  project     = var.gcp_project
  region      = var.gcp_region
}

resource "google_storage_bucket" "terraform_backend" {
  name          = var.gcs_bucket_terraform
  location      = var.gcs_bucket_location
  force_destroy = true
}
