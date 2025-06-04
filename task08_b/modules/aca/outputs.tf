output "aca_dns" {
  value       = azurerm_container_app.app.latest_revision_fqdn
  description = "value"
}