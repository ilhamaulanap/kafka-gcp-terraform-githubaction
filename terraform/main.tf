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
resource "google_compute_instance" "airflow_instance" {
  name         = var.airflow_instance_name
  machine_type = var.airflow_instance_type
  zone         = var.airflow_instance_zone

  boot_disk {
    initialize_params {
      size = var.airflow_disk_size
      image = var.compute_instance_image
    }
  }

  network_interface {
    network = "default"
    access_config {
      // This will create an external IP address for the instance
    }
  }
}

resource "google_compute_instance" "kafka_instance" {
  name         = var.kafka_instance_name
  machine_type = var.kafka_instance_type
  zone         = var.kafka_instance_zone

  boot_disk {
    initialize_params {
      size = var.kafka_disk_size
      image = var.compute_instance_image
    }
  }

  network_interface {
    network = "default"
    access_config {
      // This will create an external IP address for the instance
    }
  }
}

resource "google_compute_firewall" "port_rules" {
  project     = var.gcp_project
  name        = "kafka_broker"
  network     = var.network
  description = "Opens port 9092 in the Kafka VM"

  allow {
    protocol = "tcp"
    ports    = var.kafka_ports
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_http" {
  project     = var.gcp_project
  name        = "allow_http"
  network     = var.network
  description = "Opens port 80 in the Kafka VM"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
}


# Create a BigQuery dataset

resource "google_bigquery_dataset" "my_prod_dataset" {
  dataset_id = var.prod_bigquery_dataset_id
  project    = var.gcp_project
  delete_contents_on_destroy = true

  labels = {
    environment = "production"
  }
}

resource "google_bigquery_dataset" "my_staging_dataset" {
  dataset_id = var.staging_bigquery_dataset_id
  project    = var.gcp_project
  delete_contents_on_destroy = true

  labels = {
    environment = "staging"
  }
}


