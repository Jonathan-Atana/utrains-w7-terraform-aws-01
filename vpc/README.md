<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | -> 5.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azs"></a> [azs](#input\_azs) | List of availability zones to use for the VPC | `list(string)` | <pre>[<br/>  "us-east-1a",<br/>  "us-east-1b"<br/>]</pre> | no |
| <a name="input_bucket"></a> [bucket](#input\_bucket) | S3 bucket for storing Terraform state | `string` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | Environment for the resources (e.g., dev, staging, prod) | `string` | `"Dev"` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | List of private subnets in CIDR notation | `list(string)` | <pre>[<br/>  "10.0.1.0/24",<br/>  "10.0.2.0/24"<br/>]</pre> | no |
| <a name="input_project_prefix"></a> [project\_prefix](#input\_project\_prefix) | Prefix for the project resources | `string` | `"my-app"` | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | List of public subnets in CIDR notation | `list(string)` | <pre>[<br/>  "10.0.101.0/24",<br/>  "10.0.102.0/24"<br/>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region to deploy the resources | `string` | `"us-east-1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->