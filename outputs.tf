output "api_key_project_assignments_api_key_id" {
  description = "Map of api_key_id values across all api_key_project_assignments, keyed the same as var.api_key_project_assignments except keys with no api_key_id are omitted"
  value       = { for k, v in mongodbatlas_api_key_project_assignment.api_key_project_assignments : k => v.api_key_id if v.api_key_id != null && length(v.api_key_id) > 0 }
}
output "api_key_project_assignments_project_id" {
  description = "Map of project_id values across all api_key_project_assignments, keyed the same as var.api_key_project_assignments except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_api_key_project_assignment.api_key_project_assignments : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "api_key_project_assignments_roles" {
  description = "Map of roles values across all api_key_project_assignments, keyed the same as var.api_key_project_assignments except keys with no roles are omitted"
  value       = { for k, v in mongodbatlas_api_key_project_assignment.api_key_project_assignments : k => v.roles if v.roles != null && length(v.roles) > 0 }
}

