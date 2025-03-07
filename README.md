# terraform-authentik-token

Terraform module to manage the following Twingate resources:

* authentik_token

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "authentik_group" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-authentik-group/local"
  version = "1.0.0"

  name = "example-group"
}

module "authentik_user" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-authentik-user/local"
  version = "1.0.0"

  username = "jdoe"

  name = "John Doe"
  groups = [
    module.authentik_group.id
  ]
}

module "authentik_token" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-authentik-token/local"
  version = "1.0.0"

  identifier = "example-token"
  user       = module.authentik_user.id
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_authentik"></a> [authentik](#requirement\_authentik) | ~> 2024.12 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_authentik"></a> [authentik](#provider\_authentik) | ~> 2024.12 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [authentik_token.this](https://registry.terraform.io/providers/goauthentik/authentik/latest/docs/resources/token) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the token | `string` | `null` | no |
| <a name="input_expires"></a> [expires](#input\_expires) | The date and time the token will expire | `string` | `null` | no |
| <a name="input_expiring"></a> [expiring](#input\_expiring) | Whether or not the token will expire | `bool` | `true` | no |
| <a name="input_identifier"></a> [identifier](#input\_identifier) | Name of the token | `string` | n/a | yes |
| <a name="input_intent"></a> [intent](#input\_intent) | The intent the token is used for | `string` | `"api"` | no |
| <a name="input_retrieve_key"></a> [retrieve\_key](#input\_retrieve\_key) | Whether or not the key will be received | `bool` | `false` | no |
| <a name="input_user"></a> [user](#input\_user) | User to apply to this token | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_expires_in"></a> [expires\_in](#output\_expires\_in) | The time the token will expire |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource |
| <a name="output_key"></a> [key](#output\_key) | The key of the token |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
