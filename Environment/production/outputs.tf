output "resource_group_id" {
  value = module.resource_group.id
}
output "vm_id" {
  value = module.compute.vm_id
}
output "vm_admin_password" {
  value     = module.compute.admin_password
  sensitive = true
}
output "key_vault_id" {
  value = module.keyvault.key_vault_id
}
output "log_analytics_workspace_id" {
  value = module.monitoring.workspace_id
}
