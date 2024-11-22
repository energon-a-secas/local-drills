## Problem

I can't upload a damn thing to the S3 bucket neither locally or from the App.

I'm testing with the following command:

```
touch test.txt

aws s3api put-object --bucket secure-uploads --key test.txt --body ./test.txt
```

## Validation
Your solution should:
- Successfully upload files to the bucket

## [Solution](../solutions/s3-01-bucket-does-not-appear.md)