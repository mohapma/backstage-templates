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
{% if values.cloudProvider == 'gcp' %}

resource "google_project" "service" {
  name            = var.project_id
  project_id      = var.project_id
  org_id          = var.gcp_org_id
  billing_account = var.gcp_billing_account

  lifecycle {
    prevent_destroy = true
  }
}
{% endif %}
