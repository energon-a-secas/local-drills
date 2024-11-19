awslocal cloudformation create-stack \
  --stack-name VariableStack \
  --template-body file://template-2.yaml \
  --parameters \
    ParameterKey=Environment,ParameterValue=staging \
    ParameterKey=InstanceType,ParameterValue=t2.small \
    ParameterKey=KeyName,ParameterValue=my-key-pair

awslocal cloudformation create-stack \
  --stack-name VARIABLES \
  --template-body file://template-1.yaml

awslocal cloudformation create-stack \
  --stack-name SQS-CREATE \
  --template-body file://template-2.yaml