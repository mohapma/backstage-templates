# Terraform project: ${{ values.resourceName }}-${{ values.cloudProvider }}

This base Terraform folder was generated for `${{ values.resourceName }}` on **${{ values.cloudProvider | upper }}**.

Add cloud resources to `main.tf`, declare inputs in `variables.tf`, and expose useful values in `outputs.tf`. Credentials should be supplied through the selected cloud provider's standard environment, profile, or workload identity.

Run `terraform init` and `terraform validate` from this directory before proposing an infrastructure change.
