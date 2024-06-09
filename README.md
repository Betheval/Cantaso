# Cantaso
Serverless Application Deployment on AWS using Terraform and GitHub Actions

Before you begin, ensure you have the following installed:

- [Terraform (v0.13 or later)](https://www.terraform.io/)
- [AWS CLI](https://aws.amazon.com/es/cli/)
- [kubectl](https://kubernetes.io/es/docs/reference/kubectl/)

### Getting Started
#### 1. Clone the Repository

```sh
git clone <repository-url>
cd <repository-directory>
```
#### 2. Configure AWS CLI

Ensure that your AWS CLI is configured with the necessary permissions to create and manage EKS clusters and related resources.

```sh
aws configure
```
#### 3. Define Variables

Create a terraform.tfvars file in the root of the repository and set the required variables:

```hcl
region       = "us-east-1"
vpc_id       = "vpc-0abcd1234efgh5678"
subnet_ids   = ["subnet-0123456789abcdef0", "subnet-0123456789abcdef1", "subnet-0123456789abcdef2"]
cluster_name = "my-eks-cluster"
```
#### 4. Initialize Terraform

Initialize the Terraform working directory:

```sh
terraform init
```

#### 5. Plan the Infrastructure

Generate and review the Terraform execution plan:

```sh
terraform plan
```
#### 6. Apply the Configuration

Apply the Terraform configuration to create the infrastructure:

```sh
terraform apply
```

#### 7. Configure kubectl

Set up kubectl to use the generated kubeconfig file:

```sh
export KUBECONFIG=$(terraform output -raw kubeconfig_file)
```

You should now be able to interact with your EKS cluster using kubectl.

```sh
kubectl get nodes
```
### Terraform Files
#### 1. variables.tf

Defines the variables used in the Terraform configuration.
#### 2. provider.tf

Configures the AWS provider.
#### 3. eks-cluster.tf

Creates the EKS cluster and node group, including IAM roles and policies.
#### 4. outputs.tf

Defines the outputs for the configuration, including the kubeconfig file.
#### 5. kubeconfig.tf

Generates the kubeconfig file to access the EKS cluster.
#### 6. templates/kubeconfig.tpl

A template for the kubeconfig file.

## Cleanup

To delete the resources created by this configuration, run:

```sh
terraform destroy
```
### Additional Resources
- [Amazon EKS Documentation](https://docs.aws.amazon.com/eks/)
- [Terraform AWS Provider Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)