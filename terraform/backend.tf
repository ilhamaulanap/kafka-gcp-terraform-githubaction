#create backend-bucket to stroe terraform state files
terraform {
  backend "gcs" {
    bucket         = "kafka-terraform-state-backend"
    prefix         = "/terraform.tfstate"
  }
}
