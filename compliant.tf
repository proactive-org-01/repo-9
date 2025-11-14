resource "azurerm_cognitive_account" "openai_private" {
  name                = "openai-private"
  location            = "East US"
  resource_group_name = "example-rg"
  kind                = "OpenAI"

  public_network_access_enabled = false
}