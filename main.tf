resource "authentik_token" "this" {
  identifier = var.identifier
  user       = var.user

  description  = var.description
  expires      = var.expires
  expiring     = var.expiring
  intent       = var.intent
  retrieve_key = var.retrieve_key
}
