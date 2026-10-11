resource "mongodbatlas_api_key_project_assignment" "api_key_project_assignments" {
  for_each = var.api_key_project_assignments

  api_key_id = each.value.api_key_id
  project_id = each.value.project_id
  roles      = each.value.roles
}

