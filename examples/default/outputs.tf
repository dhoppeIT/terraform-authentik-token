output "expires_in" {
  description = "The time the token will expire"
  value       = module.authentik_token.expires_in
}

output "id" {
  description = "The ID of this resource"
  value       = module.authentik_token.id
}

output "key" {
  description = "The key of the token"
  value       = module.authentik_token.key
  sensitive   = true
}
