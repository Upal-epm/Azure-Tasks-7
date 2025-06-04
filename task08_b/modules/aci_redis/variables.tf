variable "container_group_name" {
  type        = string
  description = "value"
}

variable "rg_name" {
  type        = string
  description = "value"
}

variable "sku" {
  type        = string
  description = "value"
}

variable "location" {
  type        = string
  description = "value"
}

variable "os_type" {
  type        = string
  description = "value"
}

variable "container_name" {
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

variable "key_vault_id" {
  type        = string
  description = "value"
}

variable "redis_hostname_secret_name" {
  type        = string
  description = "value"
}

variable "redis_password_secret_name" {
  type        = string
  description = "value"
}
variable "tags" {
  type        = map(string)
  description = "sku"
}