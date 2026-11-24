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

{% if values.cloudProvider == 'aws' %}
provider "aws" {
  region = var.region
}
{% elif values.cloudProvider == 'gcp' %}
provider "google" {
  project = var.project_id
  region  = var.region
}
{% elif values.cloudProvider == 'azure' %}
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}
{% endif %}
