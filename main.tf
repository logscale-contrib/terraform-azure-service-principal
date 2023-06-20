
resource "azuread_application" "app" {
  display_name = var.display_name
}

resource "azuread_service_principal" "app" {
  application_id               = azuread_application.app.application_id
  app_role_assignment_required = true
  feature_tags {
    hide = true
  }
}

resource "azuread_group_member" "members" {
  count            = length(var.group_assignments)
  group_object_id  = var.group_assignments[count.index]
  member_object_id = azuread_service_principal.app.object_id
}

resource "azuread_service_principal_password" "app" {
  service_principal_id = azuread_service_principal.app.object_id
}
