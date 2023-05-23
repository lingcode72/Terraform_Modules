
resource "azurerm_resource_group" "ModuleExample"{

    name = "${var.base_name}RG"
    location = var.location
    
}