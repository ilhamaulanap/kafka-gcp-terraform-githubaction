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
    default = "../credentials/key.json"
    type = string
}

variable "backend_bucket" {
  description = "The name of the GCS bucket for terraform backend"
  type        = string
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

variable "kafka_port" {
  description = "kafka ports"
  type = string
}

variable "kafka_control_port" {
  description = "kafka ports"
  type = string
}

variable "compute_instance_image" {
  description = "The image for the Compute Engine instance"
  type        = string
}
 
variable "network" {
  description = "Network for your instance/cluster"
  default     = "default"
  type        = string
}