module "resource_group" {
  source              = "../../modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
}
module "network" {
  source              = "../../modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
  subnets             = var.subnets
  address_space       = var.address_space
  vnet_name           = var.vnet_name
  nsg_name            = var.nsg_name
  depends_on          = [module.resource_group]
}
module "storage_account" {
  source               = "../../modules/storage-account"
  storage_account_name = var.storage_account_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  depends_on           = [module.resource_group]
}
module "app_service" {
  source                = "../../modules/app-service"
  app_service_name      = var.app_service_name
  app_service_plan_name = var.app_service_plan_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  depends_on            = [module.resource_group]
}
module "keyvault" {
  source               = "../../modules/keyvault"
  resource_group_name  = var.resource_group_name
  location             = var.location
  keyvault_name        = var.keyvault_name
  keyvault_sku         = var.keyvault_sku
  keyvault_secret_name = var.keyvault_secret_name
  depends_on           = [module.resource_group]
}
module "compute" {
  source              = "../../modules/compute"
  resource_group_name = var.resource_group_name
  location            = var.location
  virtual_machine_name = var.virtual_machine_name
  subnet_id           = module.network.subnet_ids[var.subnet_name]
  admin_username      = var.admin_username
  depends_on          = [module.resource_group, module.network]
}
module "monitoring" {
  source                                    = "../../modules/monitoring"
  resource_group_name                       = var.resource_group_name
  location                                  = var.location
  log_analytics_workspace_name              = var.log_analytics_workspace_name
  log_analytics_workspace_retention_in_days = var.log_analytics_workspace_retention_in_days
  log_analytics_workspace_sku               = var.log_analytics_workspace_sku
  workspace_name                            = var.workspace_name
  depends_on                                = [module.resource_group]
}
module "defender" {
  source                 = "../../modules/defender"
  defender_contact_email = var.defender_contact_email
  depends_on             = [module.resource_group]
}
