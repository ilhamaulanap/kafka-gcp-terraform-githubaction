variable "gcp_project" {
  description = "The ID of your GCP project"
  type        = string
}

variable "credentials" {
    description = "Credential for cloud provisioning"
    type = string
    default = "credentials/key.json"
}

variable "gcs_bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}

variable "gcs_bucket_location" {
  description = "The location of the GCS bucket"
  type        = string
}

variable "compute_instance_name" {
  description = "The name of the Compute Engine instance"
  type        = string
}

variable "compute_instance_type" {
  description = "The machine type of the Compute Engine instance"
  type        = string
}

variable "compute_instance_zone" {
  description = "The zone of the Compute Engine instance"
  type        = string
}

variable "compute_instance_image" {
  description = "The image for the Compute Engine instance"
  type        = string
}

variable "bigquery_dataset_id" {
  description = "The ID of the BigQuery dataset"
  type        = string
}

variable "gcp_region" {
  description = "The GCP region for resources"
  type        = string
}
