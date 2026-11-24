# Base Terraform module scaffold for ${{ values.resourceName }} on ${{ values.cloudProvider }}.
# Add cloud resources for this project or service in this folder.
locals {
  project_name = "${{ values.resourceName }}"
  common_tags = {
    Name        = local.project_name
    Environment = var.environment
    Cloud       = "${{ values.cloudProvider }}"
    BillingCode = var.billing_code
    ManagedBy   = "terraform"
  }
}
