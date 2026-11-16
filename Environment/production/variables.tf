variable "app_service_name" {
  type = string
}

variable "app_service_plan_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "virtual_machine_name" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "keyvault_name" {
  type = string
}

variable "keyvault_sku" {
  type = string
  default = "standard"
}

variable "keyvault_secret_name" {
  type = string
}

variable "workspace_name" {
  type = string
}

variable "log_analytics_workspace_name" {
  type = string
}

variable "log_analytics_workspace_sku" {
  type = string
  default = "PerGB2018"
}

variable "log_analytics_workspace_retention_in_days" {
  type = number
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
  default = ["10.0.0.0/16"]
}

variable "subnets" {
  type = map(object({
    address_prefixes = list(string)
  }))
}

variable "nsg_name" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "defender_contact_email" {
  description = "Email address for Microsoft Defender for Cloud security alerts."
  type        = string
}
