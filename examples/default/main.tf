module "authentik_token" {
  source = "../../"

  identifier = "example-token"
  user       = data.authentik_user.this.id
}
