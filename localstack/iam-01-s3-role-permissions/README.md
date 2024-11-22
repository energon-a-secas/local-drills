## Problem

You have been granted full access to work with a specific S3 bucket named `project-assets-2024`, but when you log into the AWS Console, you can't see any buckets in the S3 service. However, you can directly access the bucket using the AWS CLI:

    awslocal s3 ls s3://project-assets-2024
    awslocal s3 cp test.txt s3://project-assets-2024/

### Context
- You have full access to the bucket `project-assets-2024`
- You can perform all operations on the bucket via CLI
- You're testing in a LocalStack environment
- The bucket exists and contains files

### Validation
Your solution should:
- Allow viewing the bucket in the S3 console:
    ```bash
    # This should work
    awslocal s3 ls
    ```
- Maintain existing bucket permissions
- Follow security best practices
- Work in the LocalStack environment

## [Solution](../solutions/iam-01-s3-role-permissions.md)