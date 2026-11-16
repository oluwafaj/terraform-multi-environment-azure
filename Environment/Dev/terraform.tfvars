app_service_name                          = "faj-dev-app-service"
app_service_plan_name                     = "faj-dev-plan"
location                                  = "eastus"
resource_group_name                       = "faj-dev-rg"
virtual_machine_name                      = "faj-dev-vm"
virtual_network_name                      = "faj-dev-vnet"
subnet_name                               = "private"
admin_username                            = "azuruser"
keyvault_name                             = "fajdevkv12345"
keyvault_sku                              = "standard"
keyvault_secret_name                      = "admin-password"
workspace_name                            = "faj-dev-workspace"
log_analytics_workspace_name              = "faj-dev-law"
log_analytics_workspace_sku               = "PerGB2018"
log_analytics_workspace_retention_in_days = 30
vnet_name                                 = "faj-dev-vnet"
address_space                             = ["10.0.0.0/16"]
subnets = {
  private = {
    address_prefixes = ["10.0.1.0/24"]
  }
  database = {
    address_prefixes = ["10.0.2.0/24"]
  }
}
nsg_name             = "faj-dev-nsg"
storage_account_name = "fajdevsa12345"

# Replace this example with an email address you monitor.
defender_contact_email = "oluwafaj2014@gmail.com"
