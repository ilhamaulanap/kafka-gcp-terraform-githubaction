terraform {
  backend "gcs" {
    bucket         = "DE-zoomcamp-terraform-backend"
    prefix         = "/terraform.tfstate"
    credentials    = "key.json"
  }
}
