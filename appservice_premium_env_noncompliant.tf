resource "azurerm_resource_group" "rg" {
  name     = "rg-appservice-dev"
  location = "East US"
  tags = {
    Environment = "dev"
  }
}

resource "azurerm_app_service_plan" "premium_plan" {
  name                = "premium-dev-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "App"
  reserved            = false

  sku {
    tier = "PremiumV3"
    size = "P1v3"
  }

  tags = {
    Environment = "dev"
  }
}
