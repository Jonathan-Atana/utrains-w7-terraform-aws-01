<!-- BEGIN_TF_DOCS -->

# Description

This module Creates 2 public and private subnets, a VPC, an internet gateway, route tables, a nat gateway, a security group, an EC2 instance and a keypair.

- The public and private subnets are created in the VPC
- The Security (associated with the VPC) group allows SSH, HTTP, HTTPS, and outbound traffic
- The EC2 instance is associated to the keypair, the security group and created in the public subnet

The instance runs some user data to install apache and other packages

## Usage

To use this configuration, ensure you have the necessary AWS credentials set up and run:

```bash
terraform init
terraform plan
terraform apply
```

---

## Requirements

| Name                                                   | Version |
| ------------------------------------------------------ | ------- |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | 4.61.0  |

## Providers

| Name                                                   | Version |
| ------------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws)       | 4.61.0  |
| <a name="provider_local"></a> [local](#provider_local) | n/a     |
| <a name="provider_tls"></a> [tls](#provider_tls)       | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                                         | Type     |
| -------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_eip.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/eip)                                              | resource |
| [aws_eip.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/eip)                                              | resource |
| [aws_instance.server1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/instance)                                 | resource |
| [aws_internet_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/internet_gateway)                    | resource |
| [aws_key_pair.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/key_pair)                                    | resource |
| [aws_nat_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/nat_gateway)                              | resource |
| [aws_route_table.priv_rt](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table)                           | resource |
| [aws_route_table.pub_rt](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table)                            | resource |
| [aws_route_table_association.priv_rta1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.priv_rta2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub_rta1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association)  | resource |
| [aws_route_table_association.pub_rta2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association)  | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/security_group)                        | resource |
| [aws_subnet.priv_sub1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet)                                   | resource |
| [aws_subnet.priv_sub2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet)                                   | resource |
| [aws_subnet.pub_sub1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet)                                    | resource |
| [aws_subnet.pub_sub2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet)                                    | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/vpc)                                              | resource |
| [local_file.main](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file)                                        | resource |
| [tls_private_key.main](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key)                              | resource |
| [aws_internet_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/internet_gateway)                    | resource |
| [aws_key_pair.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/key_pair)                                    | resource |
| [aws_nat_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/nat_gateway)                              | resource |
| [aws_route_table.priv_rt](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table)                           | resource |
| [aws_route_table.pub_rt](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table)                            | resource |
| [aws_route_table_association.priv_rta1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.priv_rta2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub_rta1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association)  | resource |
| [aws_route_table_association.pub_rta2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association)  | resource |
| [aws_security_group.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/security_group)                        | resource |
| [aws_subnet.priv_sub1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet)                                   | resource |
| [aws_subnet.priv_sub2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet)                                   | resource |
| [aws_subnet.pub_sub1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet)                                    | resource |
| [aws_subnet.pub_sub2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet)                                    | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/vpc)                                              | resource |
| [local_file.main](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file)                                        | resource |
| [tls_private_key.main](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key)                              | resource |

## Inputs

| Name                                                                           | Description                                        | Type     | Default       |  Required  |
| ------------------------------------------------------------------------------ | -------------------------------------------------- | -------- | ------------- | :--------: |
| <a name="input_bucket"></a> [bucket](#input_bucket)                            | AWS S3 bucket name                                 | `string` | n/a           |    yes     |
| <a name="input_env"></a> [env](#input_env)                                     | Environment for the deployment                     | `string` | `"Dev"`       |     no     |
| <a name="input_http_port"></a> [http_port](#input_http_port)                   | HTTP port                                          | `number` | `80`          |     no     |
| <a name="input_https_port"></a> [https_port](#input_https_port)                | HTTPS port                                         | `number` | `443`         |     no     |
| <a name="input_instance_type"></a> [instance_type](#input_instance_type)       | Type of EC2 instance to launch                     | `string` | n/a           |    yes     |
| <a name="input_key_name"></a> [key_name](#input_key_name)                      | Name of the SSH key pair to use for EC2 instances  | `string` | n/a           |    yes     |
| <a name="input_package_manager"></a> [package_manager](#input_package_manager) | Package manager to use for installing dependencies | `string` | `"yum"`       |     no     |
| <a name="input_project_prefix"></a> [project_prefix](#input_project_prefix)    | Prefix for project resources                       | `string` | `"test-app"`  |     no     |
| <a name="input_region"></a> [region](#input_region)                            | Rgion to deploy Infrastructure                     | `string` | `"us-east-1"` |     no     |
| <a name="input_ssh_port"></a> [ssh_port](#input_ssh_port)                      | SSH port                                           | `number` | `22`          |     no     |
| Name                                                                           | Description                                        | Type     | Default       |  Required  |
| ------                                                                         | -------------                                      | ------   | ---------     | :--------: |
| <a name="input_bucket"></a> [bucket](#input_bucket)                            | AWS S3 bucket name                                 | `string` | n/a           |    yes     |
| <a name="input_env"></a> [env](#input_env)                                     | Environment for the deployment                     | `string` | `"Dev"`       |     no     |
| <a name="input_http_port"></a> [http_port](#input_http_port)                   | HTTP port                                          | `number` | `80`          |     no     |
| <a name="input_https_port"></a> [https_port](#input_https_port)                | HTTPS port                                         | `number` | `443`         |     no     |
| <a name="input_instance_type"></a> [instance_type](#input_instance_type)       | Type of EC2 instance to launch                     | `string` | n/a           |    yes     |
| <a name="input_key_name"></a> [key_name](#input_key_name)                      | Name of the SSH key pair to use for EC2 instances  | `string` | n/a           |    yes     |
| <a name="input_package_manager"></a> [package_manager](#input_package_manager) | Package manager to use for installing dependencies | `string` | `"yum"`       |     no     |
| <a name="input_project_prefix"></a> [project_prefix](#input_project_prefix)    | Prefix for project resources                       | `string` | `"test-app"`  |     no     |
| <a name="input_region"></a> [region](#input_region)                            | Rgion to deploy Infrastructure                     | `string` | `"us-east-1"` |     no     |
| <a name="input_ssh_port"></a> [ssh_port](#input_ssh_port)                      | SSH port                                           | `number` | `22`          |     no     |

## Outputs

| Name                                                                 | Description                                |
| -------------------------------------------------------------------- | ------------------------------------------ |
| <a name="output_public-ip"></a> [public-ip](#output_public-ip)       | Public IP of the EC2 instance              |
| <a name="output_ssh-command"></a> [ssh-command](#output_ssh-command) | SSH command to connect to the EC2 instance |

---

## Additional Resources

- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
- [Terraform Module Registry](https://registry.terraform.io/)
- [Best Practices for Module Development](https://developer.hashicorp.com/terraform/language/modules/develop)

## Authors

- **Author:** Jonathan
- **Generated on:** 2025-06-06
| Name | Description |
|------|-------------|
| <a name="output_public-ip"></a> [public-ip](#output_public-ip) | Public IP of the EC2 instance |
| <a name="output_ssh-command"></a> [ssh-command](#output_ssh-command) | SSH command to connect to the EC2 instance |
<!-- END_TF_DOCS -->
