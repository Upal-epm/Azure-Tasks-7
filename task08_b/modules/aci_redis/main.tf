resource "random_password" "redis_password" {
  length = 20
}

resource "azurerm_container_group" "cg" {
  name                = var.container_group_name
  resource_group_name = var.rg_name
  location            = var.location
  os_type             = var.os_type
  sku                 = var.sku
  ip_address_type     = "Public"
  dns_name_label      = var.container_group_name
  exposed_port = [{
    port     = 6379,
    protocol = "TCP",
  }]

  container {
    name   = var.container_name
    image  = var.container_image
    cpu    = var.container_cpu
    memory = var.container_memory

    cpu_limit    = var.container_cpu
    memory_limit = var.container_memory

    ports {
      port     = 6379
      protocol = "TCP"
    }

    commands = ["redis-server",
      "--protected-mode", "no",
      "--requirepass", random_password.redis_password.result
    ]
  }

  tags = var.tags
}

resource "azurerm_key_vault_secret" "redis_hostname" {
  name         = var.redis_hostname_secret_name
  value        = azurerm_container_group.cg.fqdn
  key_vault_id = var.key_vault_id
}

resource "azurerm_key_vault_secret" "redis_password" {
  name         = var.redis_password_secret_name
  value        = random_password.redis_password.result
  key_vault_id = var.key_vault_id

  depends_on = [azurerm_key_vault_secret.redis_hostname]
}