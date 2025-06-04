locals {
  rg_name = format("%s-rg", var.name_prefix)

  docker_image_name = format("%s-app", var.name_prefix)

  aks_name = format("%s-aks", var.name_prefix)

  acr_name = lower(replace(format("%scr", var.name_prefix), "-", ""))

  sa_name = lower(replace(format("%ssa", var.name_prefix), "-", ""))

  aca_name = format("%s-ca", var.name_prefix)

  aca_env_name = format("%s-cae", var.name_prefix)

  redis_aci_name = format("%s-redis-ci", var.name_prefix)

  keyvault_name = format("%s-kv", var.name_prefix)

  redis_hostname_secret_name = "redis-hostname"
  redis_password_secret_name = "redis-password"

  tags = {
    Creator = "upal_chattopadhyay@epam.com"
  }

  dns_name_label = "upaldnslabel"
  dns_prefix     = "${var.name_prefix}-k8s"
}