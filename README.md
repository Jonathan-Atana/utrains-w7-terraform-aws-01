<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.61.0 |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_tls"></a> [tls](#provider\_tls) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.eip1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/eip) | resource |
| [aws_instance.server1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/instance) | resource |
| [aws_internet_gateway.gtw1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/internet_gateway) | resource |
| [aws_key_pair.key1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/key_pair) | resource |
| [aws_nat_gateway.nat-gtw1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/nat_gateway) | resource |
| [aws_route_table.priv-rt](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table) | resource |
| [aws_route_table.pub-rt](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table) | resource |
| [aws_route_table_association.priv-rta1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.priv-rta2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub-rta1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub-rta2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/route_table_association) | resource |
| [aws_security_group.webserver_sg](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/security_group) | resource |
| [aws_subnet.priv-sub1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet) | resource |
| [aws_subnet.priv-sub2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet) | resource |
| [aws_subnet.pub-sub1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet) | resource |
| [aws_subnet.pub-sub2](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/subnet) | resource |
| [aws_vpc.vpc1](https://registry.terraform.io/providers/hashicorp/aws/4.61.0/docs/resources/vpc) | resource |
| [local_file.my-local-file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [tls_private_key.ssh_key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->