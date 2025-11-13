resource "azurerm_cognitive_account" "openai_invalid" {
  name                = "openai-invalid"
  location            = "East US"
  resource_group_name = "example-rg"
  kind                = "OpenAI"

  sku {
    name     = "S0"
    capacity = 20
  }
}