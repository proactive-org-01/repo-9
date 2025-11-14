resource "azurerm_cognitive_account" "openai_capacity_compliant" {
  name                = "openai-capacity-compliant"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "OpenAI"

  sku_name = "S0"
  sku_tier = "Standard"
  capacity = 8
}
