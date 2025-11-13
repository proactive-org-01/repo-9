resource "azurerm_cognitive_deployment" "openai_expensive" {
  name                 = "openai-expensive"
  cognitive_account_id = "example-account-id"

  model {
    format  = "OpenAI"
    name    = "GPT-4.5"
    version = "1"
  }

  sku {
    name     = "S0"
    capacity = 5
  }
}