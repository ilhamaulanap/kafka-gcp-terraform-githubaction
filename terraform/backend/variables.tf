variable "gcp_project" {
  description = "The ID of your GCP project"
  type        = string
}


variable "gcs_bucket_terraform" {
  description = "The name of the GCS bucket"
  type        = string
}

variable "gcs_bucket_location" {
  description = "The location of the GCS bucket"
  type        = string
}

variable "gcp_region" {
  description = "The GCP region for resources"
  type        = string
}
