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
  description = "GCP project ID; set when deploying to Google Cloud."
  type        = string
  default     = null
  nullable    = true
}

variable "subscription_id" {
  description = "Azure subscription ID; set when deploying to Microsoft Azure."
  type        = string
  default     = null
  nullable    = true
}
