BUCKET_NAME=sample-bucket
AWS_COMMAND=awslocal

$AWS_COMMAND s3api create-bucket --bucket $BUCKET_NAME
$AWS_COMMAND s3api put-bucket-policy --bucket $BUCKET_NAME --policy file://additionals/bucket-policy.json
