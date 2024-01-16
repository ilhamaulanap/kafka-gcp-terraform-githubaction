provider "google" {
  project     = var.gcp_project
  region      = var.gcp_region
}

##check bucket for terraform state

data "google_storage_bucket" "existing_bucket" {
  name = var.gcs_bucket_terraform
  ignore_errors = true
}


resource "google_storage_bucket" "terraform_backend" {
  count         = length(data.google_storage_bucket.existing_bucket) > 0 ? 0 : 1
  name          = var.gcs_bucket_terraform
  location      = var.gcs_bucket_location
  force_destroy = true
}

