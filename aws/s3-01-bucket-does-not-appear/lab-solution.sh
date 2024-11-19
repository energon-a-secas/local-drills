touch dev-test.txt
aws s3 cp dev-test.txt s3://sample-bucket/ --sse AES256
