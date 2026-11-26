# Terraform child module: ${{ values.resourceName }}-${{ values.cloudProvider }}

This provider-neutral Terraform child module was generated for `${{ values.resourceName }}` on **${{ values.cloudProvider | upper }}**. The parent Terraform root configures cloud credentials and provider settings.

Add cloud resources to `main.tf`, declare inputs in `variables.tf`, and expose useful values in `outputs.tf`. Credentials should be supplied through the selected cloud provider's standard environment, profile, or workload identity.

Run `terraform init` and `terraform validate` from the parent Terraform repository before proposing an infrastructure change.
{% if values.cloudProvider == 'gcp' %}

The Terraform apply creates the Google Cloud project selected in Backstage, links its billing account, and returns its project ID. Use a new, globally unique project ID. Set `TF_VAR_gcp_org_id` and `TF_VAR_gcp_billing_account` in the Terraform runner's private environment. The Terraform identity needs permission to create projects in the organization and link the configured billing account.
{% endif %}
