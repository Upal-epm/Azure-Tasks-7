location = "southindia"

name_prefix = "cmtr-2olzzm40-mod8b"

archive_type        = "tar.gz"
archive_source_dir  = "application"
archive_output_path = "new.tar.gz"

#storage
storage_account_name             = "cmtrf5n7jzgbmod8bsa"
storage_account_replication_type = "LRS"
storage_account_tier             = "Standard"
storage_blob_name                = "my-blob1"
storage_container_access_type    = "private"
storage_container_name           = "app-content"
blob_content_type                = "application/zip"
blob_type                        = "Block"

#acr
acr_task_name   = "megha-acr1-task1"
acr_sku         = "Basic"
platform_os     = "Linux"
dockerfile_path = "Dockerfile"

#aci-redis
aci_os_type                = "Linux"
aci_container_name         = "megha-aci-container1"
aci_container_image        = "mcr.microsoft.com/cbl-mariner/base/redis:6"
aci_container_cpu          = "1"
aci_container_memory       = "1"
aci_redis_sku              = "Standard"
redis_hostname_secret_name = "redis-hostname"
redis_password_secret_name = "redis-password"

#kv
kv_sku = "standard"

#aca
container_app_revision_mode = "Single"
container_cpu               = "0.25"
container_memory            = "0.5Gi"
container_name              = "shashwat-appcontainer1"
acae_workload_profile_name  = "Consumption"
acae_workload_profile_type  = "Consumption"

#aks
system_node_pool_name       = "system"
system_node_pool_node_count = 1
system_node_pool_vm_size    = "Standard_D2ads_v5"

aca_ua_name = "megha-aca-ua1"