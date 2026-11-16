# Faj Azure Terraform Infrastructure

This project contains three Terraform environment roots (`Dev`, `Q.A`, and `production`) and shared modules in `modules/`.

## Deploy

Authenticate to Azure first (for example, `az login`). From the repository root:

```bash
terraform fmt -recursive
cd Environment/Dev
terraform init
terraform validate
terraform plan -out=tfplan
terraform apply tfplan
```

You will need to use`Environment/Q.A` or `Environment/production` instead of `Environment/Dev` to deploy another environment.

## Notes

- Requires Terraform `>= 1.5.0`; uses AzureRM `~> 3.100` and Random `~> 3.6`.
- Environment-specific settings are in each environment's `terraform.tfvars`.
- The VM admin password and Key Vault secret are generated automatically. Terraform state contains sensitive values; store state remotely with encryption and restricted access.
- The Key Vault uses Azure RBAC. The identity running Terraform needs permission to create role assignments and manage Key Vault secrets.
- The network security group has no public inbound management rule, and the VM has no public IP. It can only be accesseed only through the provided private connectivity method.

