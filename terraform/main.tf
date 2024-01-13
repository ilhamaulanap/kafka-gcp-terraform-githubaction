provider "google" {
  credentials = var.credentials
  project     = var.gcp_project
  region      = var.gcp_region
}

# Create a GCS bucket
resource "google_storage_bucket" "my_bucket" {
  name          = var.gcs_bucket_name
  location      = var.gcs_bucket_location
  force_destroy = true
}

# Create a Google Compute Engine instance
resource "google_compute_instance" "my_instance" {
  name         = var.compute_instance_name
  machine_type = var.compute_instance_type
  zone         = var.compute_instance_zone

  boot_disk {
    initialize_params {
      image = var.compute_instance_image
    }
  }

  network_interface {
    network = "default"
  }
}

# Create a BigQuery dataset
resource "google_bigquery_dataset" "my_dataset" {
  dataset_id = var.bigquery_dataset_id
  project    = var.gcp_project

  labels = {
    environment = "production"
  }
}
