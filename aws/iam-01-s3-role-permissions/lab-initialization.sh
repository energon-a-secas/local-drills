awslocal iam create-role --role-name S3RestrictedRole --assume-role-policy-document file://policies/trust-policy.json
awslocal iam put-role-policy --role-name S3RestrictedRole --policy-name S3RestrictedPolicy --policy-document file://policies/s3-policy.json
