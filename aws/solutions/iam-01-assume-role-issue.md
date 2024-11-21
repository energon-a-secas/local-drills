# Assume Role with External ID Solution

## The Issue
The role's trust policy requires an External ID for additional security, but it wasn't provided in the assume role command.

## Trust Policy of the Role

    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Principal": {
                    "AWS": "arn:aws:iam::000000000000:root"
                },
                "Action": "sts:AssumeRole",
                "Condition": {
                    "StringEquals": {
                        "sts:ExternalId": "MyExternalId123"
                    }
                }
            }
        ]
    }

## Solution

Add the `--external-id` parameter to your assume role command:

    awslocal sts assume-role \
        --role-arn arn:aws:iam::000000000000:role/S3RestrictedRole \
        --role-session-name TestSession \
        --external-id MyExternalId123

## Understanding External ID

The External ID is a security feature that helps prevent the "confused deputy" problem. It's commonly used when:
- A third party needs to access your AWS resources
- You want an additional layer of security beyond just the role ARN
- You're setting up cross-account access

## Testing in LocalStack

1. First, create the role with the trust policy:

    awslocal iam create-role \
        --role-name S3RestrictedRole \
        --assume-role-policy-document file://trust-policy.json

2. Then try assuming the role without External ID (this will fail):

    awslocal sts assume-role \
        --role-arn arn:aws:iam::000000000000:role/S3RestrictedRole \
        --role-session-name TestSession

3. Finally, assume the role with External ID (this will succeed):

    awslocal sts assume-role \
        --role-arn arn:aws:iam::000000000000:role/S3RestrictedRole \
        --role-session-name TestSession \
        --external-id MyExternalId123

## Common Mistakes
1. Forgetting to include the External ID
2. Using incorrect External ID value
3. Mismatched External ID in trust policy and assume role command
4. Not checking the trust policy when troubleshooting assume role issues

## Additional Resources
- [AWS Documentation on External ID](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-user_externalid.html)
- [Understanding the Confused Deputy Problem](https://docs.aws.amazon.com/IAM/latest/UserGuide/confused-deputy.html)