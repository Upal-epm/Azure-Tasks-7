resource "azurerm_user_assigned_identity" "ua1" {
  name                = var.ua_name
  resource_group_name = var.rg_name
  location            = var.location
}

resource "azurerm_role_assignment" "ra" {
  role_definition_name = "AcrPull"
  scope                = var.acr_id
  principal_id         = azurerm_user_assigned_identity.ua1.principal_id
}

resource "azurerm_key_vault_access_policy" "kvap" {
  object_id    = azurerm_user_assigned_identity.ua1.principal_id
  key_vault_id = var.kv_id
  tenant_id    = var.tenant_id

  secret_permissions = ["Get", "List"]

  depends_on = [azurerm_role_assignment.ra]
}

resource "azurerm_container_app_environment" "app_env" {
  name                = var.container_app_env_name
  resource_group_name = var.rg_name
  location            = var.location

  workload_profile {
    name                  = var.acae_workload_profile_name
    workload_profile_type = var.acae_workload_profile_type
  }

  depends_on = [azurerm_key_vault_access_policy.kvap]
  tags       = var.tags
}

resource "azurerm_container_app" "app" {
  name                         = var.container_app_name
  resource_group_name          = var.rg_name
  revision_mode                = var.container_app_revision_mode
  container_app_environment_id = azurerm_container_app_environment.app_env.id

  workload_profile_name = var.acae_workload_profile_name

  registry {
    server   = var.acr_server
    identity = azurerm_user_assigned_identity.ua1.id
  }

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.ua1.id]
  }

  secret {
    name                = "redis-url"
    identity            = azurerm_user_assigned_identity.ua1.id
    key_vault_secret_id = var.kv_secret_redis_hostname_id
  }

  secret {
    name                = "redis-key"
    identity            = azurerm_user_assigned_identity.ua1.id
    key_vault_secret_id = var.kv_secret_redis_password_id
  }

  template {
    container {
      name   = var.container_name
      cpu    = var.container_cpu
      memory = var.container_memory
      image  = var.container_image

      env {
        name  = "CREATOR"
        value = "ACA"
      }
      env {
        name  = "REDIS_PORT"
        value = "6379"
      }
      env {
        name        = "REDIS_URL"
        secret_name = "redis-url"
      }
      env {
        name        = "REDIS_PWD"
        secret_name = "redis-key"
      }
    }
  }
  ingress {
    external_enabled = true
    target_port      = 8080

    traffic_weight {
      percentage      = 100
      latest_revision = true
    }
  }

  tags = var.tags
}