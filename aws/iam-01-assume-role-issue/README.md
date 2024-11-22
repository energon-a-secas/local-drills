## Problem

I can't assume the role S3RestrictedRole. I'm using the following command:

```
awslocal sts assume-role --role-arn arn:aws:iam::000000000000:role/S3RestrictedRole --role-session-name TestSession
```

### Context
- The role exists and has the correct trust relationship
- The user has permissions to assume roles
- The command is being executed in LocalStack environment

### Hint
Check the trust policy of the role. Some roles require additional security measures beyond just the ARN and session name.

## Solution

[Solution](../solutions/iam-01-assume-role-issue.md)