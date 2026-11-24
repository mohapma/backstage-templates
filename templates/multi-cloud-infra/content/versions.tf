terraform {
  required_version = ">= 1.5.0"

{% if values.cloudProvider == 'aws' %}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
{% elif values.cloudProvider == 'gcp' %}
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
{% elif values.cloudProvider == 'azure' %}
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
{% endif %}
}
