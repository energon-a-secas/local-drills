
```YAML
AWSTemplateFormatVersion: '2010-09-01'
Description: 'Exports VPC and Subnet IDs for use in other stacks'

Parameters:
  VpcId:
    Type: String
    Description: ID of the existing VPC
    Default: vpc-123456  # LocalStack default VPC

  PublicSubnet1:
    Type: String
    Description: ID of the first public subnet
    Default: subnet-public1  # LocalStack example

  PublicSubnet2:
    Type: String
    Description: ID of the second public subnet
    Default: subnet-public2  # LocalStack example

  PrivateSubnet1:
    Type: String
    Description: ID of the first private subnet
    Default: subnet-private1  # LocalStack example

  PrivateSubnet2:
    Type: String
    Description: ID of the second private subnet
    Default: subnet-private2  # LocalStack example

Resources:
  # Empty resource section as we're only creating exports

Outputs:
  VpcId:
    Description: VPC ID
    Value: !Ref VpcId
    Export:
      Name: !Sub ${AWS::StackName}-VpcId

  PublicSubnets:
    Description: List of Public Subnets
    Value: !Join [',', [!Ref PublicSubnet1, !Ref PublicSubnet2]]
    Export:
      Name: !Sub ${AWS::StackName}-PublicSubnets

  PrivateSubnets:
    Description: List of Private Subnets
    Value: !Join [',', [!Ref PrivateSubnet1, !Ref PrivateSubnet2]]
    Export:
      Name: !Sub ${AWS::StackName}-PrivateSubnets
```