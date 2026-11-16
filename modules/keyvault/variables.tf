variable "resource_group_name" {
  type = string
}

variable "location" {
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