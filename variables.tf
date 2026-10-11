variable "api_key_project_assignments" {
  description = <<EOT
Map of api_key_project_assignments, attributes below
Required:
    - api_key_id
    - project_id
    - roles
EOT

  type = map(object({
    api_key_id = string
    project_id = string
    roles      = set(string)
  }))
}

