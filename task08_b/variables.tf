variable "location" {
  type        = string
  description = "location"
}
variable "name_prefix" {
  type        = string
  description = "sku"
}

variable "archive_type" {
  type        = string
  description = "value"
}
variable "archive_source_dir" {
  type        = string
  description = "value"
}
variable "archive_output_path" {
  type        = string
  description = "value"
}

#storage
variable "storage_account_name" {
  type        = string
  description = "value"
}
variable "storage_account_tier" {
  type        = string
  description = "value"
}
variable "storage_account_replication_type" {
  type        = string
  description = "value"
}

variable "storage_container_name" {
  type        = string
  description = "value"
}
variable "storage_container_access_type" {
  type        = string
  description = "value"
}

variable "storage_blob_name" {
  type        = string
  description = "value"
}
variable "blob_content_type" {
  type        = string
  description = "value"
}
variable "blob_type" {
  type        = string
  description = "value"
}
#acr
variable "acr_sku" {
  type        = string
  description = "sku"
}
variable "dockerfile_path" {
  type        = string
  description = "sku"
}
variable "platform_os" {
  type        = string
  description = "sku"
}
variable "acr_task_name" {
  type        = string
  description = "sku"
}

#aci-redis
variable "aci_container_name" {
  description = "sku"
  type        = string
}
variable "aci_container_image" {
  description = "sku"
  type        = string
}
variable "aci_container_cpu" {
  description = "sku"
  type        = string
}
variable "aci_redis_sku" {
  description = "sku"
  type        = string
}
variable "aci_container_memory" {
  description = "sku"
  type        = string
}
variable "aci_os_type" {
  description = "sku"
  type        = string
}
variable "redis_hostname_secret_name" {
  type        = string
  description = "value"
}
variable "redis_password_secret_name" {
  type        = string
  description = "value"
}

#kv
variable "kv_sku" {
  description = "sku"
  type        = string
}

#aks
variable "system_node_pool_name" {
  type        = string
  description = "sku"
}
variable "system_node_pool_node_count" {
  type        = number
  description = "sku"
}
variable "system_node_pool_vm_size" {
  type        = string
  description = "sku"
}

#aca
variable "container_cpu" {
  type        = string
  description = "value"
}
variable "container_memory" {
  type        = string
  description = "value"
}

variable "container_name" {
  type        = string
  description = "value"
}

variable "container_app_revision_mode" {
  type        = string
  description = "value"
}

variable "aca_ua_name" {
  type        = string
  description = "value"
}
variable "acae_workload_profile_name" {
  type        = string
  description = "value"
}
variable "acae_workload_profile_type" {
  type        = string
  description = "value"
}