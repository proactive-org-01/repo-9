resource "azurerm_resource_group" "example" {
  name     = "NEWRG49dx80"
  location = "East US"

tags = {
    X-CS-Account       = "a77dabbb-bad5-4929-8194-ab32b10b1e6f"
    X-CS-Region        = "eastus"
    X-CS-ResourceGroup = "QA_INFRA_RG"
    Owner              = "sneha"
    Reason             = "template"
    Environment        = "test"
  }
}

resource "azurerm_storage_account" "example" {
  name                     = "snehapmstorvdcsage14"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  infrastructure_encryption_enabled = true

  tags = {
    X-CS-Account       = "a77dabbb-bad5-4929-8194-ab32b10b1e6f"
    X-CS-Region        = "eastus"
    X-CS-ResourceGroup = "QA_INFRA_RG"
    Owner              = "sneha"
    Reason             = "template"
    Environment        = "test"
  }
}