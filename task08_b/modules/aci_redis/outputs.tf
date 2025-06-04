output "aci_ip_address" {
  value       = azurerm_container_group.cg.ip_address
  description = "value"
}
output "redis_fqdn" {
  value       = azurerm_container_group.cg.fqdn
  description = "value"
}
output "kv_secret_redis_hostname_id" {
  value       = azurerm_key_vault_secret.redis_hostname.id
  description = "value"
}

output "kv_secret_redis_password_id" {
  value       = azurerm_key_vault_secret.redis_password.id
  description = "value"
}