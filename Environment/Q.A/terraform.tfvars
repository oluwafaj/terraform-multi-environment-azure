app_service_name                          = "faj-qa-app-service"
app_service_plan_name                     = "faj-qa-plan"
location                                  = "eastus"
resource_group_name                       = "faj-qa-rg"
virtual_machine_name                      = "faj-qa-vm"
virtual_network_name                      = "faj-qa-vnet"
subnet_name                               = "private"
admin_username                            = "azuruser"
keyvault_name                             = "fajqakv12345"
keyvault_sku                              = "standard"
keyvault_secret_name                      = "admin-password"
workspace_name                            = "faj-qa-workspace"
log_analytics_workspace_name              = "faj-qa-law"
log_analytics_workspace_sku               = "PerGB2018"
log_analytics_workspace_retention_in_days = 30
vnet_name                                 = "faj-qa-vnet"
address_space                             = ["10.2.0.0/16"]
subnets = {
  private = {
    address_prefixes = ["10.2.1.0/24"]
  }
  database = {
    address_prefixes = ["10.2.2.0/24"]
  }
}
nsg_name                                  = "faj-qa-nsg"
storage_account_name                      = "fajqasa12345"

# Replace this example with an email address you monitor.
defender_contact_email = "oluwafaj2014@gmail.com"
