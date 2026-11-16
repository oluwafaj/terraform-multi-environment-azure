resource "azurerm_security_center_subscription_pricing" "defender" {
  tier = "Standard"
}

resource "azurerm_security_center_contact" "defender" {
  email               = var.defender_contact_email
  alert_notifications = true
  alerts_to_admins    = true
}
