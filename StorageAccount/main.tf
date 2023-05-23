
resource "random_string" "random" {
    length = 1
    special = false
    upper = false
  
}
resource "azurerm_storage_account" "example"{

    name = "${lower(var.base_name)}${random_string.random.result}"
    resource_group_name = var.resource_group_name
    location = var.location
    account_tier = "Standard"
    account_replication_type = "GRS"

}
