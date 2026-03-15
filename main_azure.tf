resource "azurerm_resource_group" "rg" {
name = "razan-rg"
location = "East US"
}

resource "azurerm_storage_account" "st" {
name = "razanstore2026"
resource_group_name = azurerm_resource_group.rg.name
location = azurerm_resource_group.rg.location
account_tier = "Standard"
account_replication_type = "LRS"
enable_https_traffic_only = true
min_tls_version = "TLS1.2"
public_network_access_enabled = false
allow_nested_items_to_be_public = false
shared_access_key_enabled = false
infrastructure_encryption_enabled = true
network_rules {
default_action = "Deny"
bypass = [ "AzureServices"]
}
blob_properties {
delete_retention_policy {
days = 7
}
container_delete_retention_policy {
days = 7 
}
}
}
