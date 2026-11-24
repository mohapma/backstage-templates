{% if values.cloudProvider == 'aws' %}
module "${{ values.name | replace('-', '_') }}_aws" {
  source = "git::https://github.com/mohapma/IaC.git//${{ values.name }}-aws?ref=main"

  region       = var.aws_region
  environment  = "dev"
  billing_code = "448325"
}
{% elif values.cloudProvider == 'gcp' %}
module "${{ values.name | replace('-', '_') }}_gcp" {
  source = "git::https://github.com/mohapma/IaC.git//${{ values.name }}-gcp?ref=main"

  region       = var.gcp_region
  project_id   = var.gcp_project_id
  environment  = "dev"
  billing_code = "448325"
}
{% elif values.cloudProvider == 'azure' %}
module "${{ values.name | replace('-', '_') }}_azure" {
  source = "git::https://github.com/mohapma/IaC.git//${{ values.name }}-azure?ref=main"

  region          = var.azure_region
  subscription_id = var.azure_subscription_id
  environment     = "dev"
  billing_code    = "448325"
}
{% endif %}
