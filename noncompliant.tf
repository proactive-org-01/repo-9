resource "azurerm_cognitive_account" "openai_capacity_noncompliant" {
  name                = "openai-capacity-noncompliant"
  location            = "East US"
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "OpenAI"

  sku_name = "S0"
  sku_tier = "Standard"
  capacity = 16
}
