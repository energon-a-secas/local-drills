#!/bin/bash

# Deploy the CloudFormation stack
STACK_NAME="r53-delegation-exercise"

echo "Deploying CloudFormation stack..."
awslocal cloudformation create-stack \
    --stack-name $STACK_NAME \
    --template-body file://template.yaml

echo "Waiting for stack creation to complete..."
awslocal cloudformation wait stack-create-complete \
    --stack-name $STACK_NAME

# Get the outputs
echo "Getting stack outputs..."
PARENT_ZONE_ID=$(awslocal cloudformation describe-stacks \
    --stack-name $STACK_NAME \
    --query 'Stacks[0].Outputs[?OutputKey==`ParentZoneId`].OutputValue' \
    --output text)

CHILD_ZONE_ID=$(awslocal cloudformation describe-stacks \
    --stack-name $STACK_NAME \
    --query 'Stacks[0].Outputs[?OutputKey==`ChildZoneId`].OutputValue' \
    --output text)

CHILD_NS=$(awslocal cloudformation describe-stacks \
    --stack-name $STACK_NAME \
    --query 'Stacks[0].Outputs[?OutputKey==`ChildZoneNameServers`].OutputValue' \
    --output text)

echo "Setup complete!"
echo "Parent Zone ID: $PARENT_ZONE_ID"
echo "Child Zone ID: $CHILD_ZONE_ID"
echo "Child Zone Nameservers: $CHILD_NS"