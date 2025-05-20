# Example

The configuration in this directory creates:

* authentik_token

## Usage

To run this example, you need to execute the following commands:

```shell
terraform init
terraform plan
terraform apply
```

:warning: This example may create resources that cost money. Execute the
command `terraform destroy` when the resources are no longer needed.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_authentik"></a> [authentik](#requirement\_authentik) | ~> 2025.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_authentik"></a> [authentik](#provider\_authentik) | ~> 2025.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_authentik_token"></a> [authentik\_token](#module\_authentik\_token) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [authentik_user.this](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_headers"></a> [headers](#input\_headers) | Optional HTTP headers sent with every request | `map(string)` | `{}` | no |
| <a name="input_insecure"></a> [insecure](#input\_insecure) | Whether to skip TLS verification, can optionally be passed as AUTHENTIK\_INSECURE environmental variable | `bool` | `false` | no |
| <a name="input_token"></a> [token](#input\_token) | The authentik API token, can optionally be passed as AUTHENTIK\_TOKEN environmental variable | `string` | n/a | yes |
| <a name="input_url"></a> [url](#input\_url) | The authentik API endpoint, can optionally be passed as AUTHENTIK\_URL environmental variable | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_expires_in"></a> [expires\_in](#output\_expires\_in) | The time the token will expire |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
| <a name="output_key"></a> [key](#output\_key) | The key of the token |
<!-- END_TF_DOCS -->
