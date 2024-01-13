terraform {
  backend "gcs" {
    bucket         = var.gcs_bucket_terraform
    prefix         = "/terraform.tfstate"
    credentials    = var.credentials
  }
}
