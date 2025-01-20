provider "azurerm" {
  features {}
}

# output the secret value from the Azure Key Vault
variable "KV" {}

data "azurerm_key_vault_secret" "SampleSecret" {
  name         = "SampleSecret"
  key_vault_id = "${var.KV}"
}

output "Azure Vault Secret" {
  value       = data.azurerm_key_vault_secret.SampleSecret.value
  sensitive   = true
}

# can set env var with the following command:
# $env:TF_VAR_KV="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg-name/providers/Microsoft.KeyVault/vaults/vault-name"
