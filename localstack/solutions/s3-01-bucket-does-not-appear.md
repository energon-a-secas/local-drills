# S3 Bucket Upload Encryption Solution

## The Issue
The bucket policy requires server-side encryption (SSE) with AES256 for all uploads. The policy enforces this through two conditions:
1. Denies uploads that don't specify AES256 encryption
2. Denies uploads that don't include any encryption headers

## Solution

Add the server-side encryption parameter to your upload command:

    awslocal s3api put-object \
        --bucket secure-uploads \
        --key test.txt \
        --body ./test.txt \
        --server-side-encryption AES256

## Understanding Server-Side Encryption

Server-side encryption (SSE) in S3 provides automatic encryption of data at rest. There are three types:
- SSE-S3 (AES256): S3-managed keys
- SSE-KMS: AWS KMS-managed keys
- SSE-C: Customer-provided keys

In this case, the bucket policy requires SSE-S3 (AES256).

## Testing in LocalStack

1. First, verify the bucket exists:

    awslocal s3api list-buckets

2. Try uploading without encryption (this will fail):

    awslocal s3api put-object \
        --bucket secure-uploads \
        --key test.txt \
        --body ./test.txt

3. Upload with required encryption (this will succeed):

    awslocal s3api put-object \
        --bucket secure-uploads \
        --key test.txt \
        --body ./test.txt \
        --server-side-encryption AES256

4. Verify the upload and encryption:

    awslocal s3api head-object \
        --bucket secure-uploads \
        --key test.txt

You should see the encryption information in the response:
    
    {
        ...
        "ServerSideEncryption": "AES256",
        ...
    }

## Alternative Solutions

Using AWS CLI S3 Command:

    awslocal s3 cp test.txt s3://secure-uploads/ \
        --server-side-encryption AES256

Using AWS SDK (Python example):

    import boto3
    s3 = boto3.client('s3', endpoint_url='http://localhost:4566')
    
    with open('test.txt', 'rb') as file:
        s3.put_object(
            Bucket='secure-uploads',
            Key='test.txt',
            Body=file,
            ServerSideEncryption='AES256'
        )

## Common Mistakes
1. Forgetting to include the encryption parameter
2. Using incorrect encryption type (e.g., 'aws:kms' instead of 'AES256')
3. Misspelling the server-side-encryption parameter
4. Assuming default encryption is sufficient

## Best Practices
1. Always use encryption for sensitive data
2. Consider using bucket default encryption
3. Use bucket policies to enforce encryption
4. Regularly audit S3 bucket encryption settings
5. Document encryption requirements in your team's guidelines

## Additional Resources
- [S3 Server-Side Encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html)
- [S3 Default Encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucket-encryption.html)
- [S3 Encryption with AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/s3api/put-object.html#examples)