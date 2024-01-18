#create backend-bucket to stroe terraform state files
terraform {
  backend "gcs" {
    bucket         = "de-zoomcamp-terraform-state-backend"
    prefix         = "/terraform.tfstate"
  }
}
