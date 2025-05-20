# Template repo for Terraform modules

This repository contains my simple AWS EC2 instance deployment module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.1.0 |
| aws | >= 4.0.0 |
| hcp | >= 0.1.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 4.0.0 |
| hcp | >= 0.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| ec2\_instance | terraform-aws-modules/ec2-instance/aws | >= 3.0 |

## Resources

| Name | Type |
|------|------|
| [aws_subnets.all](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnets) | data source |
| [aws_vpc.spoke](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |
| [hcp_packer_image.user](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/packer_image) | data source |
| [hcp_packer_iteration.user](https://registry.terraform.io/providers/hashicorp/hcp/latest/docs/data-sources/packer_iteration) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->
