output "client_id" {
  sensitive = true
  value = azuread_application.app.application_id
}
output "client_secret" {
  sensitive = true
  value = azuread_service_principal_password.app.value
}
output "application_tenant_id" {
  value = azuread_service_principal.app.application_tenant_id 
}
