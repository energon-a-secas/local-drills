## Request

Create a CloudFormation template that exports the following values:
- `VpcId` from an existing VPC
- `PublicSubnets` as a comma-separated list of public subnet IDs
- `PrivateSubnets` as a comma-separated list of private subnet IDs

These exported values will be used by other stacks to deploy resources in the correct network configuration.

## Verification

1. Deploy the CloudFormation template
2. Verify the exports are available using:
   ```bash
   aws cloudformation list-exports
   ```
3. Confirm each export contains the correct values by checking against your VPC configuration in the AWS Console

## Solution

[Solution](../solutions/cfn-01-export-values.md)