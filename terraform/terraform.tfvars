backend_bucket          = "de-zoomcamp-terraform-state-backend"

gcp_project               = "de-datapipeline"
gcp_region                = "asia-southeast1 "

compute_instance_image    = "ubuntu-os-cloud/ubuntu-2004-lts"

kafka_instance_name     = "de-projects-kafka"
kafka_instance_type     = "e2-standard-2"
kafka_instance_zone     = "asia-southeast1-b"
kafka_port              = "9092"
kafka_control_port      = "9021"
kafka_disk_size         = 50


# change this to path of your gcp key files if you want to run this repo locally
#credentials               = "key.json" # create a secret in github and add the gcp key 