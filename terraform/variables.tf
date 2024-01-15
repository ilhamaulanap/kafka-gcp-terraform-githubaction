variable "gcp_project" {
  description = "The ID of your GCP project"
  type        = string
}

variable "gcp_region" {
  description = "The GCP region for resources"
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

variable "airflow_instance_name" {
  description = "The name of the airflow Engine instance"
  type        = string
}

variable "airflow_instance_type" {
  description = "The machine type of the airflow Engine instance"
  type        = string
}

variable "airflow_instance_zone" {
  description = "The zone of the airflow Engine instance"
  type        = string
}

variable "airflow_disk_size" {
  description = "The airflow compute engine disk size"
  type      = number
}
 

variable "kafka_instance_name" {
  description = "The name of the kafka cluster Engine instance"
  type        = string
}

variable "kafka_instance_type" {
  description = "The machine type of the kafka cluster Engine instance"
  type        = string
}

variable "kafka_instance_zone" {
  description = "The zone of the kafka cluster Engine instance"
  type        = string
}

variable "kafka_disk_size" {
  description = "The kafka compute engine disk size"
  type      = number
}

variable "kafka_ports" {
  description = "kafka ports"
  default = "9092"
  type = string
}

variable "kafka_cp_ports" {
  description = "kafka ports"
  default = "9021"
  type = string
}

variable "compute_instance_image" {
  description = "The image for the Compute Engine instance"
  type        = string
}
 
variable "prod_bigquery_dataset_id" {
  description = "prod BigQuery dataset"
  type        = string
}


variable "staging_bigquery_dataset_id" {
  description = "staging bigquery"
  type        = string
}

variable "network" {
  description = "Network for your instance/cluster"
  default     = "default"
  type        = string
}