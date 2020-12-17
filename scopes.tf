#global boundary scope
resource "boundary_scope" "global" {
  global_scope = true
  description  = "My first global scope!"
  scope_id     = "global"
}
#inova company
resource "boundary_scope" "org" {
  name                     = "Inova"
  description              = "Testing Scope"
  scope_id                 = boundary_scope.global.id
  auto_create_admin_role   = true
  auto_create_default_role = true
}
#project of inova company
resource "boundary_scope" "infra" {
  name                   = "INFRA"
  description            = "Testing Project"
  scope_id               = boundary_scope.org.id
  auto_create_admin_role = true
}