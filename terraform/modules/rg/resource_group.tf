resource "azurerm_resource_group" "main" {
  name     = "${ var.name }"
  location = "${ var.location }"
}

resource "null_resource" "dummy_dependency" {
  depends_on = [
    "azurerm_resource_group.main",
  ]
}
