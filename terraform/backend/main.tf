provider "google" {
  project     = var.gcp_project
  region      = var.gcp_region
}

## bucker for terraform state

resource "google_storage_bucket" "terraform_backend" {
  name          = var.gcs_bucket_terraform
  location      = var.gcs_bucket_location
  force_destroy = true
}
