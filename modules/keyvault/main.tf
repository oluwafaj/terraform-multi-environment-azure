data "azurerm_client_config" "current" {}
resource "azurerm_key_vault" "keyvault" {
  name                       = var.keyvault_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  sku_name                   = var.keyvault_sku
  purge_protection_enabled   = true
  soft_delete_retention_days = 7
  rbac_authorization_enabled = true

}
resource "azurerm_role_assignment" "secrets_officer" {
  scope                = azurerm_key_vault.keyvault.id
  role_definition_name = "Key Vault Secrets Officer"
  principal_id         = data.azurerm_client_config.current.object_id
}
resource "random_password" "secret" {
  length           = 24
  special          = true
  override_special = "!@#$%^&*()-_=+[]{}<>:?"
}
resource "azurerm_key_vault_secret" "secret" {
  name         = var.keyvault_secret_name
  value        = random_password.secret.result
  key_vault_id = azurerm_key_vault.keyvault.id
  depends_on   = [azurerm_role_assignment.secrets_officer]
}
