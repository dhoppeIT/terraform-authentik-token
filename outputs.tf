output "expires_in" {
  description = "The time the token will expire"
  value       = authentik_token.this.expires_in
}

output "id" {
  description = "The ID of this resource"
  value       = authentik_token.this.id
}

output "key" {
  description = "The key of the token"
  value       = authentik_token.this.key
  sensitive   = true
}
