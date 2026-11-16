app_service_name                          = "faj-prod-app-service"
app_service_plan_name                     = "faj-prod-plan"
location                                  = "eastus"
resource_group_name                       = "faj-prod-rg"
virtual_machine_name                      = "faj-prod-vm"
virtual_network_name                      = "faj-prod-vnet"
subnet_name                               = "private"
admin_username                            = "azuruser"
keyvault_name                             = "fajprodkv12345"
keyvault_sku                              = "standard"
keyvault_secret_name                      = "admin-password"
workspace_name                            = "faj-prod-workspace"
log_analytics_workspace_name              = "faj-prod-law"
log_analytics_workspace_sku               = "PerGB2018"
log_analytics_workspace_retention_in_days = 90
vnet_name                                 = "faj-prod-vnet"
address_space                             = ["10.1.0.0/16"]
subnets = {
  private = {
    address_prefixes = ["10.1.1.0/24"]
  }
  database = {
    address_prefixes = ["10.1.2.0/24"]
  }
}
nsg_name                                  = "faj-prod-nsg"
storage_account_name                      = "fajprodsa12345"

# Replace this example with an email address you monitor.
defender_contact_email = "oluwafaj2014@gmail.com"
