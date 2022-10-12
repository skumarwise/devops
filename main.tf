data "azuread_client_config" "current" {}

resource "azuread_group" "TestADGroup" {
    display_name     = "TestADGroup"
    owners           = ["699e22cd-2f38-4f0f-a650-dd5a66233927"]
    #owners           = ["9314f37f-cc4f-4c0d-a45a-993076af52f6"]
    security_enabled = true
  }

resource "azurerm_role_assignment" "grouprole" {
  name               = "00000000-0000-0000-0000-000000000000"
  #scope              = "/subscriptions/4aae4eb3-ec7f-4db7-9b8e-55e71bf6b65d"
  #role_definition_id = "/subscriptions/4aae4eb3-ec7f-4db7-9b8e-55e71bf6b65d/providers/Microsoft.Authorization/roleDefinitions/a97b65f3-24c7-4388-baec-2e87135dc908"
  scope              = "/subscriptions/0739abae-67f5-471e-bab4-42c524ddf836"
  role_definition_id = "/subscriptions/0739abae-67f5-471e-bab4-42c524ddf836/providers/Microsoft.Authorization/roleDefinitions/a97b65f3-24c7-4388-baec-2e87135dc908"
  principal_id       = azuread_group.TestADGroup.id
#}
