# Requirements

No requirements.

# Providers

The following providers are used by this module:

- google

# Modules

No modules.

# Resources

The following resources are used by this module:

- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool[google_iam_workload_identity_pool.identity_pool] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider[google_iam_workload_identity_pool_provider.github-provider] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member[google_project_iam_member.github_srv_with_run_serviceAgent_role] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_member[google_project_iam_member.github_srv_with_workloadIdentityUser_role] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account[google_service_account.github_service_account] (resource)
- https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_binding[google_service_account_iam_binding.oidc_provider_role_for_srv_account] (resource)

# Required Inputs

No required inputs.
## Optional Inputs

The following input variables are optional (have default values):

### Description: GCP Project parameters
- project_id
Type: `string`
Default: `"terraform-patrickstyl"`

- project_number>>
Description: n/a
Type: `string`
Default: `"142963639085"`

---

### Description: iam params

- iam_members
Type: `list(string)`
Default:
[
  "principal://iam.googleapis.com/projects/142963639085/locations/global/workloadIdentityPools/github-pool/subject/assertion.sub",
  "principalSet://iam.googleapis.com/projects/142963639085/locations/global/workloadIdentityPools/github-pool/attribute.repository/siandjiPatrick/gcp-workload-identity-federation-with-terraform"
]

---


### Description: Workflow Identity Federation Params

- identity_pool_name
Type: `string`
Default: `"github-pool"`

- oidc_token_issuer
Description: n/a
Type: `string`
Default: `"https://token.actions.githubusercontent.com"`

- attribute_mapping
Description: n/a
Type: `map(string)`
Default:
{
  "attribute.aud": "assertion.aud",
  "attribute.repository": "assertion.repositoy",
  "google.subject": "assertion.sub"
}

- display_name
Description: n/a
Type: `string`
Default: `"github provider"`

- github_repository 
Description: n/a
Type: `string`
Default: `"gcp-workload-identity-federation-with-terraform"`

- github_username
Description: n/a
Type: `string`
Default: `"siandjiPatrick"`

- provider_description
Description: n/a
Type: `string`
Default: `"github OIDC identity pool provider for automated test"`

- provider_name
Description: n/a
Type: `string`
Default: `"github-provider"`

---

###  Description: Service Account params  

- service_account_display_name
Description: n/a
Type: `string`
Default: `"github service account"`

- service_account_name
Type: `string`
Default: `"github-service-account"`

## Outputs

The following outputs are exported:

- provider_status
Description: n/a

- service_account_email
Description: n/a

- workload_identity_provider 
Description: n/a
