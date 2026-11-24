output "project_name" {
  description = "Project or service name used by this Terraform folder."
  value       = local.project_name
}

output "cloud_provider" {
  description = "Cloud provider selected when the folder was generated."
  value       = "${{ values.cloudProvider }}"
}

output "common_tags" {
  description = "Common tags to apply to project infrastructure."
  value       = local.common_tags
}
