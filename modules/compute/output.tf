output "vm_id" {
  value = azurerm_linux_virtual_machine.vm.id
}
output "admin_password" {
  value     = random_password.admin.result
  sensitive = true
}
