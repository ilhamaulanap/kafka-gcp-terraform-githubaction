terraform {
  backend "gcs" {
    bucket         = "de-zoomcamp-terraform-state-backend"
    prefix         = "/terraform.tfstate"
  }
}
