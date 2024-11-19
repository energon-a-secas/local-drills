

I can't upload a damn thing to the S3 bucket for some reason neither locally or from the App.

I'm testing with the following command:


```
touch dev-test.txt

aws s3api put-object --bucket sample-bucket --key dev-test.txt --body ./dev-test.txt
```

# awslocal s3 cp dev-test.txt s3://sample-bucket/
