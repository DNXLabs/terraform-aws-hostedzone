# terraform-aws-hostedzone

Terraform-aws-hostedzone is a terraform module to create hosted zones in AWS 

This module requires:
 - Terraform Version >=0.12.20

This modules creates the following resources:
 - Route53 domain - Domains to create a public hosted zone
 
 More Information: https://dnxlabs.slab.com/public/n772y26t

[![Lint Status](https://github.com/DNXLabs/terraform-aws-hostedzone/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-hostedzone/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-hostedzone)](https://github.com/DNXLabs/terraform-aws-hostedzone/blob/master/LICENSE)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| route53\_domain | Domains to create a public hosted zone | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| route53\_domain | n/a |
| route53\_zone\_ns | n/a |

<!--- END_TF_DOCS --->

## Author

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-hostedzone/blob/master/LICENSE) for full details.