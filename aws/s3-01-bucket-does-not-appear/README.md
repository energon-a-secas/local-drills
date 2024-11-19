
# Problem

I can't upload a damn thing to the S3 bucket neither locally or from the App.

I'm testing with the following command:

```
touch dev-test.txt

aws s3api put-object --bucket sample-bucket --key dev-test.txt --body ./dev-test.txt
```

## Solution

Maybe here?

## Preventative Measures

Be mindful.