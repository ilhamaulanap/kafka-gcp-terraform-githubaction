backend_bucket=$1
gcs_bucket_location=$2

#check if the bucket already exists, if not create new
if ! gsutil ls -b gs://${backend_bucket}; then
    gsutil mb -l ${gcs_bucket_location} gs://${backend_bucket}
    echo "Bucket created successfully!"
else
    echo "Bucket already exists."
fi