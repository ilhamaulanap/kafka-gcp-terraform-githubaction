gcp_project               = "de-datapipeline"
gcp_region                = "asia-southeast1 "

gcs_bucket_name           = "de-zoomcamp-datasets-projects"
gcs_bucket_location       = "ASIA"

airflow_instance_name     = "de-projects-airflow"
airflow_instance_type     = "e2-standard-2"
airflow_instance_zone     = "asia-southeast1-b"
airflow_disk_size         = 50

kafka_instance_name     = "de-projects-kafka"
kafka_instance_type     = "e2-standard-2"
kafka_instance_zone     = "asia-southeast1-b"
kafka_disk_size         = 50


compute_instance_image    = "ubuntu-os-cloud/ubuntu-2004-lts"

bigquery_dataset_id       = "de_zoomcamp_datasets"

# change this to path of your gcp key files if you want to run this repo locally
credentials               = "key.json" # create a secret in github and add the gcp key 