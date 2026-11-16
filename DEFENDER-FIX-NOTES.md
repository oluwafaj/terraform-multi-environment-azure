# Terraform repair notes

## Defender module
- Added the missing `azurerm_security_center_contact.defender` resource.
- Added the required `defender_contact_email` input.
- Connected the input through Dev, Q.A, and production.
- Kept the output pointed at the declared contact resource.
- Used boolean values for `alert_notifications` and `alerts_to_admins`.

## Key Vault
The Key Vault resource uses `enable_rbac_authorization = true`, which is the
AzureRM provider argument for the pinned `~> 3.100` provider. Do not rename it
to `rbac_authorization_enabled`.

## Before deployment
In each environment's `terraform.tfvars`, replace
`replace-with-your-email@example.com` with an email address you monitor.

Run from an environment folder, for example:

```bash
terraform fmt -recursive
terraform init
terraform validate
terraform plan
```

Validation checks configuration structure; it does not prove that Azure
permissions, subscription settings, resource-name availability, or deployment
quotas are correct. Review the plan before applying.
