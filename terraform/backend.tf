#create backend-bucket to stroe terraform state files
terraform {
  backend "gcs" {
    bucket         = var.backend_bucket
    prefix         = "/terraform.tfstate"
  }
}
