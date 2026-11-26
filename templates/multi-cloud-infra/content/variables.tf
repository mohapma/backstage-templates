variable "region" {
  description = "Deployment region for this project."
  type        = string
{% if values.cloudProvider == 'aws' %}
  default     = "us-east-1"
{% elif values.cloudProvider == 'gcp' %}
  default     = "us-central1"
{% elif values.cloudProvider == 'azure' %}
  default     = "eastus"
{% endif %}
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "${{ values.environment }}"
}

variable "billing_code" {
  description = "Cost center or billing identifier."
  type        = string
  default     = "${{ values.billingCode }}"
}

variable "project_id" {
  description = "Google Cloud project ID."
  type        = string
{% if values.cloudProvider == 'gcp' %}
  default     = "${{ values.gcpProjectId }}"
  nullable    = false
{% else %}
  default     = null
  nullable    = true
{% endif %}
}

{% if values.cloudProvider == 'gcp' %}
variable "gcp_org_id" {
  description = "Google Cloud organization ID under which to create the project."
  type        = string
  nullable    = false
}

variable "gcp_billing_account" {
  description = "Google Cloud billing account ID to link to the new project."
  type        = string
  nullable    = false
  sensitive   = true
}
{% endif %}

variable "subscription_id" {
  description = "Azure subscription ID; set when deploying to Microsoft Azure."
  type        = string
  default     = null
  nullable    = true
}
