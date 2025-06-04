variable "ua_name" {
  type        = string
  description = "value"
}
variable "rg_name" {
  type        = string
  description = "value"
}
variable "location" {
  type        = string
  description = "value"
}

variable "acr_id" {
  type        = string
  description = "value"
}

variable "container_app_env_name" {
  type        = string
  description = "value"
}

variable "container_app_name" {
  type        = string
  description = "value"
}

variable "tenant_id" {
  type        = string
  description = "value"
}

variable "kv_id" {
  type        = string
  description = "value"
}

variable "container_image" {
  type        = string
  description = "value"
}
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
variable "kv_secret_redis_hostname_id" {
  type        = string
  description = "value"
}
variable "kv_secret_redis_password_id" {
  type        = string
  description = "value"
}

variable "acr_server" {
  type        = string
  description = "value"
}
variable "tags" {
  type        = map(string)
  description = "sku"
}

variable "acae_workload_profile_name" {
  type        = string
  description = "sku"
}
variable "acae_workload_profile_type" {
  type        = string
  description = "sku"
}