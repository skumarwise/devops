data "azuread_client_config" "current" {}

resource "azuread_group" "TestADGroup" {
  display_name     = "TestADGroup"
  security_enabled = true
}

resource "azurerm_role_assignment" "grouprole" {
  name               = "00000000-0000-0000-0000-000000000000"
  scope              = "/subscriptions/0645382c-85c1-4895-83f2-1a4bb2b7a29b"
  role_definition_id = "/subscriptions/0645382c-85c1-4895-83f2-1a4bb2b7a29b/providers/Microsoft.Authorization/roleDefinitions/a97b65f3-24c7-4388-baec-2e87135dc908"
  principal_id       = azuread_group.TestADGroup.id
}
