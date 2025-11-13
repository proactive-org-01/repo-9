resource "azurerm_cognitive_account" "openai_valid" {
  name                = "openai-valid"
  location            = "East US"
  resource_group_name = "example-rg"
  kind                = "OpenAI"

  sku {
    name     = "S0"
    capacity = 5
  }
}