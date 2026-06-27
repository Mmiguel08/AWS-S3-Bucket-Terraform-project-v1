# AWS S3 Bucket Terraform Lab

A Terraform configuration for provisioning an AWS S3 bucket with customizable naming, region, and tagging.

## Overview

This Terraform project demonstrates how to deploy a simple AWS S3 bucket to the cloud. It includes configurable variables for bucket naming, AWS region selection, and resource tagging for better organization and cost tracking.

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (v1.0 or later)
- [AWS CLI](https://aws.amazon.com/cli/) (configured with your AWS credentials)
- Valid AWS credentials with S3 bucket creation permissions

## Project Structure

```
.
├── main.tf          # Main S3 bucket resource definition
├── variables.tf     # Input variables configuration
├── output.tf        # Output values configuration
├── provider.tf      # AWS provider configuration
└── README.md        # This file
```

## Files Description

### `main.tf`
Contains the primary AWS S3 bucket resource definition with configurable bucket name and tags.

### `variables.tf`
Defines input variables including:
- `aws_region`: AWS region for deployment (default: `ap-south-1`)
- `aws_se_backet_name`: Unique S3 bucket name (default: `cybr-lab-s3-90989`)
- `aws_tagging`: Resource tags for organization (default: Team=Security, Environment=Dev)

### `output.tf`
Outputs important bucket information:
- Bucket ID
- Bucket ARN (Amazon Resource Name)
- Bucket domain name

### `provider.tf`
Configures the AWS provider with the specified region and required provider version (AWS v6.52.0).

## Usage

### 1. Initialize Terraform
```bash
terraform init
```

### 2. Review the Plan
```bash
terraform plan
```

### 3. Apply Configuration
```bash
terraform apply
```

### 4. Destroy Resources (when done)
```bash
terraform destroy
```

## Variables Customization

You can customize the bucket deployment by creating a `terraform.tfvars` file or passing variables directly:

```bash
terraform apply -var="aws_se_backet_name=my-custom-bucket" -var="aws_region=us-east-1"
```

Or create a `terraform.tfvars` file:

```hcl
aws_region         = "us-west-2"
aws_se_backet_name = "my-lab-bucket-unique-name"
aws_tagging = {
  "Team"        = "Security"
  "Environment" = "Production"
  "Owner"       = "YourName"
}
```

## Outputs

After applying the configuration, Terraform will output:

```
s3_bucket_id   = Bucket Id: cybr-lab-s3-90989
s3_backet_arn  = Bucket ARN: arn:aws:s3:::cybr-lab-s3-90989
s3_backet_domain = Bucket domain: cybr-lab-s3-90989.s3.amazonaws.com
```

## Notes

- S3 bucket names must be globally unique across all AWS accounts
- The bucket is created in the `ap-south-1` region by default (Mumbai)
- Resources are tagged with Team=Security and Environment=Dev for organization
- Review AWS S3 pricing and best practices before deploying to production

## Learning Resources

- [Terraform AWS S3 Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket)
- [AWS S3 Best Practices](https://docs.aws.amazon.com/AmazonS3/latest/userguide/BestPractices.html)
- [Terraform Official Documentation](https://www.terraform.io/docs/)

## Author

Created by Moises Miguel.

## License

This project is provided as-is for educational purposes.
