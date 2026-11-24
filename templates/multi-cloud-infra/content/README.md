# Terraform child module: ${{ values.resourceName }}-${{ values.cloudProvider }}

This provider-neutral Terraform child module was generated for `${{ values.resourceName }}` on **${{ values.cloudProvider | upper }}**. The parent Terraform root configures cloud credentials and provider settings.

Add cloud resources to `main.tf`, declare inputs in `variables.tf`, and expose useful values in `outputs.tf`. Credentials should be supplied through the selected cloud provider's standard environment, profile, or workload identity.

Run `terraform init` and `terraform validate` from the parent Terraform repository before proposing an infrastructure change.
