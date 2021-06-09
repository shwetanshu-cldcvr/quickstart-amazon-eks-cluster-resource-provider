# AWSQS::EKS::Cluster

An AWS CloudFormation resource provider for modelling Amazon EKS clusters. 
It provides some additional functionality to the native `AWS::EKS::Cluster` resource type:

* Manage `aws-auth` ConfigMap from within CloudFormation.
* Support for `EndpointPublicAccess`, `EndpointPrivateAccess` and 
`PublicAccessCidrs` features.
* Support for enabling control plane logging to CloudWatch logs.   
* Support for tagging

## Prerequisites

### IAM role
An IAM role is used by CloudFormation to execute the resource type handler code provided by this project. A CloudFormation template to create the execution role is available [here](https://github.com/aws-quickstart/quickstart-amazon-eks-cluster-resource-provider/blob/main/execution-role.template.yaml) 

## Registering the Resource type
To privately register the resource types provided in this project into your account a CloudFromation template has been provided [here](https://github.com/aws-quickstart/quickstart-amazon-eks-cluster-resource-provider/blob/main/register-type.template.yaml). Note that this must be run in each region yo plan to use this project in.

## Usage
Properties and return values are documented [here](https://github.com/aws-quickstart/quickstart-amazon-eks-cluster-resource-provider/blob/main/docs/README.md).

## Examples

### Create a private EKS cluster with an additional user and role allowed to access the kubenretes API
```yaml
AWSTemplateFormatVersion: "2010-09-09"
Parameters:
  SubnetIds:
    Type: "List<AWS::EC2::Subnet::Id>"
  SecurityGroupIds:
    Type: "List<AWS::EC2::SecurityGroup::Id>"
Resources:
  # EKS Cluster
  myCluster:
    Type: "AWSQS::EKS::Cluster"
    Properties:
      RoleArn: !GetAtt serviceRole.Arn
      KubernetesNetworkConfig:
        ServiceIpv4Cidr: "192.168.0.0/16"
      ResourcesVpcConfig:
        SubnetIds: !Ref SubnetIds
        SecurityGroupIds: !Ref SecurityGroupIds
        EndpointPrivateAccess: true
        EndpointPublicAccess: false
      EnabledClusterLoggingTypes: ["audit"]
      KubernetesApiAccess:
        Users:
          - Arn: !Sub "arn:${AWS::Partition}:iam::${AWS::AccountId}:user/my-user"
            Username: "CliUser"
            Groups: ["system:masters"]
        Roles:
          - Arn: !Sub "arn:${AWS::Partition}:iam::${AWS::AccountId}:role/my-role"
            Username: "AdminRole"
            Groups: ["system:masters"]
      Tags:
        - Key: ClusterName
          Value: myCluster
  serviceRole:
    Type: AWS::IAM::Role
    Properties:
      AssumeRolePolicyDocument:
        Version: '2012-10-17'
        Statement:
          - Effect: Allow
            Principal: { Service: eks.amazonaws.com }
            Action: sts:AssumeRole
      Path: "/"
      ManagedPolicyArns:
        - !Sub 'arn:${AWS::Partition}:iam::aws:policy/AmazonEKSClusterPolicy'
        - !Sub 'arn:${AWS::Partition}:iam::aws:policy/AmazonEKSServicePolicy'
```
