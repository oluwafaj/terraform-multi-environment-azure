output "defender_contact_email" {
  description = "The security contact email configured for Defender."
  value       = azurerm_security_center_contact.defender.email
}
